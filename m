From: Ray Olszewski <ray@comarre.com>
Subject: Re: auto start WM on second VT
Date: Fri, 08 Apr 2005 20:22:44 -0700
Message-ID: <5.1.0.14.1.20050408201833.01f54bb8@celine>
References: <5.1.0.14.1.20050408184004.01f561c8@celine>
 <5.1.0.14.1.20050408102653.02048aa8@celine>
 <5.1.0.14.1.20050408102653.02048aa8@celine>
 <5.1.0.14.1.20050408184004.01f561c8@celine> <Pine.LNX.4.61.0504082120440.5555@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504082120440.5555@localhost.localdomain>
References: <5.1.0.14.1.20050408184004.01f561c8@celine>
 <5.1.0.14.1.20050408102653.02048aa8@celine>
 <5.1.0.14.1.20050408102653.02048aa8@celine>
 <5.1.0.14.1.20050408184004.01f561c8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:38 PM 4/8/2005 -0500, James Miller wrote:
[...]
>>A standard Debian menu of this sort includes a WindowManagers section 
>>that lets you select among the available WMs.
>
>Yep, standard Debian unstable, installed starting with a netinst CD. The 
>menu program is installed, and menus are getting updated. Despite this, I 
>see no WindowManagers section anywhere: maybe the packagers for Gnome 
>thought no one would ever want to use any other WM after trying Gnome :) ? 
>Don't see that anywhere--not among the Gnome menu items, nor under the 
>"Debian" section.

Hmmmph! Now I really wish I could see what you're seeing. I don't run 
Gnome, but I''ve always had the WindowManagers choice in any WM I did run 
... mainly blackbox and KDE. In Gnome, it would probably be the 
next-to-last item in the Debian section. It's where the choice to exit from 
X is.


>>Or, you might approach this by creating a dedicated userid to run this 
>>special WM setup, and use its .xsession file to set things up. Then just 
>>log into that userid in the second xdm, and you're set to go.
>
>I don't see any .xsession file in my user's directory either. In fact, I 
>created my own .xinitrc file so I could get ion3 on logging in in a 
>console and running startx -- :1. I couldn't find anything like the file 
>you mention or .xinitrc when I originally started setting this all up.

I may have misled you here; sorry. None of my X-using users has either of 
these files by default either. They are the ones you create if you want 
user-spefici customizations, not stock items created from a template the 
way that, for example, .bash_profile and .bashrc are.
[...]


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
