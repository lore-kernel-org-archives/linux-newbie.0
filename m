From: Ray Olszewski <ray@comarre.com>
Subject: Re: RAM and swap partition
Date: Sun, 08 Dec 2002 07:58:45 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021208075330.020a30f0@celine>
References: <20021208002415.24931.qmail@web11406.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <MSGID_110=3a301=2f11_3df34b71@linuxnet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:15 PM 12/8/02 +0000, Rolf Edlund wrote:
>Originally to: james niland
>
>
>  jn> I know some people who run happily without a swap at all.
>
>How low RAM can I use, without running a swap ? Can I for example do it on 
>a 486
>with 4 MB RAM ?


The way you ask this question, it has no real answer. How little memory a 
system can run with depends on what tasks it is doing. And the choice of 
CPU is pretty much irrelevant to this question (its only slight relevance 
is in the smaller size of CPU-specific kernels).

That said ... running any sort of Linux system in less than 8 MB of real 
(not swap) RAM poses special challenges ... most modern distros can't even 
install on such systems (only Slackware, I think, still offers a "low 
memory" install option) and you won't be able to do much with such a 
system. In practice, the smallest systems I've ever run without swap were 
486s with 16 MB of RAM, and that was for special purpose systems like 
routers. While these days I routinely run my workstations without a swap 
partition, they have at least 256 MB of RAM.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
