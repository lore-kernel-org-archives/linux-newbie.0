From: askb <askb23@gmail.com>
Subject: Re: preempt_disable() as synchronization tool
Date: Sat, 10 Oct 2009 10:16:52 +0530
Message-ID: <1255150012.7925.6.camel__39334.5653349117$1255150446$gmane$org@linux-k65f.site>
References: <292693080910082043v74114d6dvbe3c39f166a59e1b@mail.gmail.com>
	 <edf0f34e0910091900v305ec56u44913503cc8689dd@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=Id8ZwMXFmsV0t3G+ofB6PNZVPrH3BSlhc1EzaXSI35M=;
        b=rmN7NTHRRHCMDMIw4cyU4n56fN0Op5Wt6nrxHVsH0Kv0sAeMcwmStK9z55AnaH7icg
         fWbduwohwpNjNU3zNwBTHXh29FtaN36WcN1JZZEW/OUbwF48R4Y88AMMOTfBivAfBYaN
         +dvjx1bAAgmDyLm9immfqDZ/VYfHfobNh61XE=
In-Reply-To: <edf0f34e0910091900v305ec56u44913503cc8689dd@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: vinit dhatrak <vinit.dhatrak@gmail.com>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>


> >
> > Lastly, is it allowable to schedule / sleep immediately after a call
> > to preempt_disable()?
> 
> No I guess kernel will panic with some error like , "scheduling while
> in Atomic Context".

Sorry, I somehow missed out reading this. Can you let me know why its
not possible to schedule within preempt_disable() and preempt_enable()?
From the code the schedule functions starts by disabling preemption?
Thanks in advance. - Anil

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
