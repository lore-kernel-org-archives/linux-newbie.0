From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: grep for ip address on boot
Date: Tue, 19 Nov 2002 14:23:38 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0211191421120.15767-100000@router.windsormachine.com>
References: <1037733067.3110.10.camel@brainpress.verizon.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1037733067.3110.10.camel@brainpress.verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bryan Simmons <bsimmo1@gl.umbc.edu>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On 19 Nov 2002, Bryan Simmons wrote:

> I have an adsl connection that uses a dynamic IP from my ISP.  I use the
> adsl-status script to find out what my IP is at any time.
> What I want to do is parse the response I get from adsl-status to
> isolate my IP.  Here is the output of the adsl-status script:
>
> adsl-status: Link is up and running on interface ppp0
> ppp0      Link encap:Point-to-Point Protocol
>           inet addr:151.196.10.63  P-t-P:10.4.25.1  Mask:255.255.255.255
>           UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:1492  Metric:1
>           RX packets:1962 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:1987 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:3
>           RX bytes:1600510 (1.5 Mb)  TX bytes:362634 (354.1 Kb)
>
> I figured that by using this command:  adsl-status | grep -o
> addr:['0'-'9']

adsl-status | grep inet | awk '{print $2}' | awk -F\: '{print $2}'

This grep's for the inet addr line.  Then awk takes word #2.  Then tells
awk that : is the seperator instead of space, and take word #2 again.

This _should_ work, it worked with ifconfig ppp0 here, which is what that
adsl-status seems to be calling.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
