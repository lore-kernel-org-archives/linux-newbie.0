From: "Anshuman Rawat" <asr245@nyu.edu>
Subject: Re: fast interrupts?
Date: Sat, 8 Jun 2002 15:30:03 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <003a01c20f22$e490e140$4204a5d8@oemcomputer>
References: <046701c20ecc$69f3d560$9e03a5d8@oemcomputer> <20020608125800.D12928@neutrino.particles.org>
Reply-To: "Anshuman Rawat" <asr245@nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Elias Athanasopoulos <eathan@otenet.gr>
Cc: linux-newbie@vger.kernel.org


> On Sat, Jun 08, 2002 at 05:11:01AM -0400, Anshuman Rawat wrote:
> > while handling a fast interrupt, only those registers are saved that are
> > modified by a normal C function (?). This means that , if assmbler code
is
> > to be used in the handling routine, the remaining registers (?) must be
> > saved beforehand and restored afterwards.
> > what does the author mean by registers modified by a normal C function,
and
> > the remaining registers?
>
> A CPU has some registers in order to store data and process them using
> the internal command set of the architecture. Registers are the internal
> "memory" of the CPU.
>
> In the program flow, when the control is taken by a function
> (this is not only for C), some values are stored to specific registers.
> This helps the CPU to know what to do (i.e. in which mem address will
> start reading) when the function returns.
>
> Elias
>
so it means that only those registers are saved that were being used by the
process which was interrupted? or only those which the process was using and
the intr. handling routine will also use?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
