From: Ray Olszewski <ray@comarre.com>
Subject: Re[2]: checking bandwidth in coyote
Date: Thu, 13 May 2004 07:32:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040513072252.01fa8a48@celine>
References: <5.1.0.14.1.20040511122021.02031090@celine>
 <1211088623.20040512014917@yahoo.com.sg>
 <5.1.0.14.1.20040511122021.02031090@celine> <1114970915.20040513001532@yahoo.com.sg>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1114970915.20040513001532@yahoo.com.sg>
References: <5.1.0.14.1.20040511122021.02031090@celine>
 <1211088623.20040512014917@yahoo.com.sg>
 <5.1.0.14.1.20040511122021.02031090@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: otok_otok1998 <otok_otok1998@yahoo.com.sg>
Cc: linux-newbie@vger.kernel.org

At 12:15 AM 5/13/2004 +0700, otok_otok1998 wrote:
[...]
>RO> At 01:49 AM 5/12/2004 +0700, otok_otok1998 wrote:
> >>Hello linux-newbier,
> >>
> >>i want to know how to checking bandwidth on my coyote linux, i'm using
> >>adsl connection, coyote on Pentium I as router.. thanx 4all
>
>RO> Please be more descriptive about what exactly you want to check.
[...]
>sorry ray.. im not giving the descriptive, i mean i want to check my
>bandwidth size that my adsl isp told me, it's about 128kbps.. once more
>sorry ray :) n thanx


For someone lacking in specialized equipment to test lines, and access to 
both ends of the connection, there is no *definitive* test I know of to 
determine bandwidth size. In practice, when I need to do this, I initiate a 
large transfer of some sort (usually ftp), and simply observe the transfer 
rate. A few considerations:

1. The transfer needs to be large enough to give you a good feel for 
average bandwidth ... not short enough to be influenced by transient 
effects. The larger the better, but as a general matter, something in the 
60 MB range (a Linux kernel source package, for example) usually serves me 
nicely.

2. The source of the transfer needs to have a higher upload speed than the 
alleged download speed of the connections you are trying to test.

3. The source should be "close enough" to you that delays caused by 
intermediate steps in the route are unlikely to affect measurement. (This 
is usually the toughest requirement to meet, and I cannot give you any real 
advice about how to meet it.)

I haven't had occasion to need to do this in years, so I may be missing 
some other considerations that apply. If so, I hope others will jump in 
with some added suggestions. That's why I'm sending this reply back via the 
list rather then just privately.

You can probably observe the speed in the ftp client you use; most of the 
ones I'm familiar with display cumulative download speed for a transfter. 
If not, with a little care you can check total bytes transferred in a given 
time frame using either ifconfig or ip (whichever one coyote supplies).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
