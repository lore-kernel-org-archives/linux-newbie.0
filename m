From: Christopher Swope <swopecr@yahoo.com>
Subject: Re: Strange Boot Behavior (cont.)
Date: Fri, 22 Aug 2003 08:22:09 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030822152209.4250.qmail@web13807.mail.yahoo.com>
References: <5.1.0.14.1.20030822060650.02046eb8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030822060650.02046eb8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

> 
> It depends on your standard for "easy". What I do is a "reply to
> all", then 
> delete the unwanted addresses by hand. I don't know any easier way
> to reply 
> to the list.

I would consider that an easy solution.  Thank you.
 
> Are you new to Linux (or at least to Linux mailing lists)? Whether
> you like 
> the behavior of this list or not (and please do not read this
> comment as my 
> expressing an opinion or encouraging the start of a debate on it),
> it is 
> fairly common, though not universal, behavior for Linux lists. Some
> people 
> like it. Others learn to live with it. There are no other options
> (for 
> dealing with this list, I mean).

Not that new that the former, but fairly new to the latter.  I just
thought it was considered somewhat rude to reply to someone off-list.
 
> Hard to quarrel with this (or the rest of your diagnosis, deleted
> here). 
> Could be a BIOS problem. Could be a problem with one or the other
> of the 
> drives. Almost surely is not a Linux or GRUB problem.

Well, that's pretty much answer's my question.

> Have you tried using fdisk to make the old drive non-bootable?

Yep.

> In the BIOS, is your boot order something sensible?

Depends on what you call sensible.  The options are limited, but I
have chosen the best one from those available.

> Have you tried putting the old drive on the Secondary IDE channel?
> (In 
> practice, this workaround may be your best bet.)

I didn't.  Can one put a hard drive and CDROM on the same channel?  I
thought that that was not advised.

> Oh, one more thing. You wrote:
> 
> >The computer can be successfully booted from a floppy boot disk.
> >Then, both drives can be read from and written to.  This would
> >indicate that there is nothing wrong with the Cables.
> 
> You do know, I trust, that the Linux kernel does not rely on the
> BIOS to 
> access hard disks. So this observation **may** indicate that your
> BIOS is 
> the source of the problem.

Actually, I suspected that, but I wasn't sure.  (This is the newbie
list :-)).

My initial hunch was that it was either the BIOS or GRUB.  I had to
do a differential diagnosis, and I had better luck making sure there
was nothing wrong with GRUB than making sure there was nothing wrong
with the BIOS.  If it was not already obvious, I don't have much
confidence in the BIOS.  (The computer was an inherited piece of crap
that I wanted so I could play around with Linux).  

So if you could let me know about that CDROM/Hard drive being on the
same channel question, I would appreciate it.  Other than that, we
can  consider this issue resolved.

Thanks again for you help,
Christopher
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
