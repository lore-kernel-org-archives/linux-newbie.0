From: Jose Luis Alarcon <jlalarcon@linuxwaves.com>
Subject: Re: Upgrading from 2.4.18 to 2.5.59
Date: Sat, 15 Feb 2003 07:03:30 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030215150331.1DEC84044@sitemail.everyone.net>
Reply-To: jlalarcon@linuxwaves.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eng Se-Hsieng <g0202512@nus.edu.sg>
Cc: linux-newbie@vger.kernel.org

--- "Eng Se-Hsieng" <g0202512@nus.edu.sg> wrote:
>Dear all,
>
>I am currently running 2.4.18 (Redhat 7.3) but would like to upgrade to
>2.5.59.
>
>This is because I would like to implement the SCTP transport protocol
>which comes in the form of .patch.
>
>I am confused as to if I should upgrade and install the kernel before
>applying the patch or do both together.
>
>Furthermore, may I use the kernel sources on this site since I can't
>find 2.5.59 on redhat?
>
>Thank you.
>
>Eng Se-Hsieng
>Singapore
>

  Hello Eng.

  You can do it in the two ways: first install the kernel and after apply patch
or apply the patch to the kernel source and then compile it. But i think that in
the second way you have a step less, cos ever after apply the patch you must
compile again.

  You must know that today (february 15) kernel 2.5.61 is out. Why are you
interested in 2.5.59?, this kernel is "old" talking in the development terms.

  The best mirror for your download is:

http://www.averse.lkams.kernel.org/pub/linux/kernel/v2.5

  Regards.

  Jose.


http://linuxespana.scripterz.org

Debian GNU/Linux 'Sid' Kernel 2.5.61 Ext3.
ESware Linux 365 Kernel 2.5.60 ReiserFS.
Registered Linux User #213309.
Memories..... You are talking about memories. 
Rick Deckard. Blade Runner.

_____________________________________________________________
Get your spam-free, Linux email now --> http://www.LinuxWaves.com
Join Linux discussions --> http://Community.LinuxWaves.com

_____________________________________________________________
Select your own custom email address for FREE! Get you@yourchoice.com w/No Ads, 6MB, POP & more! http://www.everyone.net/selectmail?campaign=tag
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
