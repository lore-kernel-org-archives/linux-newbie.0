From: "Raseel Bhagat" <raseelbhagat@gmail.com>
Subject: Re: Why is Linux not RTOS?
Date: Thu, 5 Apr 2007 15:41:50 +0530
Message-ID: <f68850780704050311qe9ca888tec4c255c6c1a0b3e@mail.gmail.com>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
	 <7783925d0704040605s4590d421y39ae5b13a020a8a@mail.gmail.com>
	 <ev0fpc$bc5$1@sea.gmane.org> <200704051236.29847.Tzahi.ML2@gmail.com>
	 <2d51cbf80704050305n60bec989wf3e1d1dd046a5d4d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=MsJ5oPSyVM+NgMIM27/cfjbUUghyXfeJpsLTC7EXxMvXk2gaSO4b5pVSLZxXlsVxZ3MoUse544GPndFk0W+d1dQMMwiLMANxUzIivI523QuaOp04NYnzAMqIzqCwyV7oBycolDTcPkJk68JN1rv0whHhbpgmgzgyZCdwSPm3Liw=
In-Reply-To: <2d51cbf80704050305n60bec989wf3e1d1dd046a5d4d@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org
Cc: linux-newbie@vger.kernel.org

Hi Sandeep,

On 4/5/07, sandeep lahane <sandeep.lahane@gmail.com> wrote:

>They have a paravirtualization based approach using which
> guest OSes like RTOS or other rich OSes can be run simultaneously on
> an embedded platform. These guest OSes can communicate using inter OS
> communication mechanisms. They are partitioning resources which can be
> partitioned like system RAM and resources like CPU, MMU and interrupt
> controller are virtualized since they can't be partitioned. So
> basically, what they are doing is almost totally irrelevant with this
> question, since they are not trying to make Linux a RTOS, rather they
> are making Linux and other guest OSes co-exist with RTOSes
> simultaneously. Please CMIIW.
>

I completely concur with you. And it makes lot of sense too.
For example RTLinux (Real time Linux) from FSMLabs is another such approach.
They have a micro-kernel , which is basically a core real tie\me
kernel, which sits on top of the vanilla linux kernel. This way, all
the real time tasks are handled by the Microkernel during whcih time
Linux kernel runs as an idle process. Only when no RT tasks are
present, the vanilla Linux kernel executes all the non-RT tasks.
This way, RT behaviour is accomplished without having to modify the
core Linux kernel.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
