From: Ray Olszewski <ray@comarre.com>
Subject: Re: grep for ip address on boot
Date: Tue, 19 Nov 2002 13:02:33 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021119125646.020ed050@celine>
References: <1037733067.3110.10.camel@brainpress.verizon.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1037733067.3110.10.camel@brainpress.verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

I don't know how promptly your application requires you to sync with ppp0 
IP address changes, but there is an off-the-shelf alternative to what you 
are proposing. When pppd runs, it will execute the script /etc/ppp/ip-up, 
and that script has access to the local IP address as an environment 
variable (IPLOCAL). This gets used, for example, as a way to update a 
firewall (ipchains or iptables) when the interface address changes (as it 
will from time to time with PPPoE over ADSL, which I assume is what you 
have). It might do what you want a bit more easily than the approach you 
are trying for.

At 02:11 PM 11/19/02 -0500, Bryan Simmons wrote:
>I have an adsl connection that uses a dynamic IP from my ISP.  I use the
>adsl-status script to find out what my IP is at any time.
>What I want to do is parse the response I get from adsl-status to
>isolate my IP.  Here is the output of the adsl-status script:

[details deleted]



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
