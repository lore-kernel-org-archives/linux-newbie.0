From: Ray Olszewski <ray@comarre.com>
Subject: Re: serial console questions
Date: Fri, 15 Nov 2002 11:25:04 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021115110547.02117c50@celine>
References: <3DD540FC.7040706@jpl.nasa.gov>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DD540FC.7040706@jpl.nasa.gov>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:46 AM 11/15/02 -0800, Bryan Whitehead wrote:
>I have a serial console set up so I can capture output from boot and any 
>sysrq activity.
>
>The problem I have is I can't seem to do sysrq keys from the serial 
>connection. The sysrq docs say I need to send a "break". Isn't that just a 
>CTRL-C ?

No. At least, in the context of serial communications, BREAK has a 
different *usual* meaning. Real serial terminals have  a special "BREAK" 
key that actually causes a brief interruption in the "carrier" signal on 
the data link (one VT100 reference says it this way: "A break condition is 
the occurrence of a continuous space on a communication line for greater 
than one character time").

I'm not familiar with tip, nor have I any experience with Sun hosts ... but 
I'd check tip's man page for specifics about how to execute a BREAK.  There 
should be some special key combination specific to the terminal application 
to do this. (minicom, as an example, uses the sequence CRTL-A, F to send a 
BREAK ... but I just looked at an online man page for a FreeBSD version of 
tip, and I didn't see a way to do it ... so you *may* need to switch to a 
more capable terminal program.)

This in turn assumes that the sysrq docs use "break" in its old, standard 
sense. If by "the sysrq docs" you mean the file "sysrq.txt" included with 
Linux kernel Documentation, I'd read it as referring to these old-style BREAKs.

>This doesn't work. I have to physically do all sysrq keying from the 
>physical machine. This means my serial console is nothing more than a 
>fancy logger. I'd like to interactivally send all the sysrq key sequences 
>from my serial connection. I'm use tip as my serial software from a Sun 
>box... is that the problem? I suspect my terminal is the problem...
>
>How do I use sysrq over a serial console?

See above.


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
