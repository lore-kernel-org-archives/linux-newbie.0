From: Eric Bambach <eric@cisu.net>
Subject: Re: booting from USB drive (without BIOS support)
Date: Sat, 17 Jul 2004 23:13:54 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200407172313.54584.eric@cisu.net>
References: <Pine.LNX.4.58.0407060808130.1337@debian-emach> <200407072234.44993.eric@cisu.net> <Pine.LNX.4.58.0407131124430.1337@debian-emach>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407131124430.1337@debian-emach>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Saturday 17 July 2004 08:57 pm, James Miller wrote:

> > Let me know if you want a patch for 2.6, I can give it a shot. Just=
 have
> > a fire extinguisher handy ;)
>
> Yes, that would be interesting.  At the moment, I'm considering older
> kernels, since the root filesystem for this install has to be pretty =
small
> (< 120MB).  The patch as is also doesn't work for the 2.2.26 kernel t=
o
> which I've tried applying it (results in a "rejected hunk" message). =
 I
> think maybe this is because the line number specifications aren't rig=
ht
> for this kernel.  Just a guess though: I have little experience compi=
ling
> kernels and none in patching them.  If you (or anyone else onlist) co=
uld
> offer tips for applying this patch to the 2.2.26 kernel, I'd be very
> appreciative.

2.2.26 eh? Ill take a look.
> On a related, though more generic, note, I'm a bit confused by the pa=
tches
> that accompany kernel source at www.kernel.org .  It seems that, for =
every
> 2.2.x kernel source file there, there is a corresponding 2.2.x-patch =
file.
> What are these?  Is one supposed to download, along with the kernel o=
ne
> wants, also a patch and immediately apply it?

The ones marked -prepatch? No, You shouldn't neccesarily apply these. T=
hey are=20
testing versions in between releases. If you are on a desktop or can st=
and a=20
few bugs, or need a new feature, then you can download the full source,=
 and=20
then apply the patch. However, generally you should wait for the full=20
release. The numbering without the -preX at the end. eg. 2.2.26 not=20
2.2.27-pre2.=20


> As further follow up on this whole issue, I've discovered that the in=
itrd
> method of booting/running from USB is an entirely different option th=
an
> the kernel patch option.  If one sets up an initrd, one can use just =
a
> stock kernel.  One simply introduces a delay for mounting the root
> filesystem into the file linuxrc in the initrd.  So the FAQ item real=
ly
> should say something like:
--snip--
> In all cases (BIOS-supported and non-BIOS-supported), the delay is
> required either by means of a kernel patch, or by means of a "sleep"
> argument in the requisite initrd file owing to the extra time it take=
s for
> the kernel to load modules for and initialize the USB device.  Once t=
he
> kernel has been delayed for the needed interval, it finds and mounts =
the
> root filesystem, running from it just as it would any more typical
> mass-storage device (e.g., an IDE drive)."
>
> James

Yep. Two ways to do the same thing. I think I remember hitting on that =
or=20
somewhere close in my explanations before.

Anyways heres a quick hack for 2.2.26. I couldn't try it out because I =
think =20
my compiler is too new for 2.2.x so it gave alot of strange errors, how=
ever=20
let me know if it works. Seems safe. The structure of super.c in 2.2.26=
 is=20
much closer to the 2.4.14 version than the 2.6 version, its just 200 li=
nes=20
off and a little switched around so patch couldn't pick it up. Oh ya an=
d BTW=20
I am nowhere near a kernel hacker so keep that fire extinguisher handy =
;)

--- linux-2.2.26-orig/fs/super.c	2001-11-02 10:39:08.000000000 -0600
+++ linux-2.2.26/fs/super.c	2004-07-17 22:31:57.605808136 -0500
@@ -1146,7 +1146,9 @@
 	struct inode * d_inode =3D NULL;
 	struct file filp;
 	int retval;
-
+	int retry_count =3D 0; //Is this needed?
+	retry:
+	retry_count++;
 #ifdef CONFIG_ROOT_NFS
 	if (MAJOR(ROOT_DEV) =3D=3D UNNAMED_MAJOR) {
 		ROOT_DEV =3D 0;
@@ -1220,7 +1222,8 @@
 		 * Allow the user to distinguish between failed open
 		 * and bad superblock on root device.
 		 */
-		printk("VFS: Cannot open root device %s\n",
+		printk("VFS: Cannot open root device %s \
+		retrying in 1s.\n",
 		       kdevname(ROOT_DEV));
 	else for (fs_type =3D file_systems ; fs_type ; fs_type =3D fs_type->n=
ext) {
   		if (!(fs_type->fs_flags & FS_REQUIRES_DEV))
@@ -1239,8 +1242,15 @@
 			panic("VFS: add_vfsmnt failed for root fs");
 		}
 	}
+
+ =A0 =A0 =A0 =A0/* wait 1 second and try again */
+ =A0 =A0 =A0 =A0current->state =3D TASK_INTERRUPTIBLE;
+ =A0 =A0 =A0 =A0schedule_timeout(HZ);
+ =A0 =A0 =A0 =A0
+ 	if (retry_count < 7) //Retry for 6 seconds.
+ 		goto retry;
 	panic("VFS: Unable to mount root fs on %s",
-		kdevname(ROOT_DEV));
+	kdevname(ROOT_DEV));
 }


--=20

-EB
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
