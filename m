From: Beolach <beolach@comcast.net>
Subject: Re: 2 NIC cards not talking
Date: Thu, 22 Jan 2004 21:04:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40109D5D.2060708@comcast.net>
References: <5F84A09ECDD5D411973000508BE3247026602500@exnyc07.lehman.com> <40107041.6DDDE143@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40107041.6DDDE143@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: chuck <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

chuck wrote:
> [snip]
> 
>  OBTW, when I
> 
> ping -I eth0 192.168.1.1
> ping: bad interface address 'eth0'
>  
>  is what I get.  I do have an eth0 device.     :-|
> 

The -I option doesn't take an interface name (ie eth0), but rather the 
IP address (ie 192.168.0.1) assigned to the interface.

Conway S. Smith

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
