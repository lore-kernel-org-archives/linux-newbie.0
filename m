From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Compiling sg.o only (2.4.20)
Date: Mon, 15 Sep 2003 21:13:48 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309152113.48288.pa3gcu@zeelandnet.nl>
References: <20030915173911.GA1802@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030915173911.GA1802@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Monday 15 September 2003 19:39, Hal MacArgle wrote:
> Greetings: Changing to Slackware 9.0, 2.4.20, I discovered the
> default kernel, bare.i, does not have the module; sg.o, but sg.c and
> sg.h are in the src.. Therefore my HP scanner that worked with 2.4.18
> is found OK but has no kernel support.. (At least I think that's the
> problem so far.) (The scanner is a scsi job and I have the BusLogic
> module, sane-backend, etc, installed.) (With 2.4.18, 'insmod sg', set
> up the kernel support for this scanner.)

sg is in the kernel bare.i that is.

> Perhaps I should know this but; is there a way to compile sg.o
> without going through a complete build, since everything else I need
> is working fine?

Yes there is a way, but i dont think you need to do it, if the support is in 
the kernel then all should work ok like it would as if it were compiled as a 
module.
Anyway, there is a file called config-ide-2.4.20 in your /boot directory, you 
can use that to get an almost identical compile.
Copy it to /usr/src/linux-2.4.20 or if you have a symlink called linux 
pointing to linux-2.4.20 cp to linux makes little differance.

Call it .config rename it or copy it to .config, one way;
cd /usr/src/linux
cp /boot/config-ide-2.4.20 .config
Now edit the Makefile, line 4 change from;
EXTRAVERSION = 
to
EXTRAVERSION = -1
save file;
edit .config
change line 454 from;
CONFIG_CHR_DEV_SG=y
to
CONFIG_CHR_DEV_SG=m
save file
do;
make oldconfig
make dep clean bzImage modules modules_install
After its all finished do;
cp arch/i386/boot/bzImage /boot/vmlinuz-2.4.20-1
cp System.map /boot/System.map-2.4.20-1
Place a stanza in /etc/lilo.conf
image=/boot/vmlinuz-2.4.20-1
        label=2.4.20-1
#       append="hdc=ide-scsi"
#       vga=791
        read-only
        root=/dev/hdXx
Commented lines are what i use, they are examples only.
replace hdXx with your root device.
save file;
run lilo WITH -t option, if no errors rerun lilo.
reboot
Most of the above is simply a cut and paste job so spelling mistakes should be 
few (i hope).
I am sure you knew all that anyway, hope it helps...

73's.

>
> TIA and cheers,
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
>                 Proprietary  Formats  Unacceptable

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
