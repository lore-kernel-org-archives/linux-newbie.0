From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: two eth devices ...
Date: Mon, 26 Jan 2004 20:45:09 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401262045.09004.pa3gcu@zeelandnet.nl>
References: <4011C87400000704@mail-bcm02.alestra.net.mx>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4011C87400000704@mail-bcm02.alestra.net.mx>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "rgomez@bancomer.com" <rgomez@bancomer.com>, linux-newbie@vger.kernel.org

On Monday 26 January 2004 19:29, rgomez@bancomer.com wrote:
> Hi, I've been assigned a PC with two eth devices, What utility can I give
> them? or is better if i unplug one, my network is configured
> to assign an IP address via dhcp.

If you dont need eth1 then dont use it, simply down it via ifconfig, i cant 
say much more as you failed to say what distro you use, most possably answer 
would be.
edit /etc/rc.d/rc.local and place the following;

/sbin/ifconfig eth1 down
rmmod <module>

See you did not even say what sort of card it is so module is unknown to me.!!

Next time be more informative, or better, be imaganative yourself.

> As you can see I'm a Linux newbie in network thems...
> TKS
>

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
