From: SVisor <svisor@lycos.com>
Subject: Re: How to add a new partition to an existing Red HAT 8
Date: Sun, 20 Feb 2005 16:20:19 +0100
Message-ID: <cva9le$vvl$1@sea.gmane.org>
References: <000701c516f7$582637c0$0db3fea9@kath.state.gov>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <000701c516f7$582637c0$0db3fea9@kath.state.gov>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

bj wrote:

...
> When ever  I use  fdisk , and choose option n ( to add a partition ) , it
> gives an error message saying that I need extended partition or I need to
> delete old partition to create a new one .
> 
> But I have 40 GB of un used space on my hard drive.

You can only have 4 partitions per disk. If you want more than that, you 
need to make one of them extended (and yes you will loose all data on 
that partition).

// Jarmo

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
