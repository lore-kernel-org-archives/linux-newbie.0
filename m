From: Ray Olszewski <ray@comarre.com>
Subject: Re: uname -r
Date: Mon, 06 May 2002 13:38:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020506203856.00e13c50@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Petre Bandac <g38@rdsbv.ro>, linux-newbie@vger.kernel.org

At 11:30 PM 5/6/02 +0300, Petre Bandac wrote:
>yesterday I saw a slack 7.1.0 machine whose uname -r output was 
>2.4.7-greased-turkey or something like that
>
>actually, kernels can have a name of their own given by the person who 
>compiled it ?
>
>just being curious ...


Sure. It's a standard feature of the kernel Makefile. I think the variable
you set is EXTRAVERSION. I usually see it used in more useful ways than the
example you saw ... it's handy if you do a lot of kernel customizing and
need to keep track of several variants of the same base kernel. I find it
more useful to give them meaningful names ... say 2.4.7-router and
2.4.7-workstation ... but that, like many Linux-related things, is a matter
of personal preference.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
