From: Peter <heisspf@skyinet.net>
Subject: Re: Printing with Kernel 2.6.14.4
Date: Wed, 29 Mar 2006 11:55:34 +0800
Message-ID: <20060329115534.609aea77@skyinet.net>
References: <200603280259.k2S2xxLA004035@skyinet.net>
	<4428C787.50804@comarre.com>
	<20060328160926.4ce1e7fc@skyinet.net>
	<200603280742.21986.david@fierbaugh.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200603280742.21986.david@fierbaugh.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Fierbaugh <david@fierbaugh.org>
Cc: linux-newbie@vger.kernel.org

On Tue, 28 Mar 2006 07:42:21 -0500
David Fierbaugh <david@fierbaugh.org> wrote:

> With cups apparently running, and root having the ability to print manually,

> try configuring your printer with cups web based tool.
> 
> Point your favorite web browser to 'http://localhost:631/'. This should open

> cups configuration. The login will probably be root and your root password, 
> this can be changed later, after you get printing working. From there you
can 
> add/change/delete printers and their settings. You can also print test pages

> from cups once you've got a printer setup correctly.
> 
Thanks!
I have done all this. Now I tried it again adding a new printer,  then w/o
being connected to print a test. It will just sit and wait and wait. So I
closed the page http://localhost:631/admin and tried to open it again w/o
being connected. The result was the machine froze, keyboard, second hand on
clock and I had to do a reset.

Regards

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
