From: caszonyi@rdslink.ro
Subject: Re: ghost users
Date: Sat, 22 May 2004 23:45:18 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0405222342340.394@grinch.ro>
References: <S265023AbUEUXCZ/20040522020651Z+1@vger.kernel.org>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <S265023AbUEUXCZ/20040522020651Z+1@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Matthias U. Eifert" <Matthiaseifert@gmx.de>
Cc: linux-newbie@vger.kernel.org

On Fri, 21 May 2004, Matthias U. Eifert wrote:

> Hi Listmembers!
>
> Recently I found something odd (I think...).
> First: My machine is a single-user desktop, no network attached except a modem-dialup to the internet. Nobody else is using this machine. Distro is SuSE 8.1, Kernel 2.4.19, and KDE 3.0.3 (I know, sounds 'bit outdated, but this system is fantastic reliable and stable).
>
> When I issue the finger command I get the following:
> 	matthias@hpa878:~> finger
> 	Login      Name                  Tty      Idle  Login Time   Where
> 	matthias   Matthias Eifert       :0       254d     Fri 17:46console
> 	matthias   Matthias Eifert       pts/0      18     Fri 17:46
> 	matthias   Matthias Eifert      *pts/1       -     Fri 17:47
>
> similar thing with who:
> 	matthias@hpa878:~> who
> 	matthias :0       May 21 17:46 (console)
> 	matthias pts/0    May 21 17:46
> 	matthias pts/1    May 21 17:47
>
> If I don't misinterpret the concept of 'finger' there _should_ be only one user matthias indicatet, right?
> And what about the idle-time of 254 days? (I'm confused).
>

there is only one user ;-). It's matthias. Some programs log their
access in /var/log/utmp and /var/log/wtmp. That's why you are appearing
three times

Maibe you are running X from 254 days ?

> So my simple question is if this is normal behaviour or not?
> Is my machine bewitched? Should I head for the local voodoo-master? ;-)
>

Yes this is normal


> Thanks for your patience,
> Matthias
>
> Oh, P.S.
> All applications are running fine, I experience no problems with the matter mentioned above. I'm asking just for reasons of curiosity. Thanks.
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
