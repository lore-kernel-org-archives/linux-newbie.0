From: sumit kalra <i_am_sumit_kalra@yahoo.com>
Subject: Re: process priority
Date: Mon, 18 Oct 2004 09:29:10 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041018082910.56565.qmail@web61001.mail.yahoo.com>
References: <4173756E.4040501@fluent.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4173756E.4040501@fluent.co.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Girish A Joshi <gaj@fluent.co.in>
Cc: linux-newbie@vger.kernel.org

Hi,

You can use the 'nice' utility (man nice). To change
the priority of a process programatically, you can use
the nice() function (man 2 nice).

Regards,
Sumit

 --- Girish A Joshi <gaj@fluent.co.in> wrote: 
> can i set higher priority for a process in RHL 8.0.
> If yes, then how to go about it?
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
>  


	
	
		
___________________________________________________________ALL-NEW Yahoo! Messenger - all new features - even more fun!  http://uk.messenger.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
