From: Ray Olszewski <ray@comarre.com>
Subject: 3Com Eth II problem (was: Re: very newbie)
Date: Tue, 17 Sep 2002 08:59:38 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020917085253.026c0ec0@celine>
References: <0E253E40DC78F4499CEDDE9223099F43039CB6D6@xcgva040.northgrum.com>
 <0E253E40DC78F4499CEDDE9223099F43039CB6D6@xcgva040.northgrum.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0209171523490B.03392@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:23 PM 9/17/02 +0000, pa3gcu wrote:
>On Monday 16 September 2002 21:53, Yelland, Michael wrote:
> > I installed RHS 7.1 but ifconfig has no idea where my 3Com eth III
> > is...what to do ?  I'm learning unix quickly :)

I missed the original message. Without duplicating Richard's fine advice, I 
do want to raise a different issue.

You are checking for the card using ifconfig. The normal (no arguments) use 
of this app will find only configured interfaces, that is, ones with IP 
addresses assigned. So from your report, it is unclear whether the problem 
is that the kernel module is not properly initializing the NIC (Richard's 
answer assumed that) or that the NIC is getting initialized but the 
interface not configured.

To distinguish these two possibilities, look at the output of "ifconfig 
-a". The -a argument tells it to report on all interfaces, not just 
configured ones. If you have no eth0, then follow Richard's advice. If you 
do have an eth0 but it has no IP address, check on how you set up your 
networking. (I can't be more specific here until you tell us how the host 
is *supposed* to get its IP address.)

PS - Please try to use more informative Subject: lines in the future. For 
an example, see the difference between your original and the replacement I 
provided  here.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
