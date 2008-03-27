From: "Antino Kim" <antinokim@gmail.com>
Subject: What's the deal with 1/3G separation between kernel address space and user address space?
Date: Thu, 27 Mar 2008 01:02:46 -0400
Message-ID: <f8b4363d0803262202k221c8b51x2ced4d6c6832b581@mail.gmail.com>
References: <f8b4363d0803262201i514a168dk614808b2f001df3d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=kCuYFDvwmZcePkYRI1IC8pHTVlUsU/VhUnqjGXiWp3M=;
        b=TwLXMPaI4pgYSlFA3RXRVh3/+6J1V0TjrHW0BZSxQHXjhSfv79UonbiDXt+pntNsJzUaT9unE3b6rAAuOV6Txn9fGRZ7ZvJ7oEDTUv6S8QfN2aQ19AV35AivilZ5hjwMirLHVVE6PQG0JFeahvgIs4YBzEIOtt7KSvPqIA4f4WU=
In-Reply-To: <f8b4363d0803262201i514a168dk614808b2f001df3d@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,

I was looking into Linux kernel documentation, and I ran into one very
fundamental question: Why does Linux divide virtual address space into
1/3G between kernel and user address space?
Please note that I'm not asking "why 1/3G? why not 2/2G?". I was able
to find some discussion online about this matter. However, my question
is more basic - naive, some may say.

Why is there a division at all? As I understand, there occurs a
context switch between user-level process and the kernel when syscall
is made. Then why are we reserving 1G for kernel? Why isn't it
possible to give full 4G address space to the user process, and kernel
gets full 4G space when switched in?

I don't really understand the whole protection domain thing
either...(i.e., using special instruction to make certain range of
memory address visible.) I mean, sure, user process should not be able
to access kernel data structures and so on. But can't that be done
with page table (access control flags)? I mean, one of the reasons to
use virtual memory is for protecting process from each other. Why
couldn't that be directly applied for user process and kernel?

BTW, 1G for kernel means kernel should only reside within this range?
(I highly doubt it....)

For me, without clear understanding on why we need such division, the
scheme seems meaningless, and wasteful (since user space is now 1G
short). I'm sure I have a huge conceptual mess-up somewhere, but I
can't seem to figure out. Please lend me your wisdom! :)



P.S. Since we're in the topic of memory management in Linux, let me
bring in another question that I've been having difficult time with...

What is HIGH_MEM, and why is it important? How is this concept used in
Linux? I had this question since beginning of this year... It's time
to get to the bottom of it. Thank you all.



-- 
Antino Kim
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
