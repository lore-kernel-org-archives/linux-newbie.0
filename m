From: Jeff Woods <Kazrak+kernel@cesmail.net>
Subject: Re: Heavy load of graphics
Date: Mon, 04 Oct 2004 23:45:55 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <6.1.1.1.0.20041004233956.0461f920@no.incoming.mail>
References: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
References: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

At 10/5/2004 06:01 AM +0100, Ankit Jain wrote:
>well i am using linux 9.0 kernel 2.4 ver. 128 Mb RAM
>
>i have seen not only on this sytem but the other one having 512 Mb RAM the 
>most of the memory is lost or taken by graphics or xserver. on my system 
>around 90% is occupied by the xsever and on the sys with 512 Mb RAM around 
>70% is occupied. how to reduce this load. i oculd not get any article or 
>stuff relate to this . if we can do something in kernel or in some way 
>reduce this load while working in GUI envt

What makes you think you need to reduce memory usage?  There is no penalty 
for using all of memory (but there is when you try to use more than is 
available).  Modern operating systems use physical RAM for all kinds of 
things (e.g., disc cache) that are released only when something else needs 
RAM.  Ignore the "RAM in use" indicators; instead pay attention to disc I/O 
(both I/Os per second and MBs per second) and perhaps CPU 
utilization.  Real memory pressure is best monitored by watching for disc 
I/Os related to swapping and perhaps page faults.

--
Jeff Woods <kazrak+kernel@cesmail.net> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
