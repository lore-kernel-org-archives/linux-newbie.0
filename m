From: Scott Wood <scottwood@freescale.com>
Subject: Re: regarding kernel preemption
Date: Thu, 29 Mar 2007 11:21:46 -0500
Message-ID: <20070329162146.GA32670@ld0162-tx32.am.freescale.net>
References: <7783925d0703290905u1e4d94f2v88d6f1736c52de81@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <7783925d0703290905u1e4d94f2v88d6f1736c52de81@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rick Brown <rick.brown.3@gmail.com>
Cc: Linux Kernel <linux-kernel@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Thu, Mar 29, 2007 at 09:35:13PM +0530, Rick Brown wrote:
> When we preempt_enable() / preempt_disable(), is the kernel preemption
> enabled or disabled for ALL the processors or just the local
> processor?

Just the local processor.

-Scott
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
