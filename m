From: james miller <jamtat@mailandnews.com>
Subject: RE: Not able to install Redhat 8.0 - Network Card is 3c515
Date: Sun, 5 Jan 2003 11:16:47 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E1837D6@mailandnews.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ronald:

This response may not be quite what you're looking for, but then again, maybe 
it will be helpful. The system you describe is what I would think of as a 
"survpc", i.e., an outdated computer that won't efficiently run alot of newer 
software or OS's. Maybe you're using it to sort of "test the (Linux) waters", 
and don't intend to do much productive with it. If so, you may be able to get 
the latest Red Hat to install on it, though I'd guess you'll have to do some 
tweaking, as you seem to have discovered already. I'm not sure about the 
network card problems you're having and how to resolve them, but another issue 
you'll likely confront is the need to set up a swap partition right away 
because of low memory. The RH install routine probably does this for you more 
or less automatically. However, if you're intending to really use this machine 
for useful things, the latest RH may not be the best way to go. For one thing, 
it probably requires a minimum of something like 1.5 GB of disk space: if your 
machine's HD is contemporaneous with the rest of its hardware, you may not 
have enough disk space to install RH. Even if you do, there may be very little 
space left over for furthe enhancements. I've been through this attempt to 
install more modern distros on older hardware pretty extensively recently: it 
can be a real headache. All this is to conclude by saying that there are 
distributions that are much more effective for older hardware than the latest 
RH, and ones that can give you a quite useful system that functions with 
reasonable speed, in about 300-500 MB and with the other hardware you have. If 
you need further information on which distro(s) I'm talking about, just let me 
know and I'll be glad to provide it.

James

>===== Original Message From "Ronald Hahm" <hahmr@myrealbox.com> =====
>I am trying to install RedHat 8.0 on a Pentium 100 Mhz machine.  So far
>I am not having too good of luck.  Here are the specs of the machine.
>
>Zeos Pantera
>Pentium 100
>BusLogic SCSI Card
>NEC SCSI CDROM
>2.5 Maxtor IDE drive
>32 MB RAM
>3c515 Ethernet Card (2)
>
>I am having problems with the installation when it needs a driver disk.
>If I try to do a network installation it needs a driver disk for the
>3c515 ethernet card.
>
>These are the errors messages that I get during the installation.
>
>"Failed to mount driver disk."
>"The floppy disk you inserted is not a valid driver disk for this
>release of Red Hat Linux."
>
>Can someone get me feedback or a workaround as to how I can get Red Hat
>8.0 installed on this machine?
>
>Thanks.
>
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
