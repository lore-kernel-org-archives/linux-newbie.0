From: Jerry James Haumberger <jerryjh@imt.net>
Subject: hard drive head parking in linux
Date: Tue, 10 Dec 2002 18:12:54 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212101811.LAA18667@cu.imt.net>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hello, Steven --

>> I understand that early PC hard drives had to have 
>> their heads parked when shut down, 

>A blast from the past.  Yes, indeed, pre-IDE drives 
>(two data cables) needed parking.  Over the years I've 
>had several of these monsters.  I even installed a small
>Linux on one (it had to be small 'cause the HD was only
>20mb :-).  Did you know that the latest Slackware (8.1) 
>still provides a stock kernel (xt.i) for such drives?
>Imagine that: a 2.4.18 kernel on an old Seagate MFM.   

But do you know whether or not Linux lifts the HD heads after a
period of inactivity, or is this already an automatic feature
of the later hard drives... say, my (approx.) 700MB HD on
this machine?  I'm guessing Linux (including your BL 1.7)
parks hard drive heads (if not done by the HD mechanism itself)
upon shutdown... but I'm not certain about what happens to
the hard drive heads during up time...

Or are you implying that the "stock kernel (xt.i)" *does*
support this hard drive head parking/"resting" feature... for
XTs and later hard drives?

>You gotta give credit to Jerry.  He doesn't just talk the
>talk, he walks the walk.  A close reading of his message
>header reveals that he is indeed using a minimalist mailer
>for this list.

Oh?  I thought that "mail" was the Standard Procedure for "Mr.
BasicLinux" himself... ;-)

This 486 DX2 is one of my more *powerful* machines... actually,
it was "newly" constructed (with some used parts, but new case and
monitor) only about five years ago.  This was done at my expense
through Computer Renaissance in the USA.  I've intended it to be
a showcase demonstration of the capabilities of a DOS-only computer
system comprised largely of freeware and/or abandoned software
(and some inexpensive shareware from my past purchases); it contains
PC DOS 7 in its boot-up partition (thrown away -- still in the
unbroken plastic-wrapped box).  Now, however, it also demonsrates
the dual capabilities of DOS/Linux -- thanks to your wonderful
distribution of BasicLinux 1.7.  I've wished for several years to
have a console-only installation of Linux (without that enormous
quantity of "X" material) from which I could have full textual
style Internet services.  Your BasicLinux is installed in the
larger area of this machine's hard drive (PC DOS has about 160 MBs,
and BasicLinux 1.7 has two partitions in the remainder of the
688 MB HD, minus around 16 MBs for its swap partition).  Originally,
the Linux partition was RH 5.0, but I couldn't figure out how to
install that without X, until your excellent distribution became
available -- which only occupies (according to du) about 9.2 MBs of
its ext2 partition (this includes several other add-ons from the
Slackware 3.5 distribution site; your basic BL installation is only
about half that size, I believe).

And I have other classic systems -- a venerable old IBM AT and XT,
among others... all in splendid shape and Internet-ready...

Anyway, back to topic... ?!

Jerry... on a 486 DX2-50MHz with 8MB RAM in BasicLinux 1.7
and Midnight Commander at the lab of Classic Systems, Ltd.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
