From: Ray Olszewski <ray@comarre.com>
Subject: Re: Strange Boot Behavior (cont.)
Date: Fri, 22 Aug 2003 06:18:40 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030822060650.02046eb8@celine>
References: <20030822054905.11388.qmail@web13804.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030822054905.11388.qmail@web13804.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:49 PM 8/21/2003 -0700, Christopher Swope wrote:
>Hello again,
>
>Can anyone tell me if there is an easy way to reply on-list.

It depends on your standard for "easy". What I do is a "reply to all", then 
delete the unwanted addresses by hand. I don't know any easier way to reply 
to the list.

>Several
>people have responded to my first inquiry, and I expected the
>reply-to address to be the list email, but it was their personal
>emails instead.

Are you new to Linux (or at least to Linux mailing lists)? Whether you like 
the behavior of this list or not (and please do not read this comment as my 
expressing an opinion or encouraging the start of a debate on it), it is 
fairly common, though not universal, behavior for Linux lists. Some people 
like it. Others learn to live with it. There are no other options (for 
dealing with this list, I mean).

[...]
>Now, my line of thinking is as follows.
>
>If the second drive is not installed at all, the computer boots
>normally.  This would indicate the problem stems from connecting the
>second drive.

Hard to quarrel with this (or the rest of your diagnosis, deleted here). 
Could be a BIOS problem. Could be a problem with one or the other of the 
drives. Almost surely is not a Linux or GRUB problem.

Have you tried using fdisk to make the old drive non-bootable?

In the BIOS, is your boot order something sensible?

Have you tried putting the old drive on the Secondary IDE channel? (In 
practice, this workaround may be your best bet.)

Oh, one more thing. You wrote:

>The computer can be successfully booted from a floppy boot disk.
>Then, both drives can be read from and written to.  This would
>indicate that there is nothing wrong with the Cables.

You do know, I trust, that the Linux kernel does not rely on the BIOS to 
access hard disks. So this observation **may** indicate that your BIOS is 
the source of the problem.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
