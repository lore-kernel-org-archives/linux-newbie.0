From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Upgrading from 2.4.18 to 2.5.59
Date: Sat, 15 Feb 2003 15:48:01 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03021515480104.00887@unix.pa3gcu>
References: <20030215150331.1DEC84044@sitemail.everyone.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030215150331.1DEC84044@sitemail.everyone.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jose Luis Alarcon <jlalarcon@linuxwaves.com>, Eng Se-Hsieng <g0202512@nus.edu.sg>
Cc: linux-newbie@vger.kernel.org

On Saturday 15 February 2003 15:03, Jose Luis Alarcon wrote:
> --- "Eng Se-Hsieng" <g0202512@nus.edu.sg> wrote:
> >Dear all,
> >
> >I am currently running 2.4.18 (Redhat 7.3) but would like to upgrade to
> >2.5.59.
> >
> >This is because I would like to implement the SCTP transport protocol
> >which comes in the form of .patch.
> >
> >I am confused as to if I should upgrade and install the kernel before
> >applying the patch or do both together.
> >
> >Furthermore, may I use the kernel sources on this site since I can't
> >find 2.5.59 on redhat?
> >
> >Thank you.
> >
> >Eng Se-Hsieng
> >Singapore
>
>   Hello Eng.
>
>   You can do it in the two ways: first install the kernel and after apply
> patch or apply the patch to the kernel source and then compile it. But i
> think that in the second way you have a step less, cos ever after apply the
> patch you must compile again.

The first thing he should do is read /usr/src/linux/Documentation/Changes
"Eng Se-Hsieng" <g0202512@nus.edu.sg> said he is using Redhat 7.3
He WILL need to upgarde one hell of a lot of software, including;
libs, compiler and utilitys, not a trivial task.

>
>   You must know that today (february 15) kernel 2.5.61 is out. Why are you
> interested in 2.5.59?, this kernel is "old" talking in the development
> terms.


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
