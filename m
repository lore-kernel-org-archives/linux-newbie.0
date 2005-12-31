From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: adsl pppoa connection
Date: Sat, 31 Dec 2005 13:08:41 -0500
Message-ID: <20051231180841.GA1281@lnx2.w8mch.ampr.org>
References: <43B59113.7040408@arrakis.es>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <43B59113.7040408@arrakis.es>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

On 12-30, Andrew wrote:
> I'm trying to set up an adsl pppoa Internet connection on Slackware 10.2 
> with kernel 2.6.13,  which includes the cxacru driver known to work with 
> vigor 318 modem.
> 
> The modem shows up in /proc/bus/usb/devices.
> 
> cat /proc/net/atm/cxacru\:0 :
> ADSL USB MODEM (usb-0000:00:0a.0-1)
> MAC: 00:50:7f:18:75:6e
> AAL5: tx 0 ( 0 err ), rx 0 ( 0 err, 0 drop )
> Line up
> 
> Leds light up correctly.
> 
> Running pppd gets as far as:
> 
> Connect: ppp0 <--> /dev/pts/0
> Connection terminated
> Modem hangup
> Exit
> 
> The message in syslog is LCP: timeout sending Config-Requests
> 
> It seems I am not getting an IP address (dynamic).
> 
> According to my ISP, no username or password are required; 
> authentication is apparently done by phone number.
> 
> Does anybody have any idea where I go from here? Or what I should put in 
> my ppp/options?
> 
> TIA,
> 
> Andrew


Greetings: Can't help with pppoa but I got pppoe working with much
doco reading and considerable help from Ray and Chuck on this list..

I have the file: DSL-HOWTO.pdf > 200K, that goes into all DSL formats
including pppoa.. It may give you some clues, finding it via google,
by Hal Burgiss, hal@foobar.net; v1.71 2002-07-21... HTH..

--
    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
