From: Octavian Purdila <tavi@cs.pub.ro>
Subject: Re: Sleeping after preempt_disable() possible?
Date: Fri, 1 Sep 2006 17:13:45 +0300
Message-ID: <200609011713.45361.tavi@cs.pub.ro>
References: <7783925d0608312224w3a038b5fh6355c5e89c33d485@mail.gmail.com> <200609011546.27167.bora.sahin@ttnet.net.tr> <7783925d0609010621j5a2cd857t67336a28782fedb3@mail.gmail.com>
Reply-To: tavi@cs.pub.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7783925d0609010621j5a2cd857t67336a28782fedb3@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org
Cc: Rick Brown <rick.brown.3@gmail.com>, "bora.sahin@ttnet.net.tr" <bora.sahin@ttnet.net.tr>, linux-newbie@vger.kernel.org

On Friday 01 September 2006 16:21, Rick Brown wrote:
> > > Can I sleep after a call to preempt_disable() ?
> >
> > What are you trying to do? You can sleep from process context. If two
> > different process context can access to shared data, you can use
> > semaphore...
>
> I was curious that after a call to preempt_disable(), can I call a
> function that MAY sleep?
>

No, you are not allowed to sleep with preemption disabled. 


tavi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
