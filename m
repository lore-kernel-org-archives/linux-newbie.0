From: Ray Olszewski <ray@comarre.com>
Subject: problems with recsue disk (was: Re: [no subject])
Date: Sun, 11 Aug 2002 17:02:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020811165027.0214d250@celine>
References: <200208112008.g7BK8Ev22116@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208112008.g7BK8Ev22116@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

Sorry, Haines. Perhaps someone else can help you with a definitive answer. 
As I said, I was just telling you what to try based on the man-page 
assertion that syslinux used this line the same way as LILO.

Some undefinitive rambling, though ... recall that "init" is the name of 
the first program that the Linux kernel runs after it loads (you will see 
it always runs with pid 1). On normal systems, its name is "init", and it 
reads /etc/inittab to start up pretty much everything else that is runnin 
when you login (including the processes that let you log in). For rescue 
purposes, you can tell the kernel to run some other program anstead of 
init; on messed-up systems, starting up in single-user mode with /bih/bash 
as the init program is one of the standard rescue tricks.

So, if this line does actually work the same way as LILO, that entry passes 
to the kernel the instruction to use /lsh as init. You need to supply a 
full path relative to root, and since you've told it to use /dev/fd0 as /, 
this is the full path.

The complicating factor here is that you are doing a two-step boot using 
initrd. What I don't know is how append= arguments interact with the initrd 
boot procedure. Perhaps someone else will be able to address this.

Sorry I can't tell you more.

Oh well, just one more thing -- the "initrd=initrd.img" argument tells the 
kernel to look for a file called "initrd.img" on the boot device and use it 
as part of the boot/init process. I'm assuming that when you said you 
copied "initrd.msg" to the floppy, you meant to write "initrd.img". If I've 
assumed wrong, then try adding the file initrd.img to the floppy.

PS -- I notice after sending this message that you'd misaddressed the Cc:. 
I'm resending it with the list correctly copied.

At 04:08 PM 8/11/02 -0400, Haines Brown wrote:
>Olszewski on Sun, 11 Aug 2002 07:34:51 -0700) Subject: Re: boot floppy
>(mkbootdisk) BCC: brownh@hartford-hwp.com References:
><5.1.0.14.1.20020811072603.0208e950@celine>
>--text follows this line--
>Ray,
>
>Thanks, but no progress yet. I used dd to copy to an unmounted
>ext2-formatted floppy the files created by mkbootdisk: boot.msg,
>initrd.msg, ldlinux.sys, syslinux.cfg, and vmlinuz. I also copied lsh
>(Little Shell, which I can run and get a "C" type prompt). The
>syslinux.cfg files was edited as follows:
>
>label linux
>         kernel vmlinuz
>         append initrd=initrd.img root=/dev/fd0 init=/lsh
>
>I stuck the diskette into a (SCSI) Windows machine, and after the
>machine's SCCI BIOS loaded, the diskette is accessed and I get:
>
>Loading.......................................................
>Unpacking. Loading kernel
>
>Hoever, instead of starting lsh, it simply resets the machine and I'm
>in a boot loop.
>
>Since runing ./lsh does lead to a prompt, I assume that binary is
>workable. Therefore, something may be wrong with the script
>above. I don't understand init, but why the forward slash in
>init=/lsh?
>
>Haines Brown

--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
