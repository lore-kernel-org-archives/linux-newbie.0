From: "Chip Hearn" <sean@tcob1.net>
Subject: Installing same o/s across different hardware
Date: Tuesday, 09 Sep 2003 20:02:26 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_1=3a3613=2f52_03c3a120_270.lists.li_03C3A120@fidonet.org>
References: <5.2.1.1.0.20030909164900.049e0ab8@interzone.anexia.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.2.1.1.0.20030909164900.049e0ab8@interzone.anexia.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: Carl

  Re: Installing same o/s across different hardware
  By: Carl to All on Tue Sep 09 2003 06:15 pm

 > /etc/modules.conf has aliases for the megaraid.o and aic79xx.o modules that 
 > not required for this
 > system but just commenting them out does nothing.
 > Anybody know what is required to stop the kernel looking for these devices a
 > hence get rid of the errors ? 

It sounds like you built the kernel with the megaraid and aic79xx built in...
so, removing the "Modules" won't remove it trying to detect them.  The only way
to get rid of these would be to rebuild the kernel... But.. Lemme tell you
this... the error your getting above... is nothing... it just can't find the
device and it moves on... Its not really an error... Does your system operate
correctly, are their other problems?  My suggestion to you... weight the factor
of rebuilding the kernel, possibly missing something else, like the mouse, or
somesuch.. having to rebuild it again... etc..   or ignoring those missing
devices... its not hurting anything... :)

 > Namely an adaptec message that i can't catch as it is too quick and the 
 > following
 > which i can get from /var/log/boot.log:

I have a bit of information... to be able to see what the message is.. you can
use dmesg | more  the entire boot up process is stored, and you can view it any
time you like.  :)

hope that helps.


Sniper
Killed In Action BBS SysOp
telnet://kia.zapto.org
ftp://kia.zapto.org
nntp://kia.zapto.org:120

DoveNet, NukeNet, XpresitNet, FidoNet (1:3613/52) MirageNet (90:90/105),
MetalNet (282:180/0), JustaXnet (510:202/2) ACNet, Communications Net,
Paranormal Net, League 10 IBBS Net, and Many Newsgroups.






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
