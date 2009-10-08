From: ajit mote <mail2blackmen@gmail.com>
Subject: Re: Classic confusion: initrd-initramfs
Date: Thu, 8 Oct 2009 11:52:01 +0530
Message-ID: <cfc457430910072322o538393e5r64dde6972cf3274f@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0D2669BF@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary=000e0cd2bd3a3618870475667ba5
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=mcoYW0g5mFAZQURN4Vpw1t0iFJ3fIaPUSEainlfhNS0=;
        b=MPDyFvZGCbREbEk2GRwaz0MZw/deJILQUH73BkoX6indArBK9jvlVejIz9qSAqaA0X
         WL89rsSdXh5J7t4FWt2ql8fFKwaX16Pm5G7piD0cdylcE/PC9OVwjw4i0nFnmwB5SRTf
         jU9S6W2d7Mq6L+8G+X659uCQzePeZh7zmmeMk=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B0D2669BF@GDCMX01.igglobal.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

--000e0cd2bd3a3618870475667ba5
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 8, 2009 at 8:49 AM, Rajat Jain <Rajat.Jain@infogain.com> wrote:

>
> Hi,
>
> OK, I know enough has already been discussed on this topic and I think
> that I'm just not able to put pieces in place. So I understand the basic
> difference between an initrd (having a filesystem on a block /loopback
> device and mounting it on a ramdisk) and initramfs (Having a compressed
> cpio archieve included in the kernel image and weaving a file system
> directly on RAM to see the contents of this cpio).



> I assume this
> discussion is not limited to x86 architectures and initrd / initram fs
> can be used on all the other architectures also?
>
>
   As per my understanding, this should work for other architectures but not
sure.

1) Firstly, are initramfs and initrd mutually exclusive techniques to
> achieve the same goal (providing initial drivers)? Does enabling one
> disable the other OR they complement / help each other? Conceptually,
> the former should be true, but browsing through the kernel config, the
> latter seems true.
>
> All 2.6 Linux kernels contain a gzipped "cpio" format archive, which is
extracted into rootfs when the kernel boots up.  After extracting, the
kernel
checks to see if rootfs contains a file "init", and if so it executes it as
PID
1.  If found, this init process is responsible for bringing the system the
rest of the way up, including locating and mounting the real root device (if
any).  If rootfs does not contain an init program after the embedded cpio
archive is extracted into it, the kernel will fall through to the older code
to locate and mount a root partition, then exec some variant of /sbin/init
out of that.
Reference: Kernel Documentation
file(~/linux-2.6.18/Documentation/filesystems/ramfs-rootfs-initramfs.txt).


> 2) The initrd image CANNOT be combined with kernel image to produce a
> single image, and the initramfs image cannot be seperated out from
> kernel image and later provided at boot time as a separate image, right?
>
>



> 3) I understand in case of initramfs, kernel does everything including
> loading of initramfs image (since it is included in kernel image only).
> But in case of initrd image, who loads the initrd image into memory? The
> bootloader I assume ... Because grub and lilo have a "initrd" line in
> their config file. But then how is it communicated to the kernel where
> in RAM  (at which address) is the initrd loaded?
>
>
initrd is loaded by BIOS. BIOS handles all the work of loading it into
memory.
Quick search gave me :
http://www.alexonlinux.com/opening-and-modifying-the-initrd

The bootloader will load the kernel and initrd image into memory and then
start the kernel, passing in the memory address of the initrd
 http://en.wikipedia.org/wiki/Initrd

4) How about non-X86 architectures that don't have lilo / grub? Who
> loads initrd image into memory in that case and how is it communicated
> to kernel?
>
> 5) What does the "initrd=" kernel command line parameter mean, and is it
> applicable only for x86?
>
> 6) Is there a unified way of loading initrd on all architectures? Most
> of the online text suggestes to make entry into lilo or grub, which are
> not available else where...
>
> Thanks & Best Regards,
>
> Rajat Jain
>
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>


-- 
Thanks & Regards,
Ajit Subhash Mote

--000e0cd2bd3a3618870475667ba5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">On Thu, Oct 8, 2009 at 8:49 AM, Rajat Jain <=
span dir=3D"ltr">&lt;<a href=3D"mailto:Rajat.Jain@infogain.com">Rajat.Jain@=
infogain.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex;=
 padding-left: 1ex;">
