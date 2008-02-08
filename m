From: "=?ISO-8859-1?Q?Ren=EA?=" <rene@grad.icmc.usp.br>
Subject: Re: Copy-on-Write
Date: Fri, 8 Feb 2008 00:11:15 -0200
Message-ID: <5f9618380802071811x200441bdn75a9335fea864012@mail.gmail.com>
References: <7783925d0802052149g125a6497rabf866130edbaf78@mail.gmail.com>
	 <f284c33d0802070730s7dcc2735o77fe1d655e4220cc@mail.gmail.com>
	 <20080207234612.GB22488@plankton.ifup.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        bh=VuF/+NFYc1V0OLBWfdG5hXvAU7gadXXQlDmCV38ROQc=;
        b=k7uU4uyhZQRmRvvATS4J7zFIS4eMIOVV7cgJOntu9oMkow23AVKa9yiLQ6kBO7tVcPeWEMc8kE2mfG+xS0J9ZVL/wPhQHWYpYc6ghPI7BOOOSPmMVE/rBRfNO3rCCITNt2+gN5VJFGbZGEp9MS1nYn94la34MKj6cvbi9gL2X1E=
In-Reply-To: <20080207234612.GB22488@plankton.ifup.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Kernel Newbie <linux-newbie@vger.kernel.org>

What kernel version did you get this code?

I looked at 2.6.22.1 (my kernel version) and found this piece of code:

/*
 * wake_up_new_task - wake up a newly created task for the first time.
  *
 * This function will do some initial scheduler statistics housekeeping
 * that must be done for every newly created context, then puts the tas=
k
 * on the runqueue and wakes it.
 */
void fastcall wake_up_new_task(struct task_struct *p, unsigned long clo=
ne_flags)
 {
       ......
       if (likely(cpu =3D=3D this_cpu)) {
                if (!(clone_flags & CLONE_VM)) {
                        /*
                         * The VM isn't cloned, so we're in a good posi=
tion to
                          * do child-runs-first in anticipation of an e=
xec. This
                         * usually avoids a lot of COW overhead.
                         */
                        if (unlikely(!current->array))
                                 __activate_task(p, rq);
                        else {
                                ....
                        }
                        set_need_resched();
                } else
                         /* Run child last */
                        __activate_task(p, rq);

The variable ...sysctl_sched_child_runs
_first it's not present, such as /sys relationship..... Perhaps was
removed from oldest version, anybody know about that?

Cheers;

Ren=EA
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
