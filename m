From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: NIC cards
Date: Mon, 12 Aug 2002 14:55:25 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02081214552501.00319@unix.pa3gcu>
References: <20020812131245.GA18564@enoor.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020812131245.GA18564@enoor.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Majid Tahir <majid@enoor.com>, linux-newbie@vger.kernel.org

On Monday 12 August 2002 13:12, Majid Tahir wrote:
> hello all
> i have just installed redhat 7.2 on a machine that needs to have 2 nic
> cards...however neither of the two nic cards have been "found".  How would
> i configure it so that the two cards are properly installed..also one other
> problem is that i dont know the name of one of the nic cards, therefore it
> is difficult to find the proper drivers

Are they PCI or ISA cards.???

If they are PCI then the command 'lspci' or cat /proc/pci will show there 
make and type.
(I cant imagen them being PCI cards if the install did not find them).

If they are ISA cards and you have a windows machine handy then you may be 
able to gain information on thier type/make via windows.

When you can tell us what the cards are, there make and type then we can help 
you more.

>
> thanks for the help

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
