From: Ingo Molnar <mingo@elte.hu>
Subject: Re: [PATCH 00/12] x86: Cleanup idt, gdt/ldt/tss structs
Date: Mon, 27 Oct 2008 11:57:08 +0100
Message-ID: <20081027105708.GB13895@elte.hu>
References: <1224904532-9586-1-git-send-email-ice799@gmail.com> <20081025054018.GU24654@1wt.eu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20081025054018.GU24654@1wt.eu>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Willy Tarreau <w@1wt.eu>
Cc: Joe Damato <ice799@gmail.com>, linux-x86_64@vger.kernel.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org


* Willy Tarreau <w@1wt.eu> wrote:

> On Fri, Oct 24, 2008 at 08:15:20PM -0700, Joe Damato wrote:
> > Hi -
> > 
> > This is my first submission to the kernel, so (beware!) please let me know if I can make any improvements on these patches.
> 
> It looks like you provide one patch per file. You should group some 
> of them together so that each patch does a functional change and 
> everything still builds after incrementally applying that patch. The 
> way you have splitted them will break builds if someone tries to 
> build after patch 1 for instance.

yes, at every step the kernel is expected to build and boot fine.

	Ingo
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
