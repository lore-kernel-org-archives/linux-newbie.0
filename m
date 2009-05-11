From: Laurent Vivier <Laurent.Vivier@bull.net>
Subject: Re: [Nbd] Transforming stdin and stdout pair into a
	socket
Date: Mon, 11 May 2009 10:03:43 +0200
Message-ID: <1242029023.4638.3.camel@frecb07144>
References: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="=-QWiGQZEhY1BZKbn4R2a2"
Return-path: <qemu-devel-bounces+gceq-qemu-devel=gmane.org@nongnu.org>
In-Reply-To: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <http://lists.nongnu.org/mailman/listinfo/qemu-devel>,
	<mailto:qemu-devel-request@nongnu.org?subject=unsubscribe>
List-Archive: <http://lists.gnu.org/pipermail/qemu-devel>
List-Post: <mailto:qemu-devel@nongnu.org>
List-Help: <mailto:qemu-devel-request@nongnu.org?subject=help>
List-Subscribe: <http://lists.nongnu.org/mailman/listinfo/qemu-devel>,
	<mailto:qemu-devel-request@nongnu.org?subject=subscribe>
Sender: qemu-devel-bounces+gceq-qemu-devel=gmane.org@nongnu.org
Errors-To: qemu-devel-bounces+gceq-qemu-devel=gmane.org@nongnu.org
To: "Ciprian Dorin, Craciun" <ciprian.craciun@gmail.com>
Cc: nbd-general@lists.sourceforge.net, linux-newbie@vger.kernel.org, qemu-devel@nongnu.org


--=-QWiGQZEhY1BZKbn4R2a2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Le dimanche 10 mai 2009 =C3=A0 21:19 +0300, Ciprian Dorin, Craciun a =C3=A9=
crit :
> Hello all!

Hi,

perhaps the attached patch I wrote last year (november) is what you
want...

I didn't try to apply it to an up-to-date qemu-nbd.

Regards,
Laurent

