From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Extra installation
Date: Sun, 11 Aug 2002 08:40:25 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208110830010.8397-100000@Consulate.UFP.CX>
References: <001901c240f6$2a4395c0$14000a0a@p75>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001901c240f6$2a4395c0$14000a0a@p75>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Colin Harris <charis.g3orh@virgin.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Hi Colin.

> New to this list. Could someone outline the possibilities please.
> Problem as below :-
>
> I have a 17Gb HDD. First 5 GB dedicated to Redhat 6.1 and runs an
> ax25 system for a DX cluster and ax25 node system.
>
> Want to try Redhat 7.2 - Tried a second install by creating a new
> 5GB partition. First time it did install, subsequent times it stops
> after 400 mb.  However , the plan was to install this later version
> and run it from the existing Lilo. After ( successfully) installing
> 7.2 and running from a floppy , shut down 7.2 , booted 6.1 to
> include info into lilo.conf , run lilo but of course it cannot find
> files on an unmounted system (7.2).
>
> Questions are :- How to run a second version selectable from Lilo ?
> and are there still problems with installing between 5 and 10 GB
> down a hdd ?. I thought this 1023 cylinder thing had been overcome
> long ago.

The obvious solution would be to temporarily mount your 7.2 partition as
/mnt within your 6.1 partition, but you also need to ensure that each
entry gets a separate root= parameter. That would give you a lilo.conf
something like the following:

===============8<=============== CUT ===============>8===============

boot		= /dev/hda
compact
delay		= 50
install 	= /boot/boot.b
map		= /boot/map
prompt
ramdisk 	= 16384
read-only
timeout 	= 50
vga		= 1

password	= NotLikely
restricted

default 	= 6.1

image=/boot/vmlinuz
	label	= 6.1
	root	= /dev/hda1

image=/mnt/boot/vmlinuz
	label	= 7.2
	root	= /dev/hda2

===============8<=============== CUT ===============>8===============

Change the password= line to whatever you prefer (and no, that isn't
mine), and also change the root= lines to suit, then mount your 7.2
partition wherever and run lilo to deal with the results.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
