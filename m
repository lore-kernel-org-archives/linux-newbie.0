From: SVisor <svisor@lycos.com>
Subject: Re: Create files with specific sizes?
Date: Sat, 18 Dec 2004 12:05:17 +0100
Message-ID: <cq12te$i92$1@sea.gmane.org>
References: <41BEA9C4.4050700@lol.ba> <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org> <cpmcg0$3e1$1@sea.gmane.org> <41BF3700.9040909@ieee.org> <cprlk8$gpo$1@sea.gmane.org> <41C34C6D.2030306@ieee.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41C34C6D.2030306@ieee.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Simon Valiquette wrote:

...
>>>> I wanted a file of garbage, not zeroes.
>>>> So I tried: dd if=/dev/random of=file bs=1k count=1024
...
>   You have read and written 1024 partial blocks (ie. not complete). 
> Why?  I don't know.
> 
>   You did'nt say if the produced file is always the same size, or 
> differents but always bigger (or smaller) than 4K?  Please give the 
> exact value(s) as it can hint at what the problem is.  I have the 
> impression that you get only 4 bytes per block readed.  You can 
> experiment with different values to try to find a patern.

The size varies. Did a few test: 2843..3815..7414 bytes.
Biggest with: bs=512 count=1024x2.
Others with: bs=1024 count=1024 (only the smallest and biggest listed).

>   Also, check if the produced file really is random data.

It looks random alright.

>   Try "cp /dev/urandom /tmp/file.cp" and type CTRL-C after waiting a 

/dev/urandom works. Its /dev/random that does not.

Did: "cp /dev/random file" and it did block (as expected) until I 
aborted it (31299 bytes). It seems that dd gives up after a while.

...
>   By curiosity, try this and report the exact file size produced (and 
> check if it is random data).
> 
> dd if=/dev/urandom of=/tmp/file.cp bs=1 count=1024x1024

Well it did produce: 1048576 bytes of random data. As expected.

dd if=/dev/random of=/tmp/file.cp bs=1 count=1024x1024

Does block dd (as it waits for more values), as expected (got bored and 
aborted it, result 52381 bytes). The problem just occurs with 
/dev/random and blocksizes bigger than 1.

Tried: bs=512 count=1024x2 - got 7414
Tried: bs=512 count=2      - got 680

...
>> But the file still is just ~4k. Maybe a bug?
...
> more.  You did'nt even said which Linux distribution you are using, so 

Once it was SuSE 8.1 (or 8.2 I do not remember). dd is version 4.5.8. 
kernel is build by SuSE ( 2.4.20-4GB-athlon ).

> with that little information I can't help much.  By the way, I can't 
> reproduce your problem.

Well nothing to loose sleep over. I was just suprised of the result. 
Anyway this computer is due an upgrade. Did for fun test this on another 
(home built) system with dd version 5.2.1. There it worked as expected, 
  blocked until I aborted it (378 bytes). The low count is probably 
because I accessed that computer remotly with ssh (no mouse motion that 
provides seed to /dev/random). So this "problem" is probably solved by 
upgrading dd.

Thanks for your time.

// Jarmo

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
