From: Amichai Rotman <amichai@iglu.org.il>
Subject: Re: USB Hotplug??
Date: Sun, 05 Oct 2003 18:00:15 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200310051800.16571.amichai@iglu.org.il>
References: <20031005145055.GA882@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20031005145055.GA882@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Sunday 05 October 2003 16:50, Hal MacArgle wrote:
> Seeing the hotplug directory and files I thought I might find an
> answer to my basic query: Can the device actually be plugged in and
> unplugged with the power on?? I read somewhere that firewire is
> hotpluggable but "don't do it," in many cases.. No details.. I still
> can't find the theory behind hot plugging.. As an EE you don't
> connect anything to a live bus with impunity; unless the bus is
> "dead" until it senses a load.. Maybe I can learn something here.
> <grin>
>
> Any comments? TIA & enjoying the list..

It would e wise if you umount the device before yanking it from the plug. 
Other than that - it is safe to unplug it while the power is on. If you 
unplug it before umounting it, the data on it will become unreadable / 
unaccessible and that's a shame... ;-)

Amichai. 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
