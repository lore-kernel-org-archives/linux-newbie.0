From: James Miller <jamtat@mailsnare.net>
Subject: Re: sound problems on Debian unstable
Date: Thu, 7 Apr 2005 14:28:37 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504071423220.5694@localhost.localdomain>
References: <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine> <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro> <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070119060.971@grinch.ro> <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070145360.1005@grinch.ro> <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504072220160.492@grinch.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0504072220160.492@grinch.ro>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 7 Apr 2005 caszonyi@rdslink.ro wrote:

> On Wed, 6 Apr 2005, James Miller wrote:
>
>> if that relieves any potential IRQ 3 conflict. Possible IRQ's for the card 
>> are: 2, 3, 5, 7, 10, 11, 12, 15 for "Soundman" and 2, 3, 5, and 7 for 
>> "Sound blaster."
>
> i think you can use interrupt 5 or 9 if there's a way to set it

As listed above, I gather from the documentation that comes with the card 
that I cannot set it to use IRQ 9. IRQ 5 is assigned to sb_irq 
(Soundblaster emulation, if you've been following). Why it doesn't show up 
in the output I sent I can't say, but I've certainly specified sb_irq=5 in 
the relevant module line in /etc/modules. I do have the option of swapping 
Soundman (3) and Soundblaster (5) IRQ's, I suppose, to see if that makes 
any difference. Haven't tried that yet.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
