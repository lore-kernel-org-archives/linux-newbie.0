From: Ray Olszewski <ray@comarre.com>
Subject: Re: Help with Fedora Core 2 internet access
Date: Sat, 21 Aug 2004 19:48:33 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040821194050.01f55ac8@celine>
References: <4127F6DE.5050407@pobox.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4127F6DE.5050407@pobox.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:29 PM 8/21/2004 -0700, Adam Boettiger wrote:
>I am a newbie to linux.  Just partitioned my drive and installed Fedora 
>Core 2 on a 10G partition. The partition and install went very smoothly 
>and I am exploring linux but am stuck trying to get internet access.
>
>I'm on a Dell D600 laptop with a Centrino chip (wireless) trying to access 
>a WLAN in my home.
>
>When I looked at what was running in XP for the internet connection it was:
>
>Intel Pro / Wireless LAN 2100 3A mini pci adapter
>
>When I go to set up a wireless internet connection in linux, this is not 
>listed in the adapters list.
>
>Is this wireless card compatible with Fedora Core 2 or do I need to 
>download a driver or adapter for it?  If so, how and where?

You may want to wait until Monday, to see if you get a better answer than I 
can offer from someone who knows the specifics of Fedora and/or Dells. 
Short of that, I can suggest you check two places (and a "bonus" third):

1. http://ipw2100.sourceforge.net/ is a development project to support the 
shipset in your WiFi adapter. It has Intel's support. But it isn't offering 
a "stable" driver yet, though.

2. http://ndiswrapper.sourceforge.net/ is a project that offers a "wrapper" 
program that lets the Linux kernel use the NDIS API to communicate with the 
(Windows) drivers that WiFi vendors supply with their devices. This may 
work for you.

3. The "bonus" place is a site the offers a commercial ($19.95) product to 
support many WiFi chipsets under Linux. It claims to support your Intel. 
The site is --
http://www.linuxant.com/driverloader/?PHPSESSID=de48d169f509b8dfd489242e22383fde

Hope this helps. Assuming you get it working, you might take a moment to 
let us know what solution you ended up with.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
