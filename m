From: "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Mon, 07 Aug 2006 11:15:19 -0700
Message-ID: <44D78337.40109@zytor.com>
References: <292693080608070339p6b42feacw9d8f27a147cf1771@mail.gmail.com>  <44D7579D.1040303@zytor.com> <292693080608070911g57ae1215qd994e03b9dd87b66@mail.gmail.com> <Pine.LNX.4.61.0608071958160.3365@yvahk01.tjqt.qr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0608071958160.3365@yvahk01.tjqt.qr>
Sender: linux-net-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jan Engelhardt <jengelh@linux01.gwdg.de>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

Jan Engelhardt wrote:
>> Agreed. But still having a single driver for all the NICs would be
>> simply GREAT for my setup, in which all the PCs will be booted using
>> PXE only. So apart from performance / relilability issues, what are
>> the technical roadblocks in this?
> 
> Netboot, in the current world, could be done like this:
> 
> 1. Grab the PXE ROM code chip manufacturers offer in case your network card 
> does not support booting via PXE yet and write it to an EPROM which most 
> PCI network cards have a socket for
> 
> 2. Use PXELINUX, boot that with the help of the PXE ROM code
> 
> 3. Put all drivers needed into the kernel or initrd; or send out different 
> initrds depending on the DHCP info the PXE client sent. 
> 

There is a program called "ethersel" included with PXELINUX which can be 
used to send out different initrds depending on an enumeration of PCI space.

	-hpa
