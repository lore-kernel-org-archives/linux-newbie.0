From: Ray Olszewski <ray@comarre.com>
Subject: Re: defrag
Date: Tue, 01 Oct 2002 12:54:36 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021001124856.02c9ed90@celine>
References: <000601c26981$c2a1b370$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000601c26981$c2a1b370$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 03:35 PM 10/1/02 -0400, Paul Kraus wrote:
>Can you defrag a Linux drive

There is a Linux program called "defrag" that works with ext2 filesystems. 
I don't know if it works with the newer filesystems, like ext3 and reiserfs.

>I think the partition is ext3. Do they need
>deframenting?

People disagree about this, but the conventional answer is NO (exclusing 
unusual circumstances). In practice, I don't ever defrag my ext2 
filesystems, and I don't see the kinds of performance deterioration you (or 
I, anyway) typically see on old Windows systems.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
