From: Ray Olszewski <ray@comarre.com>
Subject: Re: Switching between KDE and GNOME
Date: Mon, 30 Jun 2003 11:50:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030630114417.02777b38@celine>
References: <Pine.LNX.4.43.0306300946190.20894-100000@perpugilliam.csclub.uwaterloo.ca>
 <Pine.LNX.4.43.0306300946190.20894-100000@perpugilliam.csclub.uwaterloo.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F006B81.9020201@vip.cybercity.dk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

I don't run either KDE or Gnome here, so I can help only a little with the 
DEbian parts.

Assuming you are using the apt-* tools for package management, you probably 
want to apt-get install kdebase . (At least this is right for Sid; Woody is 
probably the same in this respect.) If its installer is any good, it will 
either ask appropriate questions to get you to replace Gnome with KDE, or 
it will do so without asking (less likely but possible). Once the base 
stuff is installed, you'll need to install appropriate specific 
applications for kde.

This procedure will leave all the Gnome and Sawfish stuff on you hard disk 
(good thing too, since you are quite likely to be running apps that use the 
GTK libraries), but will probably work to get rid of them as X defaults. If 
not, once you have the Debian part handled, anyone who knows Gnome and KDE 
should be able to help you with further specifics.

BTW, I really hope you are not running kernel 2.4.1 ... you are more likely 
to be running 2.4.19 or 2.4.20, if your installation is reasonably current 
and you remembered to update from the limited installer kernel.

At 06:55 PM 6/30/2003 +0200, Flemming Greve Skovengaard wrote:
>Dan Zlotnikov wrote:
>>Hello everyone, and good morning where appropriate.
>>I'm currently running GNOME/Sawfish, but have decided to switch to KDE.
>>This is proving to be somewhat beyond me. Can anyone point me in the right
>>direction with some really short steps and using two-syllable words at
>>most?
>>Running Debian/Woody kernel 2.4.1
>>Thanks!
>>Dan
[...]

>If you already have KDE installed you can run 'xwmconfig'.
>You can now choose xinitrc.kde (if you have KDE installed).
>If you don't have KDE installed, I can't help (not yet anyway).




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
