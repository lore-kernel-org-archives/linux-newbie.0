From: Ray Olszewski <ray@comarre.com>
Subject: Re: Network card and kernel module problems
Date: Tue, 04 Feb 2003 22:21:09 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030204220849.0215bd90@celine>
References: <5.1.0.14.1.20030203091129.02140130@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c2ccd7$bcfb0e80$eb6510ac@citechbd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

At 10:47 AM 2/5/03 +0600, Amin wrote:
>Hi people,
>
>First --- sorry about not including specific error messages earlier.  The
>attached file is a (snipped) list of bootup messages, and contains the
>messages I'm concerned with.

All the modprobe messages your include in the edited log relate to the 
"input.o" module. To be honest, I'd never even realized that module existed 
in Linux. After reading its documentation (in 
/usr/src/linux/Documentation/input/), I think it is just a prototype module 
provided as an example for people who want to learn how to write modules. 
Its described purpose seems unrelated to typical hardware configurations in 
any case. Perhaps you can tell us why you are loading this module (or if it 
is loaded as a dependency, what other module is causing modprobe to load it)?

The other messages you quote are from ifup, and they say that it cannot 
configure eth0. These messages viewed alone are not terribly informative, 
and I would suggest again that you follow the troubleshooting procedure I 
outlined in my prior message ... boot/init logs are neither the only or, 
often, the best way to investigate problems. These message taken alone do 
not tell us if (a) the kernel lacks support for DHCP address requests, (b) 
the DHCP request works but you get no response from whatever eth0 is 
connected to, or even, just conceivably, (c) the eth0 interface is not created.

>I've decided to reinstall, perhaps try a different distro, and see if that
>will do the trick.  And thanks
>to Lawson for pointing out the EXTRAVERSION point.  Just want to make sure
>about something --- you're talking about
>/usr/src/linux-2.4.18-14/Makefile, right?

The EXTRAVERSION shell variable is in that file, yes. For the kernel you 
are describing, the "-14" at the end is the EXTRAVERSION part of the name.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
