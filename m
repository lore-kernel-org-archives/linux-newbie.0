From: "Robert Todd" <linux-net@tcob1.net>
Subject: Re: Mustek 1200 UB scanner
Date: Friday, 14 Jun 2002 01:56:06 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_110=3a202=2f1_7ea8121c@fidonet.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: G Anna

OOOOH!  Just what I have been looking for!  Tanks!  Will this work with the
kernel that installs with Mandrake 8.2?

<G ANNA> wrote in message news:1021972155.75.0@daver.bungi.com...
>
> Dear All,
>
> Today I downloaded the linux driver for Mustek 1200 UB scanner (This
> is a USB scanner) from
>
> ftp://ftp.mustek.com.tw/pub/driver/1200UB/Linux/V1.0.3/1200ub.tar.gz
>
> This package has a readme file (readme_English.txt).. In this file
> they have mentioned that
>
> (begin-quote)
>
> 2. After the kernel upgrade, please mount the USB file system. You can
> login root, and type "mount -t usbdevfs none /proc/bus/usb/." If you
> would like to mount the file system automatically, add "action
> "Mounting USB File System" mount -t usbdevfs none /proc/bus/usb" to
> your etc/rc.d/rc.sysinit.
>
> (end-quote)
>
> When I tried to do the mount manually, I got the following error.
>
> # mount -t usbdevfs none /proc/bus/usb/
> mount: mount point /proc/bus/usb/ does not exist
>
> And, sure enough, I didn't have the usb directory under /proc/bus/.  I
> tried to do
>
> # pwd
> /proc/bus
> # mkdir usb
> mkdir: cannot create directory `usb': No such file or directory
>
> What am I supposed to do now?  Does anyone have experience in making
> the Mustek 1200 UB scanner work under linux?
>
> BTW, I am using RH 7.1 and
>
> $ uname -a
> Linux wobble 2.4.16 #4 Thu May 9 11:19:49 IST 2002 i686 unknown
>
> Thank you for all your help.
>
> Cheers,
> anna
>
>
> --
>
> (7) When  I've  captured  my  adversary and he says, "Look, before you
>     kill  me,  will you at least tell me what this is all about?" I'll
>     say,  "No."  and  shoot  him. No, on second thought I'll shoot him
>     then say "No." - Peter Anspach in "The Top 100 Things I'd Do If I
>     Ever Became An Evil Overlord"
>
>
> -
>
> --- Internet Rex 2.67 beta 1a
>  * Origin: TCOB1 Gating for LinxuNet (110:10/1.2)
>

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
