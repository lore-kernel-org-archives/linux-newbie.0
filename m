From: "Ahmed S. Darwish" <darwish.07@gmail.com>
Subject: Re: after effects of a kernel API change
Date: Thu, 18 Jan 2007 11:44:11 +0200
Message-ID: <20070118094411.GB29695@Ahmed>
References: <292693080701172015n736a269fl6945ba4fe19d8174@mail.gmail.com> <20070118051026.GA29695@Ahmed> <b115cb5f0701172135k411dca56u92101a929799548a@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b115cb5f0701172135k411dca56u92101a929799548a@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>, linux-kernel@vger.kernel.org

On Thu, Jan 18, 2007 at 11:05:53AM +0530, Rajat Jain wrote:
> >>
> >> Is there any way volunteers like me can help in this exercise?
> >
> >See the /APIchanges in the Kernel Janitors TODO list
> >http://kernelnewbies.org/KernelJanitors/Todo
> >
> [...]
> 1) How do I make sure if some one is NOT working on any of the
> mentioned bullet points? Who coordinates? On what mailing list?

Check latest trees to make sure the work is not duplicated. espicially 
trees like -mm and subsystem ones.

> 2) Do any patches for the above Todo list have the chances of getting
> merged into the mainstream kernel? Who approves? I suppose the
> respective maintainer of the driver / subsystem getting affected?

I advise lurking (following/reading) the list for at least 2 or 3 weeks and 
you'll automatically understand how the "system" works. Also check:

$KERNEL_TREE/Documentation/HOWTO
$KERNEL_TREE/Documentation/SubmittingPatches
$KERNEL_TREE/Documentation/CodingStyle

-- 
Ahmed S. Darwish
http://darwish-07.blogspot.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
