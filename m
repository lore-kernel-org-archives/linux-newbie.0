From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Re: Threading in linux
Date: Tue, 24 Apr 2007 16:06:33 +0530
Message-ID: <7783925d0704240336i49e918dcm4d38e9bbc0310a39@mail.gmail.com>
References: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
	 <8bd0f97a0704240308g6428f153n3bf4a2ae5518398a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=HxHoSfgnZ3xk64ku4o56BICSpx4bJc2JxH9nYBna7IlrVw9BKsKflpp8zsGejEJSuGPteG+/uIl6KYDYx0eiEVTC3Mg/Qj8jXLKB36u9hAtyT3MgKoUc40J3tGusAONkniAm4LnZqU3ypi7UNWCSzLa3QMpvFVyTI0+u7ngpXZo=
In-Reply-To: <8bd0f97a0704240308g6428f153n3bf4a2ae5518398a@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Mike Frysinger <vapier.adi@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

> > NPTL on 2.4?
>
> this can be done only if you backport the features from 2.6 that were
> added in order to make NPTL possible ... redhat has done this, but
> really it's just a waste of time ... 2.4 is dead :P

Could you hint upon the kernel features required for NPTL? May be a link?

>
> > pthreads on 2.6?
>
> i really have no idea what you mean by this ... "pthreads" is short
> for "POSIX threads" and there's no such thing as "pthreads" with
> respect to a specific code base.  NPTL is one implementation of the
> POSIX threads specification while LinuxThreads is another.
> -mike

Sorry ... I meant LinuxThreads.

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
