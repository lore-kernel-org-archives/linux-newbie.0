From: Petre Bandac <g38@rdsbv.ro>
Subject: Re: uname -r
Date: Tue, 7 May 2002 00:04:31 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205062104.g46L4dW09187@g38.rdsbv.ro>
References: <2.2.32.20020506203856.00e13c50@[192.168.1.23]>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2.2.32.20020506203856.00e13c50@[192.168.1.23]>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

root@k:/usr/src/linux# more Makefile
VERSION = 2
PATCHLEVEL = 4
SUBLEVEL = 16
EXTRAVERSION =

KERNELRELEASE=$(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION)


quite self-explanatory


thanks, ray




On Monday 06 May 2002 23:38, Ray Olszewski wrote using one of his keyboards:
> At 11:30 PM 5/6/02 +0300, Petre Bandac wrote:
> >yesterday I saw a slack 7.1.0 machine whose uname -r output was
> >2.4.7-greased-turkey or something like that
> >
> >actually, kernels can have a name of their own given by the person who
> >compiled it ?
> >
> >just being curious ...
>
> Sure. It's a standard feature of the kernel Makefile. I think the variable
> you set is EXTRAVERSION. I usually see it used in more useful ways than the
> example you saw ... it's handy if you do a lot of kernel customizing and
> need to keep track of several variants of the same base kernel. I find it
> more useful to give them meaningful names ... say 2.4.7-router and
> 2.4.7-workstation ... but that, like many Linux-related things, is a matter
> of personal preference.

-- 
 12:02am  up 37 min,  1 user,  load average: 0.52, 0.42, 0.36
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
