From: Jim Reimer <wa5rrh@arrl.net>
Subject: Re: Debian install issue
Date: Wed, 09 Oct 2002 13:40:58 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DA4783A.3030909@arrl.net>
References: <000d01c26fbd$e4761080$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: 'James Miller' <jamtat@mailandnews.com>, linux-newbie@vger.kernel.org

Paul Kraus wrote:
> I know you can redirect the standard output with > and then the file
> name you want. But how do you also redirect the STRERR?

cmd 2>file             will leave stdout on screen and send
                        stderr to file
cmd > file 2>&1        will send both to file
(cmd > file1) 2>file2  sends stdout to file1 and stderr to file2

then there's also  'tee'  if you ever need it.

-jdr-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
