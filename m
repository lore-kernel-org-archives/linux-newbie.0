From: "John T. Williams" <jtwilliams@vt.edu>
Subject: Re: Is a process running ?
Date: Mon, 28 Jul 2003 06:14:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000701c3550a$41308a80$ed64a8c0@descartes>
References: <NGBBLGNMLJPKEPIFPKLHKEEFGAAA.tfletcher@netfactoriel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: tfletcher@netfactoriel.com, "Linux-Newbie@Vger. Kernel. Org" <linux-newbie@vger.kernel.org>

Something like this would do it

-------------------  pythstart.sh ----------------------
#!/bin/bash

ps -A | grep -e "[ /]python2.1\>" 1> /dev/null 2> /dev/null

if[ $? != 0]; then
    python2.1
fi

-----------------end pythstart.sh-----------------------





----- Original Message ----- 
From: "Tim Fletcher" <tfletcher@netfactoriel.com>
To: "Linux-Newbie@Vger. Kernel. Org" <linux-newbie@vger.kernel.org>
Sent: Monday, July 28, 2003 2:20 AM
Subject: Is a process running ?


>
> Hi all,
>
> i would like to write a simple shell script that checks for the existence
of a certain programme, in this case python2.1. if the
> programme is active, do nothing, if not, start it.
>
> i did think of doing a ps -A |grep python2.1, but then i have no idea how
to intergrate that in the shell script.
>
> any ideas would be very  welcome
>
> Thanks & HAND
> Tim
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