<br>
Hi,<br>
<br>
OK, I know enough has already been discussed on this topic and I think<br>
that I&#39;m just not able to put pieces in place. So I understand the basi=
c<br>
difference between an initrd (having a filesystem on a block /loopback<br>
device and mounting it on a ramdisk) and initramfs (Having a compressed<br>
cpio archieve included in the kernel image and weaving a file system<br>
directly on RAM to see the contents of this cpio).</blockquote><div>=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204=
, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"> I assume this<=
br>

discussion is not limited to x86 architectures and initrd / initram fs<br>
can be used on all the other architectures also?<br>
<br></blockquote><div><br>=A0=A0 As per my understanding, this should work =
for other architectures but not sure. <br><br></div><blockquote class=3D"gm=
ail_quote" style=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt =
0pt 0pt 0.8ex; padding-left: 1ex;">

1) Firstly, are initramfs and initrd mutually exclusive techniques to<br>
achieve the same goal (providing initial drivers)? Does enabling one<br>
disable the other OR they complement / help each other? Conceptually,<br>
the former should be true, but browsing through the kernel config, the<br>
latter seems true.<br>
<br></blockquote><div>All 2.6 Linux kernels contain a gzipped &quot;cpio&qu=
ot; format archive, which is<br>extracted into rootfs when the kernel boots=
 up.=A0 After extracting, the kernel<br>checks to see if rootfs contains a =
file &quot;init&quot;, and if so it executes it as PID<br>
1.=A0 If found, this init process is responsible for bringing the system th=
e<br>rest of the way up, including locating and mounting the real root devi=
ce (if<br>any).=A0 If rootfs does not contain an init program after the emb=
edded cpio<br>
archive is extracted into it, the kernel will fall through to the older cod=
e<br>to locate and mount a root partition, then exec some variant of /sbin/=
init<br>out of that.<br>Reference: Kernel Documentation file(~/linux-2.6.18=
/Documentation/filesystems/ramfs-rootfs-initramfs.txt).<br>
=A0</div><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid =
rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
2) The initrd image CANNOT be combined with kernel image to produce a<br>
single image, and the initramfs image cannot be seperated out from<br>
kernel image and later provided at boot time as a separate image, right?<br=
>
<br></blockquote><div><br><br>=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex=
; padding-left: 1ex;">
3) I understand in case of initramfs, kernel does everything including<br>
loading of initramfs image (since it is included in kernel image only).<br>
But in case of initrd image, who loads the initrd image into memory? The<br=
>
bootloader I assume ... Because grub and lilo have a &quot;initrd&quot; lin=
e in<br>
their config file. But then how is it communicated to the kernel where<br>
in RAM =A0(at which address) is the initrd loaded?<br>
<br></blockquote><div><br>initrd is loaded by BIOS. BIOS handles all the wo=
rk of loading it into memory.<br>Quick search gave me : <a href=3D"http://w=
ww.alexonlinux.com/opening-and-modifying-the-initrd">http://www.alexonlinux=
.com/opening-and-modifying-the-initrd</a><br>
<br>The bootloader will load the kernel and initrd image into memory and
then start the kernel, passing in the memory address of the initrd<br>=A0<a=
 href=3D"http://en.wikipedia.org/wiki/Initrd">http://en.wikipedia.org/wiki/=
Initrd</a><br><br></div><blockquote class=3D"gmail_quote" style=3D"border-l=
eft: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left:=
 1ex;">

4) How about non-X86 architectures that don&#39;t have lilo / grub? Who<br>
loads initrd image into memory in that case and how is it communicated<br>
to kernel?<br>
<br>
5) What does the &quot;initrd=3D&quot; kernel command line parameter mean, =
and is it<br>
applicable only for x86?<br>
<br>
6) Is there a unified way of loading initrd on all architectures? Most<br>
of the online text suggestes to make entry into lilo or grub, which are<br>
not available else where...<br>
<br>
Thanks &amp; Best Regards,<br>
<br>
Rajat Jain<br>
<font color=3D"#888888"><br>
<br>
--<br>
To unsubscribe from this list: send an email with<br>
&quot;unsubscribe kernelnewbies&quot; to <a href=3D"mailto:ecartis@nl.linux=
.org">ecartis@nl.linux.org</a><br>
Please read the FAQ at <a href=3D"http://kernelnewbies.org/FAQ" target=3D"_=
blank">http://kernelnewbies.org/FAQ</a><br>
<br>
</font></blockquote></div><br><br clear=3D"all"><br>-- <br>Thanks &amp; Reg=
ards,<br>Ajit Subhash Mote<br><br>

--000e0cd2bd3a3618870475667ba5--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

