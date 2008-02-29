From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re: MIssed interrupts
Date: Fri, 29 Feb 2008 22:34:49 +0800
Message-ID: <804dabb00802290634u3873bcb5m7be4a80856d76de7@mail.gmail.com>
References: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
	 <f284c33d0802070750n1bc438c1y85c974bbf53a8242@mail.gmail.com>
	 <df9815e70802282321l789d6c3bj967da63d3761183b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=gNm4yQlNk8Ai/fcZ9FlqbIcvb3G0SnTSOd686x2fptM=;
        b=nlVYG4+LP8mc9pWY3mGjOmbSf+j/HpyHCQHw48ugWO3ib0Kv6efj1OJEnzWIM2KWp2A+Pf7aJ1wimG+Ue92uPlvV175PVsChIi2XTxWBKQALSkhKXxrxJHZ9kjWah9oTI+yB0hYAHnpfT1Izb1ZqvTlFBu+YwifHs8Lgmf/KXaU=
In-Reply-To: <df9815e70802282321l789d6c3bj967da63d3761183b@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jike Song <albcamus@gmail.com>, Mulyadi Santosa <mulyadi.santosa@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi Mulyadi,

On Fri, Feb 29, 2008 at 3:21 PM, Jike Song <albcamus@gmail.com> wrote:
> On Thu, Feb 7, 2008 at 11:50 PM, Mulyadi Santosa
>  <mulyadi.santosa@gmail.com> wrote:
>  > Hi....
>  >
>  >  AFAIK at the time it's in disabled state...yes it will be missed. But
>  >  once you enabled it again.... missing interrupts will be received.
>
>  Do you mean that the PIC(Local APIC or something else) will retain the
>  disabled interrupt, and deliver it once again to the processor core as
>  soon as be re-enabled?
>

This is something new to me.   After some some search, Mulyadi is
right.  It is called "Interrupt Request Buffering".   And according to
Unabridged Pentium 4 (pg 1537) while processing one interrupt, it can
receive another interrupt, but the 3rd one that comes in will be
discarded, and it is all on the same interrupt vector.   Thanks for
the sharing everyone....

>  Regards,
>  Jike
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
