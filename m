From: Kev <savage-garden@hanikamail.com>
Subject: Re[2]: root password *reset root password with grub*
Date: Sun, 03 Apr 2005 09:04:59 +0600
Message-ID: <20050403090435.A86A.SAVAGE-GARDEN@hanikamail.com>
References: <20050330071611.44428.qmail@web52905.mail.yahoo.com> <16974.37459.930871.583279@gargle.gargle.HOWL>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <16974.37459.930871.583279@gargle.gargle.HOWL>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Glynn Clements <glynn@gclements.plus.com>
Cc: linux-newbie@vger.kernel.org


> 
> Ankit Jain wrote:
> 
> > i have forgotten my root pasword. i had installed
> > redhat linux 9.0 kernel version 2.4 with grub loader.
> > if somebody can tell me how to change the password
> > without logging.
> 

first you have to boot the computer in single user mode, with single
user mode you dont need to root password.

To get into single user mode from GRUB, highlight the linux operating system you want to boot.
After the line is highlighted, press 'e'. 'e' will get you into the GRUB
editor. Next, highlight the line that begins with "kernel" and press 'e'
again. 'e' the second time will allow you to edit the "kernel" line. Add
the word "single" to the end of the line, "single" will tell the kernel
to boot into single user mode. After adding the word "single", press
"Enter" and then 'b' to boot the operating system.

one you got in to the single user mode, type passwd and change the root
password.

To leave single user mode, there are a number of possibilities, 
you can always execute a "shutdown" or "reboot" command, or you can
simply type "exit". When you type "exit", you will leave single user
mode and the operating system will continue to boot normally.


Kev.........
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
