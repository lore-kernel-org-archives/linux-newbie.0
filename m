From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: mac address change on an eth alias
Date: Wed, 18 Dec 2002 20:10:49 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02121820104907.00388@unix.pa3gcu>
References: <200212172355.32568.g38@rdsbv.ro> <5.1.0.14.1.20021217144923.020a7bd0@celine> <200212181946.55601.g38@rdsbv.ro>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212181946.55601.g38@rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Petre Bandac <g38@rdsbv.ro>, Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Wednesday 18 December 2002 17:46, Petre Bandac wrote:
> just testing for my general knowledge
>
> I heard that I can change the mac, I did as richard said and it went ok,
> and furthermore I wanted to change the mac of the alias, which I didn't
> succeed (richard's receipt gave the same mac - the mac I specifically
> assigned to the alias - to both IFC and it's alias)
>
> so, I should take the final answer as no ?

You have one ethernet card with ONE MAC adress, one can alias an ipadress on 
ones ethernet card, but AFAIK one cannot alias the MAC.

It seems logical, each card has its own MAC adress the adress is stored in a 
chip on the card, note "one adress" an IP# is assigned to a card and linux 
allows aliasing of the IP adress, so i think we must conclude that one cant 
alias the MAC period.

I have done no reading on this as i dont have time, but logicly what is to be 
gained from two MAC addresses on one card, as far as i see it only problems 
would arise, which is possably why it is not done.

>
> thanks,
>
> petre

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
