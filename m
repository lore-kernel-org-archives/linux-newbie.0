From: Ray Olszewski <ray@comarre.com>
Subject: RE: Kernel error
Date: Mon, 27 May 2002 08:45:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020527083534.027cf0b0@celine>
References: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

Sorry to come late into this discussion, but I was curious about one thing: 
when did the 2.4.x kernel start storing its modules in gzip format?

I use 2.4.17 (from Debian Sid) here, and my compiled modules are all 
something_appropriate.o, NOT something_appropriate.o.gz . Is this 
difference a distribution variation I'm unacquainted with? Or how am I out 
of date here?

Also, the first path shown in Shaun's list is an unusual one to my eye -- 
the end of it (the arch/i386/kernel/microcode.o.gz part) looks more like 
something I'd expect to see in kernel source (/usr/src/linux/) than in a 
modules path.

At 07:57 AM 5/26/02 -0700, Shaun Bryant wrote:
>Richard,
>
>I have had two kernel panics in the last 3 days which is why I was looking
>in the syslog to find the problem. I ran the command you mentioned and got
>the below results.
>
>depmod: *** Unresolved symbols in
>/lib/modules/2.4.5/kernel/arch/i386/kernel/microcode.o.gz
>depmod: *** Unresolved symbols in
>/lib/modules/2.4.5/kernel/drivers/char/drm/gamma.o.gz
>depmod: *** Unresolved symbols in
>/lib/modules/2.4.5/kernel/drivers/char/drm/i810.o.gz
[more of the same deleted]


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
