From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: notifier_chain_register semantics query!!!
Date: Tue, 8 May 2007 10:38:54 +0530
Message-ID: <366312910705072208t6851aff8ha85579d5a0ee0422@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=W923YzFANp+suxff2bGqj5uDpbk3EA27BLpGyiNUMOw6gAjNPZGewkFU8nra+TayJ+F+vnx9CecyDA6cE+FZPIg4+19zvUakv1AxnCeCoYyL93/z7qKiwtHHzBedL/zojd/jF/3hpBwNuoS0PEr54wrXE7RhmK4sx/0LrQ6OjRg=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbies <kernelnewbies@nl.linux.org>
Cc: net-linux <linux-net@vger.kernel.org>, newbie <linux-newbie@vger.kernel.org>

Hi All,

Following definition of notifier_chain_register is from kernel/sys.c
and for kernel 2.6.20.1 .

static int notifier_chain_register(struct notifier_block **nl,
                struct notifier_block *n)
{
        while ((*nl) != NULL) {
                if (n->priority > (*nl)->priority)
                        break;
                nl = &((*nl)->next);
        }
        n->next = *nl;
        rcu_assign_pointer(*nl, n);
        return 0;
}

Since the first parameter is passed as a double ptr, the pointer
itself is changed by the traversal and by rcu_assign_pointer(*nl, n) ,
right? And the new value will be address of notifier_block n. This
means the new head of the notifier list is n with the highest
priority( in terms of magnitude atleast ).

My query is ,why are we loosing the notifiers  during traversal in the
first while loop, which have a priority > n->priority ?

I am terribly confused here.
Can somebody help me out here?

Thank you
~psr

-- 
play the game
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
