From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Floppy problem
Date: Sun, 18 Apr 2004 10:24:03 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200404181024.03857.pa3gcu@zeelandnet.nl>
References: <3.0.16.20040414184205.2def67be@mail1.abac.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3.0.16.20040414184205.2def67be@mail1.abac.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Tiefenbrunn <davidtief@abac.com>
Cc: linux-newbie@vger.kernel.org

On Thursday 15 April 2004 01:29, David Tiefenbrunn wrote:

I've Cc'd this back to the list as i belive it contains helpfull information 
for others. This way you may well receive more than one reply as well 
therefor getting a wider range of help.

> At 08:03 AM 4/13/04 +0200, Richard wrote:
> >On Monday 12 April 2004 13:33, David Tiefenbrunn wrote:
> >> I am logged into root.
> >
> >That you should not do, ( i am presuming you mean logging into X as root).
>
> Not sure.  When the machine boots, it asks for a user name and password
> with a gui / windows like logon box.  I didn't know I shouldn't be in root.
>  I'll take a look at the manuals to see how to make a new user.

The install process should have asked you to define "who" will use the 
computer and would have added any user you defined.
So that means if you do not have any other user accounts then you quite 
poissably skipped that step.

> >> I want to make a bood floppy, but I keep getting errors:
> >> selected image doesn't exist on instllation medium.
> >
> >Whats the command and whats the "eaxcht error message", all one can say
> > here is;
> >
> >You dont have the correct install disk in the drive and/or the path is
> >incorrect.
>
> It sort of sounds that way to me, but I don't see any place to "change the
> setting".  The "selected image..." line above is the exact error message
> from the "make boot floppy" in Yast.

I have tryed it here, your error means that you "do not have the install 
medium" in place, ie, cd/dvd install disk in the cdrom/dvd-drive.

> >> If I try to format it with Kfloppy, I get:
> >>  Cannot Format /dev/fd0u1440
> >
> >Should that not be /dev/fd0
>
> It isn't a typo, that's what it said.  Kfloppy is on the "start" menu, so I
> tried it.  I have only been doing these things from the K graphic
> interface, not command line.

In the case of using kfloppy it should make no differance if it is /dev/fd0 
or /dev/fd0u1440 as they are the same, /dev/fd0 = the actual device and u1440 
is the floppy size.

> >> No Such Device or Address.
> >>
> >> The Floppy Device icon on the desktop opens a window, and lists the
> >> files (DOS / win98) that are on it.

Then it works does it not, however you must remember one thing, if the device 
is mounted, (and it seems that way to me because of what you describe) then 
nothing else will work.

> >>
> >> For a while, the eject button wouldn't work.

Huu!!! the eject button is purely a mechanical device, you push it and out 
comes the floppy, again "you need to umount" the device first.

> >
> >SuSE uses devfs automount and several other (so called) new style plug and
> >pray effects, what you are experiancing is an effect of the new style.
>
> Oh no, they aren't trying to make it as "reliable" as windows, are they?:)

It workls well in suse, however if you click on the desktop icon and leave the 
window open showing the files on /dev/fd0 then the device is still mounted 
and you will not be able to do anything else with it.

>
> >Why not do it the SuSE way, login as a normal user goto control center
> > click on yast (you will then be asked to enter the root password) now try
> > and do things the SuSE way.
>
> I think this is what I was doing (except logged in as root) when I got
> those errors.

Ok, simply try one thing at a time.

>
> Thank you,
> Dave
>
> Dave  Tief.  N1WWY,  Addie Tief.  N1XQP
> Tiny, Cecil, Magic, Ruby, Sesame and Cinamon
> Visit our web page at http://users.abac.com/dandatief
> Fight Spam: http://www.hostedscripts.com/scripts/antispam.html

-- 
If the Linux community is a bunch of theives because they
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
