From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian Sid startup problems
Date: Sat, 12 Jun 2004 13:10:04 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406121307380.1504@debian-emach>
References: <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine> <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406121104520.1489@debian-emach> <40CB459C.6050509@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40CB459C.6050509@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 12 Jun 2004, chuck gelm wrote:

> James Miller wrote:
> > This is all a bit beyond me, Ray.  But, taking your advice again, I looked
> > in /etc/modules - nothing there referring to usb.  Then, I looked in
<snip>
>
>   I am wondering if that ATI video card is in hotplug's default
> blacklist.  ???

Hello Chuck, and thanks for your input.  I checked /etc/hotplug/blacklist
and the ATI Radeon card is not listed there.  Only a couple of usb things
(usb-core and uhci-hcd) and something called evbug are there.  The saga
continues . . .

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
