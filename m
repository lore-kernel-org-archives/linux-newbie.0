From: james niland <bareego@yahoo.com>
Subject: RE: How to access USB storage devices in Linux?
Date: Thu, 1 May 2003 07:10:26 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030501141026.27095.qmail@web11404.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

>Friend of mine has SuSE 8.2, along with a USB-based
compact flash reader. The reader itself works in
Windows. He says that Linux is finding the USB hub and
he can see the Read light on the CF reader flash while
Linux is coming up. But he can't seem to find the
device
anywhere in SuSE. Any idea what he needs to do to
make it visible in SuSE?<

A friend of mine recently bought a USB pen drive which
we connected to my linux (kernel 2.4.20) which has USB
support compiled in. 
First we formatted it in windows in with fat. 

Once the pen drive was plugged into my linux pc an
entry appeared when I listed the modules using lsmod
(usb-storage IIRC)
The pen drive was then mountable under /dev/sda1.

So I did mount /dev/sda1 /mnt/pendrive -t vfat
and was able to read and write to the pen drive.

It seems that write operations get cached, so I used
sync before unmounting and removing it. I don't know
though if flash card readers operate the same way. You
might have to load a sepcific module with "modprobe
drivername" for your particular reader. 

The modules relating to USB on my linux machine are
located in /lib/modules/2.4.20/kernel/drivers/usb

Hope that helps
J Niland

__________________________________
Do you Yahoo!?
The New Yahoo! Search - Faster. Easier. Bingo.
http://search.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
