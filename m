From: Eric <eric@cisu.net>
Subject: Re: kernel error?
Date: Thu, 1 Jan 2004 15:59:17 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401011559.17882.eric@cisu.net>
References: <3FF056EC.6020002@sancharnet.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FF056EC.6020002@sancharnet.in>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: gracecott@sancharnet.in
Cc: linux-newbie@vger.kernel.org

On Monday 29 December 2003 10:31 am, joy wrote:
> Hi,
>
> I just compiled my new 2.6 kernel and when I boot thru it, I get an
> error saying:
> VFS : cannot open root device "345" or unknown-block (3,69)
> OK.so I give an argument roo=/dev/hdb5 (that's my root partiton, I get
> the message
> VFS : cannot open root device "hdb5" or unknown-block (0,0)
> anyone with an answer?
> My old kernel worked fine w/o any lilo args.
> and used to refer to my hdd as (03:05) when I had it as hda.
>
 Go through make menuconfig again, (or the kernel config you used) and make 
sure you have support compiled in (not as a module (M) ) to the kernel for 
both your hard drive controller and the filesystem you are mounting as your 
root fs. ex. if your root FS is reiserfs, its imperiive you compile in 
reiserfs support. 
-------------------------
Eric Bambach
Eric at cisu dot net
-------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
