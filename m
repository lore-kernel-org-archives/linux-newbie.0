From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: Re: disabling graphical login
Date: Sat, 02 Aug 2003 21:34:24 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5e7ce5b719.5b7195e7ce@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ray,
Thanks for the help so far.
I am using RHL7.3 . I dont know if I am using xdm or gdm.
The other info I can provide is that I use lilo for boot and KDE for X.

Thanks,
Anshuman

----- Original Message -----
From: Ray Olszewski <ray@comarre.com>
Date: Thursday, July 31, 2003 2:15 pm
Subject: Re: disabling graphical login

> At 01:53 PM 7/31/2003 -0400, Anshuman Singh Rawat wrote:
> >Hi,
> >I have a graphical login screen and I need to disable it as there 
> is some 
> >problem with my X. How does one disable it?
> 
> It depends on how you (your Linux distro, that is) enable(s) it in 
> the 
> first place. That varies a bit by distro. The two most common ways 
> are:
> 1. Setting in /etc/inittab a default runlevel that causes xdm (or 
> maybe 
> gdm) to start. To disable it this way, change from a runlevel that 
> starts 
> xdm (or gdm) to one that does not. Most commonly, that involves 
> changing 
> the line in /etc/inittab that reads
> 
>         # The default runlevel.
>         id:5:initdefault:
> 
> to read
> 
>         # The default runlevel.
>         id:2:initdefault:
> 
> 2. Running an init script that starts xdm (or gdm). To disable it 
> this way, 
> find the symlink to that script in the default runlevel and remove 
> it. For 
> example, my Debian systems use the script /etc/init.d/xdm to start 
> X and a 
> default runlevel 2. So I remove (or rename) the symlink 
> /etc/r2.d/S99xdm .
> 
> BTW, even with  a "graphical login screen" running, you probably 
> have 
> consoles hidden away. So if the X stuff does not completely trash 
> your 
> display, pressing CTRL-ALT-F1 (through -F6, usually) will probably 
> give you 
> a text console where you can log in.
> 
> If you need more specific help, in a followup tell us what Linux 
> distro and 
> version you are using, which graphical login system you use (xdm 
> or gdm), 
> and whatever you know about how your system now starts X.
> 
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-
> newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
