From: Ray Olszewski <ray@comarre.com>
Subject: Re: internal faxmodem...
Date: Wed, 24 Apr 2002 06:05:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020424130541.00f5698c@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Korosi Akos <korosiakos@mailbox.hu>, Newbie <linux-newbie@vger.kernel.org>

Linux supports internal *modems* just fine. It does not support so-called
Winmodems, which are devices that use software to emulate portions of a real
modem's functionality. 

The lack of support for Winmodems is (for the most part) due to the
unwillingness of manufacturers to release to the Open Source community the
needed technical details about their products (hence the important exception
of a Lucent pseudo-modem), and in part due to a lack of interest by Open
Source developers in these products.

In any case, to see if your particular modem is supported, look it up in the
list at

        http://www.idir.net/~gromitkc/winmodem.html 

You will need an actual model number to do this; "I think it is Arowana with
Motorola chipset" is a bit too vague to check.

At 02:30 PM 4/24/02 +0200, Korosi Akos wrote:
>Hi all!
>
>I bought an internal faxmodem...
>Now I know, it was a bad idea, because my linux distribution didn't
>idendtified it, and I heard that internal modems are not
>supported by linux very vell...
>
>About the faxmodem:
>Mercury 56 Kbps faxmodem, with CONEXANT chipset.
>(I don't know what else should I tell to you, but you could ask)
>
>My linux:
>RedHat 7.1 (Seawolf) with the default kernel which i got with it:
>Kernel 2.4.2-2
>I installed it with default parameters on graphic mode.
>(that was my first (and last till now) linux installation)
>
>Ask, if additional data is required...
>
>Now I ask how could I get faxmodem to work.
>If there is a newer kernel, which supports faxmodem,
>or if there is a driver somwhere...
>The best would be if somebody knows for sure, that RH7.2
>supports faxmodems, because than I would force myself to
>install it.
>If a newer kernel supports it, than also I will start installing
>new kernels, but I am asking for the easiest (and the most painless)
>method to make it work.
>(it would be urgent to make it work)
>
>If somebody knows drivers for Motorola faxmodem chipset, than
>I could change my modem for an other with Motorola chipset on it
>(if linux knows Motorola better).
>I think it is Arowana with Motorola chipset.



--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
