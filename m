From: Rik van Riel <riel@surriel.com>
Subject: Re: Issuing BIOS interrupts in Linux
Date: Sat, 05 Aug 2006 10:54:44 -0400
Message-ID: <44D4B134.1070002@surriel.com>
References: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>	 <1154740833.11701.1.camel@uranium.hq.netapp.com>	 <292693080608050553x756e4276k33c5afa80f686f44@mail.gmail.com> <b115cb5f0608050611qe937318qf04d87a472dc849a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0608050611qe937318qf04d87a472dc849a@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: idlisambar@gmail.com, kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Rajat Jain wrote:

> Actually I was thinking that if it is possible to perform all the Disk
> IO operations using the BIOS routines, then why can't we write a
> SINGLE disk driver that will work with all the kinds of disks.

Because that would be incredibly slow.  You could only have one I/O
request in flight at a time, and the system could not run other
processes while I/O was being done.

> So all this seems like a bad idea ... or should I say TOTALLY IMPOSSIBLE?

It might be possible, but it is still a very bad idea :)

-- 
"Debugging is twice as hard as writing the code in the first place.
Therefore, if you write the code as cleverly as possible, you are,
by definition, not smart enough to debug it." - Brian W. Kernighan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
