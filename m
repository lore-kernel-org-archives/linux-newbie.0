From: Peter <heisspf@skyinet.net>
Subject: Re: auto start WM on second VT
Date: Sat, 09 Apr 2005 11:51:56 +0800
Message-ID: <200504090351.j393puIF000397@skyinet.net>
References: <Pine.LNX.4.61.0504080758090.5555@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 08 Apr 2005 08:24:33 EST."
             <Pine.LNX.4.61.0504080758090.5555@localhost.localdomain> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: James Miller <jamtat@mailsnare.net>

Forgot the & after the 2

Hi,

I have never used xdm, gdm or kdm. In fact I hate them. If I want to start X I 
type startx. If I want to start X of another WM in another VT I type in the 
terminal for example:

startx /usr/bin/gnome-session -- :2& or

startx /opt/kde/bin/startkde -- :2& or whatever WM.

Now you can put this in a small sript may be call it WM2 and start it from a 
terminal. That's not automatic as such but I know in Fedora and KDE such 
scripts can be started automatically after the WM or desktop is up and running.

Regards
-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
