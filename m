From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Large FTP transfers
Date: Sun, 29 Sep 2002 10:44:38 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02092910443801.00280@unix.pa3gcu>
References: <5.1.0.14.1.20020928075131.02675d00@celine> <5.1.0.14.1.20020928093421.024d14f0@celine> <200209291739.30520.adam@luchjenbroers.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209291739.30520.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Adam Luchjenbroers <adam@luchjenbroers.com>, linux-newbie@vger.kernel.org

On Sunday 29 September 2002 08:09, Adam Luchjenbroers wrote:
> I'm starting to suspect the NIC. It has twice recently (one instance before
> my previous emails, one since) stopped being detected with Linux giving me
> an "unable to access 64-bit address message"
>
> I've retrieved them from /var/log/kernel/errors
>
> Sep 28 22:09:21 ironclad kernel: PCI: Unable to handle 64-bit address for
> device 00:09.0
> Sep 28 22:09:21 ironclad kernel: PCI: Unable to handle 64-bit address for
> device 00:09.0
> Sep 28 22:09:21 ironclad kernel: Unknown bridge resource 0: assuming
> transparent
> Sep 28 22:09:21 ironclad kernel: PCI: Cannot allocate resource region 1 of
> device 00:09.0
> Sep 28 22:09:21 ironclad kernel: PCI: Device 00:09.0 not available because
> of resource collisions
> Sep 28 22:09:21 ironclad kernel: PCI: Device 00:09.0 not available because
> of resource collisions
>
> In both cases, applying pressure to the top of the card fixed the issue,
> however it is properly screwed in. How can I verify that this part is at
> fault as I do not have any other cards to test it with?

At a guess i would say your cable is at fault, the way cards fit into the 
Mobo normally assure's a proper connection, unless your card foot is worn 
down and fits losely into the socket i doubt that would be your problem 
altho' it could be a mineute hair fracture in one of the solder joints in the 
foot. Come to that a bad joint could be anywhere.

The last 2 messages above say resource collisions, either you have 2 cards 
sharing one IRQ (see that with cat /proc/interruts) and one or the other is 
misbehaving, or there is a wire lose in the cable plug.

Check all the simple things before pointing a finger at the card.
Things like this can have many causes, at least the messages all point to 
00:09.0 which we are presuming is the ethernet card, lspci will tell you what 
00:09.0 is.



-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
