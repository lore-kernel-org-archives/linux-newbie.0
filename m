From: Arthur Nascimento <tureba@gmail.com>
Subject: Re: lilo boot problems with SATA and mandrake 10.1
Date: Fri, 17 Dec 2004 14:31:12 -0200
Message-ID: <bb529e4041217083118a229d3@mail.gmail.com>
References: <1103190044.7183.12.camel@itanium>
Reply-To: Arthur Nascimento <tureba@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1103190044.7183.12.camel@itanium>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: vrodriguez@municipiodeloja.gov.ec, linux-newbie@vger.kernel.org

I had that problem too a long time ago - it would show only a L but no
error code. (I didn't try with GRUB.) I have no idea whatsoever of
what machine it was, but I do know it had winxp on a dual boot too. I
was a mere mortal back then (win user) and believed that on a crash
the best thing was to reinstall everything all over again (as all win
users believe), so I don't know how to fix it since I used to just
blindly overwrite it. I tryed other distributions at the time (as well
as different versions of the same one) and this failure occured only
on some of them (don't remember which of them).
You could try updating your boot loader and bios to newer versions,
but i doubt it will make a difference.
I would imagine that this error happens when we install win on a
partition and it's loader on MBR and after try to put LILO/GRUB over
win's loader on MBR. Win must have some sort of self-healing mechanism
to repair the MBR when it is damaged (or in this case, fully altered).
That would explain why no error code is being shown - our boot loader
has been partially overwritten by win's loader, and I doubt a damaged
LILO/GRUB can do anything at all (such as shout an error).
You should try to reinstall win on a partition and tell it to put it's
loader on the begining of the same partition instead of on the MBR.
After that you can reinstall LILO/GRUB on the MBR (or perhaps
reinstall your distro - your call) and you should be all set. I'm sure
I sound like a win user, telling you to reinstall everything, but if I
am right, this will be the last time you will have to do that.
Good luck!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
