From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: USB Hotplug??
Date: Mon, 6 Oct 2003 09:25:09 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031006132509.GA634@lnx2.w8mch.ampr.org>
References: <20031005145055.GA882@lnx2.w8mch.ampr.org> <200310051800.16571.amichai@iglu.org.il>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200310051800.16571.amichai@iglu.org.il>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings and thank you.. I crossed my fingers and tried it.. Awesome
to this old fella.. Wrote to module on one machine then hot plugged
it on another and read it.. Back to the original machine and it was
still there in all its glory.. I even tried it without proper umount
and it was still OK.. I wont do this as a practice of course. <grin>

Another nice tool for us to play with, eh?

Best,

Hal


On 10-05, Amichai Rotman wrote:
> 
> It would e wise if you umount the device before yanking it from the plug. 
> Other than that - it is safe to unplug it while the power is on. If you 
> unplug it before umounting it, the data on it will become unreadable / 
> unaccessible and that's a shame... ;-)
> 
> Amichai. 
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
