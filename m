From: simon <simon.guinot@laposte.net>
Subject: Re: promiscus mode
Date: Thu, 27 Jan 2005 14:50:19 +0100
Message-ID: <41F8F19B.9010806@laposte.net>
References: <ct4ppu$upv$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <ct4ppu$upv$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: muruganandam@softhome.net
Cc: linux-newbie@vger.kernel.org

hello

Muruganandam wrote:
> Hi all,
> 
>   How to enable the Promiscus mode in the kernel,inorder to capture the
> packets.Advance Thanks
> 
> 
> -- 
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

to put a interface into the promiscious mode... just be root and tape...
ifconfig eth0 promisc

and to unset the promiscious flag :
ifconfig eth0 -promisc

be carreful to remove this flag after usage... as it give extra job to 
the linux network stack...

simon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
