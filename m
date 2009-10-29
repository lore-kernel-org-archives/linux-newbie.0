From: Rick Brown <rick.brown.3@gmail.com>
Subject: What stops the vanialla kernel from being called an RTOS?
Date: Thu, 29 Oct 2009 12:49:32 +0530
Message-ID: <7783925d0910290019y459c67a8l6d9ad4ce0b009643@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=dPWhQFZzl/BXbQDCzxWJALfhZYsSBEBwV7xeeoAySq4=;
        b=kI9c7MrvsJr5JmM9OQ9n5TseScB3jEbbDQElPzAgdSbssAZ/mQogEAe1qZ9ZAuZjmY
         ftsBGKSamKwOg6SBiSuRQp+pebuqQdsISYEdfcCbjrSJug12djfDsPcKAjo7l+N+t7Qk
         qQ+LkTuAEKIEkQNXNwExTgt6FNYxfQl8ePb60=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi list,

I have asked this before, but some of my doubts remain. So I want to
know that when it comes down to code, what stops the plain linux
kernel from being called RTOS? Please note that I understand that
there are different Linux based patches / projects that make LInux
realtime, but I want to know about the kernel from kernel.org - what
makes it a non-RTOS?

As far as I could understand, it is dues to two factors:

1) Its use of virtual memory (because the user pages may be paged out
thus causing unpredictable delays). But what if given that the user
applications always call the "mlockall()" to lock all the pages in
memory? Is this reason then taken care of? Also , do all RTOSes do not
make use of virtual memory?

2) No specified worst case latency (which is the definition of RTOS).
I could find that there are two kinds of latencies:

a) Scheduling latency: Well, with the latest 2.6 kernel and with Ingo
Molner's O(1) scheduler, isn't this now deterministic?

b) Interrupt latency: This seems to be the main cause for which kernel
cannot be called RTOS< because a driver may hold spinlocks / disable
preemption for any amount of time?

Finally, what I could conclude from the googling was that the only
bottleneck with linux is that certain areas of code are
non-preemptible (where spinlocks are held or where interrupts are
disabled). If some how we could make entire kernel preemptible, then
it would be an RTOS. Is this right?

Lastly, isn't scheduling latency and interrupt latency contradictory?
I mean there will always be a tradeoff between the two. Any efforts to
decrease on / make it predictable will increase / make unpredictable
of the other. No?

Thanks,

Rick
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
