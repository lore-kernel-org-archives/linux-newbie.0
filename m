From: "Marco Calistri" <ik5bcu@tin.it>
Subject: Re: switching window managers
Date: Mon, 24 Mar 2003 20:12:35 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030324191235.14120.qmail@linux.ik5bcu.ampr.org>
References: <200303230453.h2N4rb3T024680@hartford-hwp.com>
Reply-To: ik5bcu@tin.it
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303230453.h2N4rb3T024680@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org


On 23-Mar-2003 Haines Brown wrote:
>> Hello Haines,Im using IceWm as well from very few days and I simply run:
>> 
>> xinit /usr/local/bin/icewm --:0 
>> 
>> from terminal when I'am here on my RHL-7.3 box,or even run:
> 
> Thanks Marco, but I managed to get myself into trouble. When runing
> IceWM, I was using its panel at the same time as gnome's desktop
> switcher. They seemed to get along, but unfortunately, they had
> conflicing keybindings, and as soon as I typed a key that had
> conflicting purposes, X crashed.
> 
> I got X working and am now back in gnome to start again. However, I
> seem to have damaged gnome desktop switcher because panel crashes as
> it is loaded. I need to configure gnome not to run the desktop switcher,
> but don't know how to do it.

Hello Haines,AFAIK if you remove your ~/.gnome* dirs. then you will be able to
restart a fresh gnome desktop...

> Do you happen to know the name of the gnome desktop switcher
> executable and its configuration file? Do you know which panel file
> calls the desktop switcher? I'm caught in a gnome panel crash loop,
> and so was forced to use another account (root has same trouble as
> regular user) in order to use X apps.  

switchdesk-gnome-3.9.8-2

[marco@linux marco]$ rpm -qil gnome-switchdesk
package gnome-switchdesk is not installed
[marco@linux marco]$ rpm -qil switchdesk-gnome
Name        : switchdesk-gnome             Relocations: /usr 
Version     : 3.9.8                             Vendor: Red Hat, Inc.
Release     : 2                             Build Date: mar 16 apr 2002
21:22:48 CEST
Install date: dom 22 dic 2002 15:45:52 CET      Build Host:
stripples.devel.redhat.com
Group       : User Interface/Desktops       Source RPM:
switchdesk-3.9.8-2.src.rpm
Size        : 17327                            License: GPL
Packager    : Red Hat, Inc. <http://bugzilla.redhat.com/bugzilla>
Summary     : A GNOME interface for the Desktop Switcher.
Description :
The switchdesk-gnome package provides a GNOME look and feel for the
Desktop Switcher program provided in the switchdesk package.
/usr/bin/switchdesk-gnome

Furthermore an useful hint from an old message:

"Slough, Kelle" <Kelle.Slough@dsionline.com> writes: 
> Unfortunately though, I cannot get the panel back.  Does anyone have any
> ideas on how I can restore the panel?  As an FYI, I did install the latest
> fixes afterwards and that has not corrected the problem.

Just run the panel in a terminal (type "panel") and then type
"save-session" after the panel starts.

Havoc


> Haines Brown 

Good Luck!

Marco

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
