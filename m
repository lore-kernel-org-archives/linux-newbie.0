From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: net (& module, I guess) problems after dist-upgrade
Date: Mon, 14 Jun 2004 21:25:12 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200406142125.12340.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.58.0406141228040.1108@debian-emach> <5.1.0.14.1.20040614113439.01fa6ff0@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040614113439.01fa6ff0@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Monday 14 June 2004 20:50, Ray Olszewski wrote:
> BTW, I read through the man page for initrd, and from what is there, I
> would expect linuxrc to use /etc/modules as its information source about
> what modules to load. I could easily be wrong here, though ... the man page
> *really* is unclear about where linuxrc (part of initrd) gets module
> information from.

I dont want to sound like a wet rag but, why would one even try to install the 
same kernel version?, why use initrd, simply compile ones own kernel using 
the default config file supplied by your distro, (normally found in /boot) on 
most systems thesedays.
The trick here is to edit the top dir Makefile and define another 
"EXTRAVERSION" then all modules go into another directory under /lib/modules/ 
leaving the old kernel and its modules intacht and allowing you to use it to 
boot if the new kernel fails.

I am not bashing at distro's other than slackware (of which i swear by), i 
also have redhat and suse running here, slackware is very basic and IMHO 
never gets one into such a state that i have read about here.

Rpm's, aptgets are all well and dandy, they are there for ones easyness, 
however reading thro' most debian and suse mailing lists the truth is far 
from it.

Slackware and simple tar files IMHO the easiest.

Once again i mean no offence with what i say, its just 12+ years of slackware 
experiance and 6 years of using other systems like Redhat and suse give me 
that impression.

-- 
If the Linux community is a bunch of thieves because they
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
