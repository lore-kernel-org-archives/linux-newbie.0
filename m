From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Network card and kernel module problems
Date: Sun, 2 Feb 2003 16:15:13 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020216151302.19519@unix.pa3gcu>
References: <000801c2cad3$a696b500$eb6510ac@citechbd.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000801c2cad3$a696b500$eb6510ac@citechbd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

On Sunday 02 February 2003 15:56, Amin wrote:
> Hi all,
>
> I use a Surecom EP-320X-S 100/10M Ethernet PCI adapter; I believe it's
> Myson MTD3xx compatible --- at least, I've used it before with Myson's
> fealnx.o module in Red Hat Linux 7.3.  The problem is I upgraded to RH8.0
> and find that the kernel does not already support the card.  I tried
> recompiling with built-in support (for the Myson module).  kudzu detected
> the card at startup and configured it.  I've set it up it using Red Hat's
> ``neat'' tool (it uses DHCP), but it says it can't determine IP
> information, and to check the cables.

Then that means the card was detected and the module was loaded, have you 
done what it says.????

You may need to use dhcpcd with options to obtain a IP# from your isp.
IE, hostname ??.

>
> Also, could anybody tell me of a way to check the various distros' kernels
> to see if they come with built-in support for my card?
>
> Help is much appreciated.
>
> Yawar Amin

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
