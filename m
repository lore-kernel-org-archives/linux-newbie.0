From: vinit dhatrak <vinit.dhatrak@gmail.com>
Subject: Re: preempt_disable() as synchronization tool
Date: Sat, 10 Oct 2009 07:30:08 +0530
Message-ID: <edf0f34e0910091900v305ec56u44913503cc8689dd@mail.gmail.com>
References: <292693080910082043v74114d6dvbe3c39f166a59e1b@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=iuVe4TDasN0QZJMhdgDOTHaSPqRPua2F7XmDIhno6PI=;
        b=u76UiOCjD3mr+oz5n0MBO9OarfqqcTQvZhWWHK7dXbG9ld7mlFLWIJUFS1RVV+oaYT
         WaKrNHbw+gF7vgRH9NGFTe+r3qoRtCfvW2dexqGXeXeJlhF7rjCLTAq7++Dn1Vs90oPr
         lmDgENBvgpqi+EACba1up2rQ3Y74qLoDKS5QI=
In-Reply-To: <292693080910082043v74114d6dvbe3c39f166a59e1b@mail.gmail.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

On Fri, Oct 9, 2009 at 9:13 AM, Daniel Rodrick <daniel.rodrick@gmail.com> wrote:
> Hi List,
>
> I have few queries related to preempt_disable() and would appreciate
> any answers to it.
>
> Firstly, Does preempt_disable() disable the preemption on all the
> processors or on just the local processor?

I guess just local processor as the preempt count is maintained in
current thread_info struct. Correct me if I am wrong here.

>
> Secondly, a preempt_disable() a sufficient synchronization technique
> to guard a data that is shared only among process context code on a
> Uni-processor? And on SMP?

It is sufficient only in case of uni-processor (Actually spin_lock
also just disables preemption in case of uni-processor)

>
> Lastly, is it allowable to schedule / sleep immediately after a call
> to preempt_disable()?

No I guess kernel will panic with some error like , "scheduling while
in Atomic Context".

>
> Thanks & Best Regards,
>
> Dan
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

