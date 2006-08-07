From: Jan Engelhardt <jengelh@linux01.gwdg.de>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Mon, 7 Aug 2006 20:00:49 +0200 (MEST)
Message-ID: <Pine.LNX.4.61.0608071958160.3365@yvahk01.tjqt.qr>
References: <292693080608070339p6b42feacw9d8f27a147cf1771@mail.gmail.com> 
 <44D7579D.1040303@zytor.com> <292693080608070911g57ae1215qd994e03b9dd87b66@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080608070911g57ae1215qd994e03b9dd87b66@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>, Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

>
> Agreed. But still having a single driver for all the NICs would be
> simply GREAT for my setup, in which all the PCs will be booted using
> PXE only. So apart from performance / relilability issues, what are
> the technical roadblocks in this?

Netboot, in the current world, could be done like this:

1. Grab the PXE ROM code chip manufacturers offer in case your network card 
does not support booting via PXE yet and write it to an EPROM which most 
PCI network cards have a socket for

2. Use PXELINUX, boot that with the help of the PXE ROM code

3. Put all drivers needed into the kernel or initrd; or send out different 
initrds depending on the DHCP info the PXE client sent. 


Jan Engelhardt
-- 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
