From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Linux detection of processor speed - accurate?
Date: Sat, 4 Oct 2003 09:42:59 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031004134259.GA536@lnx2.w8mch.ampr.org>
References: <Pine.LNX.4.58.0310031421150.1378@homenet> <5.2.1.1.0.20031003150225.034167f8@no.incoming.mail>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.2.1.1.0.20031003150225.034167f8@no.incoming.mail>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 10-03, Jeff Woods wrote:
> At 10/3/2003 02:33 PM -0500, James Miller wrote:
> >So, who's right - the BIOS report or Linux's bootup record?  Can the OS
> >use the processor's full speed, even though the BIOS doesn't seem to
> >recognize it?
> 
> In my experience, yes, the processor can run faster than the BIOS knows how 
> to report the speed.
> 
> --
> Jeff Woods <kazrak+kernel@cesmail.net> 

Greetings: Being parochial about Linux I would trust what it reports
above anything else.. Linux developers "care." M$'s MSD program still
reports a 1Ghz processor as a "486", whatever. <grin>

You must be familiar with the 'bogomips' report either run alone or
check dmesg.. I find that a clue as to what really goes on... Someone
may know it's not really accurate either and I suspect that's why
it's called "bogus million operations a second." <grin> At least we're
forewarned and disclaimed.. Keep busy.

Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
