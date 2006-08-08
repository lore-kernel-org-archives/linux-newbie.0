From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Tue, 8 Aug 2006 10:43:13 +0530
Message-ID: <292693080608072213n2be75176g46199e92d669f5de@mail.gmail.com>
References: <292693080608070339p6b42feacw9d8f27a147cf1771@mail.gmail.com>
	 <44D7579D.1040303@zytor.com>
	 <292693080608070911g57ae1215qd994e03b9dd87b66@mail.gmail.com>
	 <44D76F26.9@zytor.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44D76F26.9@zytor.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

> >
> > I'm sure having a single driver for all the NICs is a feature cool
> > enough to die for. Yes, it might have drawbacks like just pointed out
> > by Peter, but surely a "single driver for all NIC" feature could prove
> > to be great in some systems.
> >
>
> Assuming it works, which is questionable in my opinion.
>
> > But since it does not already exist in the kernel, there must be some
> > technical feasibility isse. Any ideas on this?
>
> No, that's not the reason.  The Intel code was ugly, and the limitations
> made other people not want to spend any time hacking on it.
>

Hi ... so there seem to be no technical feasibily issues, just
reliabliy / ugly design issues? So one can still go ahead and write a
Universal Protocol Driver that can work with all (PXE compatible)
NICs?

Are there any issues related to real mode / protected mode?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
