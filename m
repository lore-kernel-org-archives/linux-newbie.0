From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Kernel error
Date: Sun, 26 May 2002 11:45:46 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02052611454601.00212@unix.pa3gcu>
References: <A1F41DE771DCD5119FE30060089343500A58C4@NET-ARCH>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <A1F41DE771DCD5119FE30060089343500A58C4@NET-ARCH>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Shaun Bryant <sbryant@ThePit.org>, "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

On Saturday 25 May 2002 19:54, Shaun Bryant wrote:
> Rich,
>
> Yes I did upgrade the kernel but the system.map seems to be the same date
> (see below). Is there a way to rebuild the system map?

Correct, they are the same timestamp, however to find out wht is wrong you 
could try 'depmod -a' to see if that results in "unresolved symbols".

Sometimes the error you mention is not to be worried about.

Are you having problems with one or other funtion which does not work like it 
did in your last kernel.

>
> -rw-r--r--    1 root     root       659886 Mar 20 07:53 System.map
> -rw-r--r--    1 root     root       657708 Mar 20 06:42 System.old

> -rw-r--r--    1 root     root      1159361 Mar 20 07:53 vmlinuz
> -rw-r--r--    1 root     root      1154564 Mar 20 06:42 vmlinuz.old
>
> Shaun

--
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
