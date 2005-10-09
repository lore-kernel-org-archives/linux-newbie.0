From: Peter <heisspf@skyinet.net>
Subject: Re: Netconfig Fail
Date: Sun, 9 Oct 2005 09:33:19 +0800
Message-ID: <20051009093319.584ebc9b.heisspf@skyinet.net>
References: <20051008143336.4b907ad5.heisspf@skyinet.net>
	<4347ED53.50105@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4347ED53.50105@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Sat, 08 Oct 2005 09:01:23 -0700
Ray Olszewski <ray@comarre.com> wrote:

> Peter -- The new NIC is not a standard tulip NIC. It is a Davicom NIC 
> (see Slack's dmesg output) and needs the dmfe module, not the tulip 
> module. (Yes, I know Slackware *thinks* it needs the tulip module; 
> Slackware is wrong. Or perhaps you are, if you added it by hand.)

No slackware added it.

> Both Fedora and DSL get it right. Look in the lsmod output from the 2 
> distros that work and you will see that dmfe is present but not tulip. 
> Also review the dmesg output you sent us.
> 
> Finally ... Peter, once you sent all this stuff, it took me less than a 
> minute to spot the problem. I mention this because so often I ask (you 
> and others) for a complete problem description, not a fragmentary one. 
> It can make a real difference in ease and speed of troubleshooting.
> 
It seems it needs always someone like you to help to put on the right shoes.

Yes, I saw it myself as well when I had all the sent outputs that I need the dmfe module. When I tried to install it I got an error message. Did not catch it. Have to go over to slackware gain and will let you know.

Thanks & regards
-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
