From: "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Mon, 07 Aug 2006 08:09:17 -0700
Message-ID: <44D7579D.1040303@zytor.com>
References: <292693080608070339p6b42feacw9d8f27a147cf1771@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
In-Reply-To: <292693080608070339p6b42feacw9d8f27a147cf1771@mail.gmail.com>
Sender: linux-net-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

Daniel Rodrick wrote:
> Hi list,
> 
> I was curious as to why a Universal driver (using UNDI API) for Linux
> does not exist (or does it)?
> 
> I want to try and write a such a driver that could (in principle)
> handle all the NICs that are PXE compatible.
> 
> Has this been tried? What are the technical problems that might come in 
> my way?
> 

It has been tried; in fact Intel did implement this in their "Linux PXE 
SDK".  The UNDI API is absolutely atrocious, however, being based on 
NDIS2 which is widely considered the worst of all the many network 
stacks for DOS.

Additionally, many UNDI stacks don't work correctly when called from 
protected mode, since the interface doesn't work right.  Additionally, 
UNDI is *ONLY* available after booting from the NIC.

	-hpa
