From: "Jinesh K J" <jineshkj.newsletters@gmail.com>
Subject: Re: /dev/mem contains physical memory addresses?
Date: Thu, 6 Jul 2006 15:19:45 +0530
Message-ID: <feb8dc070607060249r21fa8114nd06f0e733d94ec7e@mail.gmail.com>
References: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 7/6/06, Daniel Rodrick <daniel.rodrick@gmail.com> wrote:
> Hi list,
>
> I read that the /dev/mem represents the memory of the system.
>
> 1) Does that mean I can if start reading from /dev/mem, I can read any
> portion of the memory?
>
> 2) If I read at offset "n" in the file /dev/mem, would I be reading
> contents of the PHYSICAL memory address "n", or the VIRTUAL memory
> addtress "n"?
>

You'll be accessing only PHYSICAL since VIRTUAL addresses are not
unique and global. But, its possible that the physical memory that
you're accessing is a part of the virtual address space of some user
program running in the system.

Jinesh.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
