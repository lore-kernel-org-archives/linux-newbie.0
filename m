From: "Enrique Nieves" <spanfax@charter.net>
Subject: Re:Solved: Newbie installation problem
Date: Tue, 27 Aug 2002 20:53:11 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001901c24e2d$4876b830$6401a8c0@FAMILY>
References: <001701c23a81$c565a3c0$6401a8c0@ENRIQUE>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I just wanted to let everyone know that I finally solved the internet
connection problem I was having with my Linux box and Linksys router.  I
appreciate all the suggestions everyone gave me.

I changed the NIC to another PCI slot that I had skipped.  Either the PCI
slots are read in sequence, or the PCI slot my NIC was occupying was
damaged.  Nevertheless, my XP desktop box, my XP laptop box, and my RH Linux
box are all connected and working.

I'm now trying to use Samba to access the shared files in my XP boxes from
my Linux box.  My XP boxes are talking to each other and sharing printers
without problems.  My challenge is to do the same with my Linux box.  All I
can currently do with my Linux box connection is connect to the internet via
router to cable modem.

Can anyone tell me how Nautilus is used to see shared files in my XP boxes
from my Linux box?  I'm currently reading up on Samba, but someone told me
that I could use Nautilus to read shared Windows files.  Do I still have to
start Samba in order to use Nautilus?  Nautilus looks like a browser to me;
however, I don't know how to locate directories and files that are in my XP
boxes on the network using Nautilus from my Linux box.

Thanks,

E.

----- Original Message -----
From: "Enrique Nieves" <spanfax@charter.net>
To: <linux-newbie@vger.kernel.org>
Sent: Friday, August 02, 2002 8:07 PM
Subject: Newbie installation problem


> I'm a newbie with Linux and I'm trying to install Red Hat 7.3 in my AMD K6
> box (128 mb RAM, 233 mhz, 6 gb hard drive) to be the sole OS for that box.
> When the installation program tries to detect the network card (eth0) it
> gives me a FAILED message.
>
> I'm trying to have a home network using a LinkSys router with a Windows XP
> box and this AMD PC connected peer to peer and another ethernet connection
> to use with my laptop.
>
> I'm trying to decide if the problem is in the NIC card or in my attempt to
> install Red Hat.  Is it very difficult to connect a Linux box and an XP
box
> peer to peer?
>
> Thanks,
>
> EN
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
