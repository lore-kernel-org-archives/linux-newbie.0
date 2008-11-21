From: "EXTERNAL Werner Philipp (Praktikant; CR/AEM5)" 
	<external.Philipp.Werner@de.bosch.com>
Subject: Trying to alloc many continous pages
Date: Fri, 21 Nov 2008 16:17:17 +0100
Message-ID: <BF92A053E4A99B4E8EAE0B9EBD7EB203025E1650@si-mail15.de.bosch.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hi,

I'm writing a driver using DMA to transfer data to a performance critic=
al device. I allocate a temporary DMA buffer which will be freed immedi=
ately after the DMA is completed. If there is enough continous memory a=
vailable for all data I would like to transfer, I use it. Otherwise I s=
plit up the transfer in multiple transfers.

What's the right way to allocate the continous buffer? I didn't find ho=
w to "try allocating memory" without having an effect, if the memory in=
 not available.

If I use the following code and there is not enough free memory, my lin=
ux hangs for several minutes after the DMA has finished.


unsigned int order =3D get_order(data_size);
while (1) {
     	kbuf =3D (void *) __get_free_pages(__GFP_NORETRY | __GFP_NOWARN, =
order);
	if (kbuf)
		break;		// success: we got a buffer
	if (order =3D=3D 0)
		return -ENOMEM;
	order--;			// retry with a smaller order
}
buffer_size =3D PAGE_SIZE << order;



I think the memory management tries to reduce fragmentation in memory, =
but I would like to avoid this behaviour. It's not really a problem if =
I can't get a huge buffer, because in this case I will use a smaller on=
e. But if there is a huge chunk of free memory I would like to use it, =
because it yields performance benefits.

I just want to look if I can alloc a number of continous pages, and if =
there aren't enough I want to handle it myself... How can I do that?


Best regards=20
Philipp Werner=20
___________________________________



Blaupunkt GmbH=20
Robert-Bosch-Stra=DFe 200
31139 Hildesheim
www.blaupunkt.com


Sitz: Hildesheim, Registergericht: Amtsgericht Hildesheim HRB 120
Aufsichtsratsvorsitzender: Volkmar Denner; Gesch=E4ftsf=FChrung: Uwe Th=
omas,
Egbert Hellwig, Dirk Hoheisel, Michael Klemm
Blaupunkt GmbH - Ein Unternehmen der Bosch Gruppe=20

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
