From: caszonyi@rdslink.ro
Subject: Re: sound problems on Debian unstable
Date: Thu, 7 Apr 2005 01:21:16 +0300 (EEST)
Message-ID: <Pine.LNX.4.60.0504070119060.971@grinch.ro>
References: <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine> <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro> <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Wed, 6 Apr 2005, James Miller wrote:

> On Thu, 7 Apr 2005 caszonyi@rdslink.ro wrote:
>
>> On Wed, 6 Apr 2005, James Miller wrote:
>> 
>> Are you sure your soundcard is not sharing interrupts with other device ?
>
> Not totally, no. cat /pro/interrupts shows only PAS16 assigned to IRQ 3. But 
> dmesg output has ttyS1 using IRQ 3. It's a bit confusing to me. I assigned it 
> IRQ 3 because previously, when checking cat /proc/interrupts output I was not 
> even seeing 3 listed. There's nothing hooked to ttyS1 btw. I suppose it's one 
> of the machine's 2 serial ports.
>

This could be the problem. Interrupt 3 is allways assigned to serial port 
afaik.
Try to use another interrupt for the sound card.


--
?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
