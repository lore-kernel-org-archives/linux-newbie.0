From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: about LogWatch....
Date: Mon, 21 Oct 2002 14:46:55 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02102114465501.00497@unix.pa3gcu>
References: <20021021055217.0F68.WOLFGANG127JP@ybb.ne.jp>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021021055217.0F68.WOLFGANG127JP@ybb.ne.jp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: wolfgang <wolfgang127jp@ybb.ne.jp>, linux-newbie@vger.kernel.org

On Sunday 20 October 2002 21:00, wolfgang wrote:
> Hi there.
>
> I've installed sar(sar, sa1, sa2...) command to log system resource
> usage.
> Since I have to use crontab for those sa1 and sa2 , I'm(root user) getting
>  a tons of mails from LogWatch.
> How can I make LogWatch not to send mails about sa1 and sa2 commands in
> crontab ??

Its not logwatch but crontab thats sending you messages i would think.

man crontab

Read the part right after the examples.


>
> Thank you.
> wolfgang

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
