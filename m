From: "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Mon, 07 Aug 2006 09:49:42 -0700
Message-ID: <44D76F26.9@zytor.com>
References: <292693080608070339p6b42feacw9d8f27a147cf1771@mail.gmail.com>	 <44D7579D.1040303@zytor.com> <292693080608070911g57ae1215qd994e03b9dd87b66@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
In-Reply-To: <292693080608070911g57ae1215qd994e03b9dd87b66@mail.gmail.com>
Sender: linux-net-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

Daniel Rodrick wrote:
> 
> Agreed. But still having a single driver for all the NICs would be
> simply GREAT for my setup, in which all the PCs will be booted using
> PXE only. So apart from performance / relilability issues, what are
> the technical roadblocks in this?
> 
> I'm sure having a single driver for all the NICs is a feature cool
> enough to die for. Yes, it might have drawbacks like just pointed out
> by Peter, but surely a "single driver for all NIC" feature could prove
> to be great in some systems.
> 

Assuming it works, which is questionable in my opinion.

> But since it does not already exist in the kernel, there must be some
> technical feasibility isse. Any ideas on this?

No, that's not the reason.  The Intel code was ugly, and the limitations 
made other people not want to spend any time hacking on it.

	-hpa

