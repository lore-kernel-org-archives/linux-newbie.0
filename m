From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Threading in linux
Date: Tue, 24 Apr 2007 12:33:53 +0530
Message-ID: <366312910704240003o1a003641v16558d7f17afffe6@mail.gmail.com>
References: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=jjoSzkpmJfqpGTtXA5bzfdBx2e6esPBM+piNW9VQasdKyliAqaFeQYdrbyQ6IIWpGvBuUIKtOQqMQXl+fFdkBAGaucfSy38+l3HUV5JcIYkOP72K2Ii/1Vw5MPxi6q1bpG/Qoxe70oKPSzA7wBRj86ecixdpKCClIqif6CDl03o=
In-Reply-To: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On 4/24/07, Rick Brown <rick.brown.3@gmail.com> wrote:
> Hi list,
>
> I read that the kernel does not differentiate between threads and
> processes. That means, we can say that on a Linux system, the
> threading is purely provided by user level thread libraries, right?
>
> So as long as relevant system calls do not change, it should be
> possible to run any threading library on any kernel? NPTL on 2.4?
> pthreads on 2.6?

Yes, looks to me.

HTH
~psr

>
> Rick
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>


-- 
play the game
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
