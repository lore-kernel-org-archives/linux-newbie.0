From: James Miller <jamtat@mailsnare.net>
Subject: Re: need wdm help
Date: Fri, 3 Mar 2006 11:43:06 -0600 (CST)
Message-ID: <Pine.LNX.4.64.0603031137350.5615@localhost.localdomain>
References: <Pine.LNX.4.64.0603030845180.5615@localhost.localdomain>
 <Pine.LNX.4.64.0603030908340.5615@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0603030908340.5615@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Snooping around in the init directories (under /etc) I see that both xdm 
and wdm appear there.  Both binaries are in /etc/init.d and symlinks to 
both those appear in rc1.d - rc5.d.  I think those rc#.d directories have 
to do with runlevels, right?  This is still a bit of a mystery to me. 
Does adding this additional information provide further insight into why 
xdm seems to still be acting as the display manager or, even better, 
provide any indication of how I might displace it with wdm?

Thanks, James

On Fri, 3 Mar 2006, James Miller wrote:

> Update.  I was actually not being taken to the wdm login window for some 
> reason.  The login window I was seeing was apparently some 2d form of xdm, 
> which is a little confusing.  Especially so since I removed xdm from the 
> system via apt.  I discovered this by repeatedly killing the login window 
> using ctrl-alt-backspace, which eventually got me to a console login prompt. 
> From there I logged in as user and tried running wdm which, of course didn't 
> work until I sudo'ed.  But once I did that, I got to a real wdm login window 
> with a menu and was able to fire up my window manager of choice.  So, what I 
> really need now is not a menu.  What I need is to find out why xdm is still 
> on the system and why it is acting as the display manager.  I do still see 
> xdm files under /etc/X11: why?  Do I need to completely remove them via apt? 
> Could I expect that to solve the problem of the system wanting to show me 
> that display manager login window rather than wdm?  Seems like buggy behavior 
> in any case, doesn't it?
>
> James
>
> On Fri, 3 Mar 2006, James Miller wrote:
>
>> Debian unstable system.  I've been using Gnome on it and the 2.6.10 kernel. 
>> The system is getting sluggish, so I want to trim back on resource usage. 
>> I'll probably remove Gnome soon and go with some lightweight window manager 
>> like fluxbox.  For a display manager I've been using xdm because it is 
>> lightweight.  It's also no very featureful and, so far as I can see, does 
>> not allow selection between window managers (e.g., via a menu).  I'm trying 
>> to move to wdm therefore, during the interim while moving away from Gnome. 
>> Seems like it could give me the option of booting into either Gnome or 
>> Fluxbox via a menu.  I've actually used a system before that had such a wdm 
>> menu.  So, I've apt-get(ted) wdm.  But at the login window, I get no menu. 
>> Furthermore, when I go to login, it simply boots me back to the login 
>> window. I've looked at man pages and done some web searching, but whatever 
>> the solution is eludes me.  I believe I tried wdm earlier and had the same 
>> problem, so I abandoned it. Something is apparently misconfigured, but I am 
>> unable to determine what and how to fix it.  Could someone please offer 
>> some assistance on getting wdm to: 1) give me a menu of choices for window 
>> managers to boot to; and 2) get the window managers to come up rather than 
>> having it take me back to the wdm login window?  Input will be appreciated.
>> 
>> Thanks, James
>> -
>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