>     Today I've played around with NBD (Network Block Disk), and
> qemu-nbd (a NBD client that exports QEMU disks as NBD's).
>=20
>     My problem is the following: both NBD kernel module and qemu-nbd
> implementation expect to use a socket in order to communicate.
>     This means that in order to securely tunnel the connection over
> SSH (OpenSSH), I need an intermediary process that creates a socket
> and forwards all input / output between this socket and stdin / stdout
> (which are in fact pipes received from OpenSSH).
>=20
>     My question is: can I somehow make the pair of stdin / stdout seem
> as a socket to the Linux syscalls (read and write)? (I would have to
> make stdin / stdout pair look like a single file descriptor.) (This
> would eliminate the intermediate process that just pipes data, and
> thus reduce the overhead.)
>=20
>     Just to be clear: I know how to trick an application to have it's
> stdin and stdout be an opened socket (by using dup syscall). But in
> this case I need to trick the Linux kernel into thinking that stdin /
> stdout pair is a socket (or a single file descriptor).
>=20
>     Thank you,
>     Ciprian Craciun.
>=20
> -----------------------------------------------------------------------=
-------
> The NEW KODAK i700 Series Scanners deliver under ANY circumstances! You=
r
> production scanning environment may not be a perfect world - but thanks=
 to
> Kodak, there's a perfect scanner to get the job done! With the NEW KODA=
K i700
> Series Scanner you'll get full speed at 300 dpi even with all image=20
> processing features enabled. http://p.sf.net/sfu/kodak-com
> _______________________________________________
> Nbd-general mailing list
> Nbd-general@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/nbd-general
>=20
--=20
------------------ Laurent.Vivier@bull.net  ------------------
"Tout ce qui est impossible reste =C3=A0 accomplir"    Jules Verne
"Things are only impossible until they're not" Jean-Luc Picard

--=-QWiGQZEhY1BZKbn4R2a2
Content-Disposition: attachment; filename=qemu-nbd-inetd.patch
Content-Type: text/x-vhdl; name=qemu-nbd-inetd.patch; charset=utf-8
Content-Transfer-Encoding: 7bit

---
 qemu-nbd.c |   41 +++++++++++++++++++++++++++++++++++------
 1 file changed, 35 insertions(+), 6 deletions(-)

Index: qemu/qemu-nbd.c
===================================================================
--- qemu.orig/qemu-nbd.c	2008-09-11 17:06:05.000000000 +0200
+++ qemu/qemu-nbd.c	2008-09-15 16:10:37.000000000 +0200
@@ -57,6 +57,7 @@ static void usage(const char *name)
 "  -d, --disconnect     disconnect the specified device\n"
 "  -e, --shared=NUM     device can be shared by NUM clients (default '1')\n"
 "  -t, --persistent     don't exit on the last connection\n"
+"  -i, --inetd          inetd interface: use stdin/stdout instead of a socke\n"
 "  -v, --verbose        display extra debugging information\n"
 "  -h, --help           display this help and exit\n"
 "  -V, --version        output version information and exit\n"
@@ -183,14 +184,14 @@ int main(int argc, char **argv)
     bool readonly = false;
     bool disconnect = false;
     const char *bindto = "0.0.0.0";
-    int port = 1024;
+    int port = 0;
     struct sockaddr_in addr;
     socklen_t addr_len = sizeof(addr);
     off_t fd_size;
     char *device = NULL;
     char *socket = NULL;
     char sockpath[128];
-    const char *sopt = "hVbo:p:rsnP:c:dvk:e:t";
+    const char *sopt = "hVbo:p:rsnP:c:dvk:e:ti";
     struct option lopt[] = {
         { "help", 0, 0, 'h' },
         { "version", 0, 0, 'V' },
@@ -207,6 +208,7 @@ int main(int argc, char **argv)
         { "shared", 1, 0, 'e' },
         { "persistent", 0, 0, 't' },
         { "verbose", 0, 0, 'v' },
+        { "inetd", 0, 0, 'i' },
         { NULL, 0, 0, 0 }
     };
     int ch;
@@ -225,6 +227,7 @@ int main(int argc, char **argv)
     int nb_fds = 0;
     int max_fd;
     int persistent = 0;
+    int inetd = 0;
 
     while ((ch = getopt_long(argc, argv, sopt, lopt, &opt_ind)) != -1) {
         switch (ch) {
@@ -289,6 +292,9 @@ int main(int argc, char **argv)
 	case 't':
 	    persistent = 1;
 	    break;
+        case 'i':
+	    inetd = 1;
+	    break;
         case 'v':
             verbose = 1;
             break;
@@ -326,6 +332,18 @@ int main(int argc, char **argv)
 	return 0;
     }
 
+    if (inetd) {
+        if (shared != 1)
+           errx(EINVAL, "You cannot use inetd and shared");
+        if (socket)
+           errx(EINVAL, "You cannot use inetd and socket");
+        if (port)
+           errx(EINVAL, "You cannot use inetd and port");
+    } else {
+        if (!socket)
+            port = 1024;
+    }
+
     bdrv_init();
 
     bs = bdrv_new("hda");
@@ -412,9 +430,24 @@ int main(int argc, char **argv)
     if (sharing_fds == NULL)
         errx(ENOMEM, "Cannot allocate sharing fds");
 
+    data = qemu_memalign(512, NBD_BUFFER_SIZE);
+    if (data == NULL)
+        errx(ENOMEM, "Cannot allocate data buffer");
+
     if (socket) {
         sharing_fds[0] = unix_socket_incoming(socket);
     } else {
+        if (inetd) {
+            /* read and write on stdin/stdout */
+            ret = nbd_negotiate(STDIN_FILENO, fd_size);
+            while (ret != -1) {
+                ret = nbd_trip(bs, STDIN_FILENO, fd_size, dev_offset,
+                               &offset, readonly, data, NBD_BUFFER_SIZE);
+            }
+            qemu_free(data);
+            bdrv_close(bs);
+            return 0;
+        }
         sharing_fds[0] = tcp_socket_incoming(bindto, port);
     }
 
@@ -423,10 +456,6 @@ int main(int argc, char **argv)
     max_fd = sharing_fds[0];
     nb_fds++;
 
-    data = qemu_memalign(512, NBD_BUFFER_SIZE);
-    if (data == NULL)
-        errx(ENOMEM, "Cannot allocate data buffer");
-
     do {
 
         FD_ZERO(&fds);

--=-QWiGQZEhY1BZKbn4R2a2--



