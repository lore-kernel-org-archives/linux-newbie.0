From: "Brian Jackson" <brian-kernel-list@mdrx.com>
Subject: Re: && - Help
Date: Mon, 30 Sep 2002 13:03:33 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020930180333.9816.qmail@escalade.vistahp.com>
References: <000901c268a7$1f1bfbf0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000901c268a7$1f1bfbf0$64fea8c0@pkrausxp> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org, hylafax-users@hylafax.org

&& means to only execute the second/third/etc. command if the previous one 
completed succesfully.
the echo is probably just toadd a blank line to make the output of this 
easier to read. 

Paul Kraus writes: 

> What does && represent? 
> 
> Here is the command that I saw it in.
> watch -n 1 "/hylafax/etc/errorstats.sh /hylafax/etc/xferfaxlog &&
> faxstat -asl && echo && tail /var/log/messages" 
> 
> Also why is the echo necessary. 
> 
> Cross Posted due to relevancy. 
> 
> 
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com 
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
