From: "Anna G. Zapata" <azapata@du.edu>
Subject: RE: activating eth0
Date: Wed, 19 Nov 2003 14:14:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <HBEJLOFMLEPBMAAEFNFDIECBCDAA.azapata@du.edu>
References: <5.1.0.14.1.20031119121638.01f72bb0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20031119121638.01f72bb0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Nevermind, it is now working again.  I didn't do anything, but it seems fine now.  One minute it was working, the next
it wasn't working, and now it's back up again.  Sorry for the bother.

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Ray Olszewski
Sent: Wednesday, November 19, 2003 1:32 PM
To: linux-newbie@vger.kernel.org
Subject: Re: activating eth0


At 12:16 PM 11/19/2003 -0700, Anna G. Zapata wrote:
>Hello everyone,
>
>I am running RH 8.0.  My network card was working just fine and then one
>day just flopped over.  I have tried
>reactivating it using the GUI and using the command ifup eth0, but nothing
>seems to work.  Any thoughts?

First, provide technical descriptions of the failures, not metaphorical
ones (e.g., "just flopped over" is colorful but not very informative).
Beyond that ...

What were the symptoms of the initial failure? Did it occur out of the
blue, or after a reboot, or what?

What does happen when you try to reactivate the interface? That is, what
happens when you enter (as root) the command "ifup eth0"?

What is the complete, unedited output of "ifconfig -a"? (After you do the
above attempt to reactivate, or right after a fresh boot/init, but tell us
which you are reporting.)

What kernel are you running ("uname -a")? Is it stock or one you compiled
locally?

What sort of NIC is it? What kernel module(s) does it use (or is the driver
compiled into the kernel)?

Is there any possibility of either a physical failure of the NIC or a BIOS
problem?

During the boot/init sequence, does the kernel (or the loading of the
relevant module) detect the NIC? (This info will show up in the dmesg
buffer, which RH *may* write out someplace like /var/log/dmesg .)

You may have checked some of this already, but I don't know what actual
efforts are covered by your statement that "nothing seems to work", so I
decided to be inclusive rather than risk skipping something useful because
it was too "obvious" to ask about.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
