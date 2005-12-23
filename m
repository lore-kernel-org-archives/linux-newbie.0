From: Andrew <ald2@arrakis.es>
Subject: Re: kernel update fiasco (depmod)
Date: Fri, 23 Dec 2005 20:58:54 +0100
Message-ID: <43AC56FE.9090302@arrakis.es>
References: <43ABBF61.5080708@arrakis.es> <200512230943.15725.eric@cisu.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200512230943.15725.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Eric Bambach wrote:

>Your machine is running out of memory and the command is being killed by the 
>OOM killer. 32MB is quite slim nowadays and if you dont have a distribution 
>BUILT for low memory conditions you could experience this. I recommend 
>increasing your swap file (or creating one!).
>
>  
>
Spot on. Cheers.

Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
