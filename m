From: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Subject: Re: Switching between KDE and GNOME
Date: Tue, 01 Jul 2003 13:50:26 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F017582.1050003@vip.cybercity.dk>
References: <Pine.LNX.4.43.0306301642070.1840-100000@perpugilliam.csclub.uwaterloo.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.43.0306301642070.1840-100000@perpugilliam.csclub.uwaterloo.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: dzlotnik@uwaterloo.ca
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Dan Zlotnikov wrote:
>>If you already have KDE installed you can run 'xwmconfig'.
>>You can now choose xinitrc.kde (if you have KDE installed).
>>If you don't have KDE installed, I can't help (not yet anyway).
> 
> 
> xwmconfig? It doesn't appear to exist. Is that distro/x-server specific?
> I'm running gdm, BTW.
> 
> Thanks,
> 
> Dan
> 
> 
>>--
>>Flemming Greve Skovengaard               Man still has one belief,
>>a.k.a Greven                             One decree that stands alone
>><dsl58893@vip.cybercity.dk>              The laying down of arms
>>4168.08 BogoMIPS                         Is like cancer to their bones
>>
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> .
> 
It should be a part of the X11 disto (mine is located in /usr/X11R6/bin).
All it really does is to create a symlink xinitrc to a xinitrc.* file
in /etc/X11/xinit.

P.S. Uups, I just read the man page for xwmconfig.
It is made by Patrick J. Volkerding, who is a major Slackware-contributor,
so it might be Slackware-specific. Sorry.

-- 
Flemming Greve Skovengaard               Just a few small tears between
a.k.a Greven                             Someone happy and one sad
<dsl58893@vip.cybercity.dk>              Just a thin line drawn between
4168.08 BogoMIPS                         Being a genius or insane

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
