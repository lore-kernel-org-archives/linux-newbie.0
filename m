From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Bottom Halves
Date: Fri, 2 Aug 2002 20:36:20 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208022007230.30515-100000@Consulate.UFP.CX>
References: <7C078C66B7752B438B88E11E5E20E72E0EF486@GENERAL.farsite.co.uk>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7C078C66B7752B438B88E11E5E20E72E0EF486@GENERAL.farsite.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Curtis <kevin.curtis@farsite.co.uk>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Kevin.

> I am writing a Kernel module that needs to be both 2.2 and 2.4
> compatible. My module receives hardware interrupts, and I have a
> need to schedule a task from the interrupt routine. I have been
> reading up on Bottom Halves and have a question:
>
> I would like the same task to be scheduled each time the ISR is run,
> but the parameter must be different. The parameter is in fact a
> pointer to a structure of context information. The bit that worries
> me about what I have read is that if the BH is scheduled several
> times before it is run, it will only actually run once. How does the
> Kernel identify if the task is already in the task list? Is it by
> address of the task only or the address of the task and the value of
> the parameter?
>
> Any pointers to some example code that do this would be gratefully
> accepted.

A simple change in your design will make the implementation much easier.

If I'm reading it right, what you have at the moment is a requirement
that the bottom half runs with the address of a particular set of data
that it is to process, with this address being different each time.

The standard design as I understand it is for the bottom half to know
where to find the pointers for a queue of items and to process all items
in the queue when it runs, along the lines of the following outline:

	struct bh_data {
	    struct bh_data *next;

		:

	}

	struct bh_data bh_start = NULL, bh_end = NULL;

	bh_fn_def(...) {
	    struct bh_data bh_this;

			:

	    while (bh_start != NULL) {
		take_spinlock();
		bh_this = bh_start;
		bh_start = bh_start->next;
		release_spinlock();

			:

	    }
	}

	void add_to_bh_queue(struct bh_data *item) {
	    if (item != NULL) {
		item->next = NULL;
		take_spinlock();
		if (bh_start != NULL) {
		    bh_end->next = item;
		    bh_end = item;
		} else
		    bh_start = bh_end = item;
		release_spinlock();
	    }
	}

I don't have the prototype for the bottom half function to hand, so
substitute it for the bh_fn_def(...) line in the above. Also, note that
the take_spinlock() and release_spinlock() lines in the above indicate
where locking MAY be required to prevent races.

When you need to queue a bottom half, you call the add_to_bh_queue()
function with a pointer to a unique data block for that queue and then
mark the bottom-half when that function returns. Note especially that
the data block needs to be unique relative to the items already in the
queue, but can be reused once it has been dequeued by the bottom-half.

When the bottom-half gets run, it expects to find a queue of items to
process, and works its way through that queue until it is empty. If it
ever gets run when the queue is already empty, it exits straight away.

PLEASE NOTE that this is NOT a fully-debugged specification, only an
outline of how suchlike could be done, and it will need to be thoroughly
debugged before being put into commercial use.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
