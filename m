From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: celeron and laptop / Linux
Date: Sat, 15 Jun 2002 07:39:12 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02061507391200.00275@unix.pa3gcu>
References: <20020615020809Z314835-22020+4846@vger.kernel.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020615020809Z314835-22020+4846@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Saturday 15 June 2002 02:11, Adam Luchjenbroers wrote:

> Also make sure that if it has an internal LAN card that it is supported and
> beware internal modems as they are almost invariably winmodems and are
> therefore unsupported (winmodems are not true modems, as they use their own
> proprietary interface instead of the standard one).

Many laptops thesedays leave you a choise, no internal lan or modem, those 
laptops have PCMCIA slots of course a better choise for those who are not so
technicly minded, other laptops have internal hardware for lan and modem.
Those with internal modem and lan have much the same chipsets, eepro100 is a 
common chipset for a lan and is fully supported in all linux distro's.

The chipset for the modem can vary as Adam pointed out, however i do not 
completly agree with Adam here, there are quite a lot of winmodems which can 
be made to work, a good and common example here is the Lucent chipset.
Information of which can be found here;
http://www.linuxdocs.org/HOWTOs/Winmodems-and-Linux-HOWTO.html
A full list of win/linux-modems can be found at;
http://www.idir.net/~gromitkc/winmodem.html#drivers

I personaly have a winmodem in my laptop and use the lucent driver, it works 
well, it is not part of any linux distro because it is non-gpl but is freely 
available for all, it is listed in the above URL. 

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
