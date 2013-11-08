From: fche@redhat.com (Frank Ch. Eigler)
Subject: Re: How to find out which part of code is changing a particular data structure.
Date: Fri, 08 Nov 2013 16:03:09 -0500
Message-ID: <y0mhabm7gj6.fsf@fche.csb>
References: <70853dc9fbf84454b3db81630a6ce99e@BLUPR05MB118.namprd05.prod.outlook.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <70853dc9fbf84454b3db81630a6ce99e@BLUPR05MB118.namprd05.prod.outlook.com> (Rajat Jain's message of "Fri, 8 Nov 2013 00:46:13 +0000")
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajatjain@juniper.net>
Cc: "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Rajat Jain <rajatjain@juniper.net> writes:

> [...]  I have a memory location (One of the fields in a kernel data
> structure) and I want to track down the code that changes the value
> of that particular location. Some thing like a "watchpoint".

See the register_wide_hw_breakpoint API.  You could write a small
module that runs early, and gets callbacks when a given address is
modified.


> And this is early while I am still booting up. Can some one tell me
> if it is possible to do so?

(Were it not for the 'while still booting up' part, I'd suggest trying
systemtap's 

        probe kernel.data("SYMBOL").write { }
 or     probe kernel.data(0xDEADBEEF).write { }

probes, but we haven't worked through initramfs'ifying the widget.)


- FChE
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
