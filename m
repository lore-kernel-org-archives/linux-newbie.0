From: Pratik Solanki <pratik.solanki.ml@gmail.com>
Subject: Re: VM Vs Swap space
Date: Thu, 7 Oct 2004 12:09:58 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <9cb08bfa04100709095ebe08a1@mail.gmail.com>
References: <20041007091515.73785.qmail@web52904.mail.yahoo.com>
	 <41651D62.1010001@gelm.net>
Reply-To: Pratik Solanki <pratik.solanki.ml@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41651D62.1010001@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thu, 07 Oct 2004 06:41:38 -0400, chuck gelm <chuck@gelm.net> wrote:
> Ankit Jain wrote:
> 
> >how will u differentiate virtual memory and swap area
> >
> >thanks
> >
> >ankit
> >
> >
> Virtual memory is swap area in use.

umm. A running system can or cannot have swap. Correct me if I am
wrong but you can't disable virtual memory once its enabled, or at the
very least it would be extremely tough to do so and I don't know of
any system that does it. Virtual memory is enabled when the kernel
starts up and stays that way. Swap is a different issue.

Pratik.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
