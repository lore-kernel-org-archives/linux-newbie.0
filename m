From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: Reg:gcc
Date: Wed, 26 Jun 2002 14:57:45 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0206261447030.9633-100000@orthanc.lemmerling.net>
References: <F4D3DB9A18752A4F99FD880ABC5407179D15BA@ccdc-exchg.careercommunity.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D15BA@ccdc-exchg.careercommunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 26 Jun 2002, Sridhar J (june end) wrote:

> Thanks to all of you who replied promptly to my question. I would like to
> clarify one thing. When I compiled the program using gcc, I tried typing
> a.out. When that didn't work, I did a ls -l which showed me a file called
> a.out*.
> 
> Doesn't it mean that a.out is in the current directory? So why I should go
> to a parent directory as in ./a.out to execute it?

yep (a.out is in the current directory).

You just stay in the directory where a.out is located. The first dot in
"./a.out" _means_ the current directory.

If you want to try it, try a "ls -l .", you should see the content of the
current directory (output should be the same as "ls -l").


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
