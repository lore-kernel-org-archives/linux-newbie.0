From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re: question about sys_call_table size
Date: Sat, 15 Nov 2008 12:24:51 +0800
Message-ID: <804dabb00811142024j41f1090ah71d05a19dd25b3d1@mail.gmail.com>
References: <2e422b910811111749q33b7e98av8aebd622eb9b2f7b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=JSB4yZab6ocPdXxVV94OF98ca/btWBu7zOnJVw/z9P4=;
        b=qGSDEO1AoJGiQ2qhWW1TpjD2DQstt3YqM2ADbjhZGCCQ3zXa0ic3YJ1m7fKf2IG8xp
         vYdKyvPFqUhunrbIMDf/BMdouBB4nCG1rJ7ffaVYPGBr5+49M2wawt7ATZkFM78ezzs7
         g2YtSAD8tVCva1uWj84dZNkoDcu0sSkELTAKo=
In-Reply-To: <2e422b910811111749q33b7e98av8aebd622eb9b2f7b@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-2022-jp"
To: =?BIG5?B?s6+w6qao?= <gcchen.org@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

On Wed, Nov 12, 2008 at 9:49 AM, 陳國成 <gcchen.org@gmail.com> wrote:
> Hi..
> I have two questions:
>
> 1. Does anyone ever encounter a problem that must be solved by adding
> new system calls. If yes, please briefly describe your problem.
>
> 2. If I add thousands of new system calls (say 2000) in linux kernel
> and add these new system calls into sys_call_table, will there be any
> stability or performance issues(or other concerns) on this new kernel?
> Thanks~~~

should not be a problem....but u will be overwhelmed with context
switching all the time......as every tasks is switched between
userspace/kernelspace via system call.

u will have a crawling system...unless u hardly used any of the
syscall, or having multicore CPUs, or employ some heuristics to delay
the processing of the syscalls (just like Xen), so as to combine and
execute all of them at the same time.   this is also the reason for
the motivation behind asynchronous system call....check out
kernelnewbies project site.

am i correct?

-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
