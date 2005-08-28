From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: Hang With EHCI_HCD Activated
Date: Sun, 28 Aug 2005 12:13:00 +0530
Message-ID: <4b0d6e0d0508272343138d546b@mail.gmail.com>
References: <200508280253.j7S2rBOO000986@meridian.ph>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200508280253.j7S2rBOO000986@meridian.ph>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Peter H." <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

Hi,

Googled around and found a guy with similar problems.
Via USB 2.0 controller, with ehci-hcd hung with 2.6 though.....
He had recently upgraded his BIOS, started after that......

Any similarities????
prolly something for someone more experienced to talk bout..

Joy

On 8/28/05, Peter H. <heisspf@skyinet.net> wrote:
> Hi,
> 
> Recently I tried to boot PuppyLinux from a CD and it would hang when this line
> on the console showed:
> 
> ehci_hcd 00:10.3: Via Technologies, Inc USB 2.0
> 
> Then in slackware 10.1 kernel 2.4.29 I activated EHCI HCD support putting it
> to yes in USB Support.
> 
> When rebooting slackware from the HD the system then hang at exactly the same
> line.
> 
> I then rebooted from the slackware CD and put the old kernel configuration
> back w/o EHCI HCD support.
> 
> My motherboard has USB 2.0 support including EHCI Host Controller core for
> high speed signaling.
> 
> What could be the cause for this hang on booting when EHCI is activated?
> 
> Thanks & regrds
> --
> Peter
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
<ed__> riel: if it were a vax, gcc would probably be an opcode

	- excerpt from #kernelnewbies
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
