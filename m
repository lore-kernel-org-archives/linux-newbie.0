From: simon <simon.guinot@laposte.net>
Subject: Re: partitons and proper order
Date: Mon, 01 Nov 2004 00:37:18 +0100
Message-ID: <4185772E.6030106@laposte.net>
References: <41853B6B.5020903@kevino.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41853B6B.5020903@kevino.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

hello

mike wrote:
> Hello,
> I have installed linux a few times no real problems with my
> installs. But going to move some drives around and do a fresh
> install. I usually install with the below
> 
> /
> swap
> /boot
> /var
> /usr
> /home
> /tmp
> 
> I use ext3 and I am currently useing Mandrake distribution on an
> intel compatible machine with ide drives.
> 
> My question is does the order I create the partitions matter and if
> so what would be the proper order, if there is one?

the partitions order has some effects on your disk access time...
a partition at the middle of the disk will have the best access time...
it's generaly a good idea to place the swap here...
a partition at the outside of the disk will increase the speed for long 
read/write operations... /, /usr or /home may be well placed... 
depending what you intend to do with your installation...

for more informations take a look on the multi-disk howto... even if you 
have only one disk :)

simon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
