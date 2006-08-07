From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Mon, 7 Aug 2006 21:41:23 +0530
Message-ID: <292693080608070911g57ae1215qd994e03b9dd87b66@mail.gmail.com>
References: <292693080608070339p6b42feacw9d8f27a147cf1771@mail.gmail.com>
	 <44D7579D.1040303@zytor.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S932195AbWHGQL1@vger.kernel.org>
In-Reply-To: <44D7579D.1040303@zytor.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

On 8/7/06, H. Peter Anvin <hpa@zytor.com> wrote:
> Daniel Rodrick wrote:
> > Hi list,
> >
> > I was curious as to why a Universal driver (using UNDI API) for Linux
> > does not exist (or does it)?
> >
> > I want to try and write a such a driver that could (in principle)
> > handle all the NICs that are PXE compatible.
> >
> > Has this been tried? What are the technical problems that might come in
> > my way?
> >
>
> It has been tried; in fact Intel did implement this in their "Linux PXE
> SDK".  The UNDI API is absolutely atrocious, however, being based on
> NDIS2 which is widely considered the worst of all the many network
> stacks for DOS.
>
> Additionally, many UNDI stacks don't work correctly when called from
> protected mode, since the interface doesn't work right.  Additionally,
> UNDI is *ONLY* available after booting from the NIC.
>

Agreed. But still having a single driver for all the NICs would be
simply GREAT for my setup, in which all the PCs will be booted using
PXE only. So apart from performance / relilability issues, what are
the technical roadblocks in this?

I'm sure having a single driver for all the NICs is a feature cool
enough to die for. Yes, it might have drawbacks like just pointed out
by Peter, but surely a "single driver for all NIC" feature could prove
to be great in some systems.

But since it does not already exist in the kernel, there must be some
technical feasibility isse. Any ideas on this?

And any Idea where can I find the Intel's PXE SDK for Linux? I googled
for an hour but to no avail. Texts suggest that it was available on
Intel Architecture's Lab website which is non existent now. I would
appreciate if some one could send me the PXE SDk from Intel, if
somebody still has a copy.

Thanks,

Dan
