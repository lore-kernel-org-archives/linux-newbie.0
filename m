From: joy <gracecott@sancharnet.in>
Subject: kernel error?
Date: Mon, 29 Dec 2003 22:01:40 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FF056EC.6020002@sancharnet.in>
Reply-To: gracecott@sancharnet.in, gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: linux-newbie@vger.kernel.org






Hi,

I just compiled my new 2.6 kernel and when I boot thru it, I get an 
error saying:
VFS : cannot open root device "345" or unknown-block (3,69)
OK.so I give an argument roo=/dev/hdb5 (that's my root partiton, I get 
the message
VFS : cannot open root device "hdb5" or unknown-block (0,0)
anyone with an answer?
My old kernel worked fine w/o any lilo args.
and used to refer to my hdd as (03:05) when I had it as hda.

Thanks in advance,
deadhead.










--------------------------------------------------------------------------------------------------------
A life without purpose is like a bird that never learnt to fly.......
I am the bird that regularly flies Lufthansa

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
