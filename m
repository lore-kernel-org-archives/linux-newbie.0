From: Arthur Othieno <arthurothieno@gmx.net>
Subject: Re: More on Startup Scripts
Date: Wed, 18 Sep 2002 20:55:57 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D88DA4D.80502@gmx.net>
References: <009101c25f3b$c47471b0$64fea8c0@pkrausxp>
Reply-To: arthurothieno@gmx.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Well, if for example your default runlevel is 5, then in the /etc/rc5.d 
directory (in Debian) (or /etc/rc.d/rc5/ in RedHat and RedHat-like 
systems), you may have a listing like this (this is just an example)

K12anacron  -> /etc/init.d/anacron
S02portmap  -> /etc/init.d/portmap
S11sshd     -> /etc/init.d/sshd
S43sendmail -> /etc/init.d/sendmail

...note that these are actually _not_ scripts but symbolic links to the 
actual scripts that reside in /etc/init.d, thus, in the above example, 
anacron will be killed, the portmapper started, followed by sshd and so 
on. The numbers XX dictate the order in which services are started/stopped.

Arthur

Paul Kraus wrote:

> I understand that in the runtime folders that the SXXscript stands for
> startup and the KXXscript stands for kill. What do the XX stand for?
> 
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com
> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
