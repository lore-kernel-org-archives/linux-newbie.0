From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: notifier_chain_register semantics query!!!
Date: Fri, 18 May 2007 13:23:14 +0530
Message-ID: <366312910705180053s2197112cx169278dc1f694f56@mail.gmail.com>
References: <366312910705072208t6851aff8ha85579d5a0ee0422@mail.gmail.com>
	 <4bcb1f700705170840w7283dd77s1750d9b156786dd7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=dXoKJHiKyU9+D1Lvt+Mez0R3PKa1UzydBGpivn5ExkQ9Rq9pC/Bt5q61Aode3E0P7BRgW4X0xT0w8B4ztED1QkPFun5IdcOBm1f1wERYA2GPmrypfb8s5ZlViJalXJcwz+Xx5EEorKnlUD6C3Jkoezkyp0p0yYFJXkZ+oMt9GsQ=
In-Reply-To: <4bcb1f700705170840w7283dd77s1750d9b156786dd7@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ratnadeep Joshi <ratn.josh@gmail.com>
Cc: Linux Newbies <kernelnewbies@nl.linux.org>, net-linux <linux-net@vger.kernel.org>, newbie <linux-newbie@vger.kernel.org>

On 5/17/07, Ratnadeep Joshi <ratn.josh@gmail.com> wrote:
>
>
> >  All,
> >
> > Following definition of notifier_chain_register is from kernel/sys.c
> > and for kernel 2.6.20.1 .
> >
> > static int notifier_chain_register(struct notifier_block **nl,
> >                 struct notifier_block *n)
> > {
> >         while ((*nl) != NULL) {
> >                 if (n->priority > (*nl)->priority)
> >                         break;
> >                 nl = &((*nl)->next);
> >         }
> >         n->next = *nl;
> >         rcu_assign_pointer(*nl, n);
> >         return 0;
> > }
> >
> > Since the first parameter is passed as a double ptr, the pointer
> > itself is changed by the traversal and by rcu_assign_pointer(*nl, n) ,
> > right? And the new value will be address of notifier_block n. This
> > means the new head of the notifier list is n with the highest
> > priority( in terms of magnitude atleast ).
>
> Nopes. If you observe closely, *nl (head) is never touched. It is the nl
> that is changed.
>
> Say,
> head = 1000
> nl = 5000 (&head)
>
> So, first nl = 5000. Then nl = &(head->next) that will be 1004 (address of
> 'next' element of the structure)
> and so on.
> So, 'head' is never touched.
Thanks Ratan, missed that easily though :-(
Should have been more careful.

Thank you
~psr
>
> Regards,
> - Ratnadeep
>
> > My query is ,why are we loosing the notifiers  during traversal in the
> > first while loop, which have a priority > n->priority ?
> >
> > I am terribly confused here.
> > Can somebody help me out here?
> >
> > Thank you
> > ~psr
> >
> > --
> > play the game
> >
>


-- 
play the game
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
