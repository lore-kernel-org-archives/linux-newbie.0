From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: /dev/mem contains physical memory addresses?
Date: Thu, 06 Jul 2006 11:44:59 +0200
Message-ID: <1152179099.3084.24.camel@laptopd505.fenrus.org>
References: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
Reply-To: arjan@infradead.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On Thu, 2006-07-06 at 15:06 +0530, Daniel Rodrick wrote:
> Hi list,
> 
> I read that the /dev/mem represents the memory of the system.
> 
> 1) Does that mean I can if start reading from /dev/mem, I can read any
> portion of the memory?

depends on your kernel; several distributions apply security patches
that prevent rootkits from doing evil things in /dev/mem; with those you
can only access non-kernel memory via /dev/mem

> 2) If I read at offset "n" in the file /dev/mem, would I be reading
> contents of the PHYSICAL memory address "n", or the VIRTUAL memory
> addtress "n"?

PHYSICAL. if you want virutal you need to use /dev/kmem.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
