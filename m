From: Ray Olszewski <ray@comarre.com>
Subject: Re: Tkdesk Segmentation Fault
Date: Mon, 04 Nov 2002 23:09:46 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021104230332.020ce060@celine>
References: <200211050126.gA51QMD01651@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211050126.gA51QMD01651@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

At 09:26 AM 11/5/02 +0800, Peter wrote:
>Hi,
>
>In RH 7.3 the program tkdesk will not open any longer.
>
>Only the message 'Segmentation fault' shows up immediately after giving the
>command tkdesk.
>
>Why would that be and how could it be corrected?


How basic is your question, Peter? I'll assume fairly basic.

A segfault occurs when a process attempts to access a location in memory 
that has not been assigned to it by the kernel. I don't know all the 
reasons a process may segfault (or maybe I do, but in that case I don't 
know that I know), but the ones I know of are --

         a programming error in the application (for example, attempting to 
read or write to an element of an array greater than the size of the array)

         a programming error in a shared library that the application uses

         a hardware problem, typically bad RAM, that causes a memory 
address to be corrupted

         a swap-space problem, causing an error similar to the hardware 
(RAM) problem above

Each source has a distinct (and, I trust, obvious, though not trivial) 
solution.

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
