From: Aroop Maliakkal <aroop@poornam.com>
Subject: Re: The /dev/mem info please
Date: Thu, 01 Sep 2005 09:34:09 +0530
Message-ID: <43167DB9.4010409@poornam.com>
References: <3AEC1E10243A314391FE9C01CD65429B0555BC@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3AEC1E10243A314391FE9C01CD65429B0555BC@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

Hi Mukund,

For me the command is working quite fine.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Thu Sep 01@Admin#dd if=/dev/mem of=/tmp/ramfile count=1 bs=1024
1+0 records in
1+0 records out
Thu Sep 01@Admin#od -x /tmp/ramfile
0000000 0001 0000 ef6f f000 e2c3 f000 ef6f f000
0000020 ef6f f000 ff54 f000 5cd8 f000 ef6f f000
0000040 fea5 f000 e987 f000 ef6f f000 ef6f f000
0000060 ef6f f000 ef6f f000 ef6f f000 ef6f f000
0000100 09ae c000 f84d f000 f841 f000 3400 f000
0000120 e739 f000 f859 f000 3422 f000 efd2 f000
0000140 e7a4 f000 2497 f000 fe6e f000 ff53 f000
0000160 3427 f000 f0a4 f000 efc7 f000 5951 c000
0000200 000d 0000 ef6f f000 ef6f f000 ef6f f000
0000220 ef6f f000 ef6f f000 ef6f f000 ef6f f000
*
0000400 ec59 f000 9020 f000 f065 f000 6b52 c000
0000420 ef6f f000 ef6f f000 ef6f f000 ef6f f000
*
0000600 0000 0000 0000 0000 0000 0000 0000 0000
*
0000640 ef6f f000 ef6f f000 ef6f f000 ef6f f000
0000660 ef6f f000 09ae c000 ef6f f000 ef6f f000
0000700 9aa0 f000 ecf3 f000 ef6f f000 ef6f f000
0000720 ee3a f000 f0fc f000 ed00 f000 ef6f f000
0000740 0000 0000 0000 0000 0000 0000 0000 0000
*
0001540 0000 0000 0000 0000 0000 0000 0000 b701
0001560 2207 00ed 86f0 2c00 56ff 00ed 46f0 5018
0001600 8590 0015 857a 0015 0c00 0000 b7a0 2207
0001620 00ed 86f0 3c00 4eff 00ed 02f0 be02 cb8e
0001640 008e 607c b790 9105 758e 008e b700 28c8
0001660 a78f b78c 1f88 1a88 4688 a802 8487 0186
0001700 0002 0000 0048 0300 0000 80f0 0100 0000
0001720 017c f200 6003 2090 0090 0001 0000 c8e0
0001740 0c00 7c00 0001 0000 0c00 0201 0046 862d
0001760 f000 0c00 2f87 f000 0246 857a 0002 25c1
0002000
Thu Sep 01@Admin#
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Mukund JB. wrote:

>Dear all,
>
>The /dev/mem interface is a I guess represents the entire physical
>memory on the system.
>Can I read the device and get the entire physical memory without any
>problem.
>I tried this but I got error saying 
>
># dd if=/dev/mem of=phy-image
>Bad Address
>
>Can someone suggest what this error is? Can I neglect it?
>Or is there a better way to get the entire physical memory contents?
>
>Regards,
>Mukund Jampala
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>
>  
>


-- 
Regards,
Aroop Maliakkal
Software Engineer.
Poornam Info Vision Pvt. Ltd. 
http://poornam.com/ & http://bobcares.com/ 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 At a certain point in our lives, we lose control of what's happening to us, and our lives become controlled by fates. 
 That's the world's greatest lie. Whoever you are, or whatever it is that you do, when you really want something, all the 
  universe conspires in helping you achieve it.  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
