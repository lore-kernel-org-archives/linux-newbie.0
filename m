From: lawson_whitney@juno.com
Subject: Re: Mustek 1200UB scanner driver compilation error
Date: Mon, 13 May 2002 16:05:41 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020513.162453.134663624.4.lawson_whitney@juno.com>
References: <m3k7q927no.fsf@wobble.eth.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <m3k7q927no.fsf@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 12 May 2002, G Anna wrote:

> Dear All,
>
> I have acquired a Mustek 1200UB scanner recently.  I downloaded the
> driver for this scanner from
>
> ftp://ftp.mustek.com.tw/pub/driver/1200UB/Linux/V1.0.3/1200ub.tar.gz
>
> After unpacking the driver into a separate directory I tried to build
> it.  The README states three simple steps
>
> # ./configure
> # make
> # make install
>
> The first step went smoothly, the second step reports an error.  The
> error comes when trying to compile the xscanimage.c file.
>
> Below is the complete output of the second step.  Its rather big.  I
> just thought that it would be easier for you all to help me if you see
> the full error and warning messages.
>
> Kindly give me some pointers to solve this problem.  I am using Red
> Hat 7.1.  Also,
>
> $ uname -a
> Linux wobble 2.4.16 #4 Thu May 9 11:19:49 IST 2002 i686 unknown
>
> $ make --version
> GNU Make version 3.79.1, by Richard Stallman and Roland McGrath.
> (copyright notice snipped)
>
> $ gcc --version
> 2.96
>
> $ ls -l /usr/lib/libgimp.so
> lrwxrwxrwx    1 root     root           20 Feb 11 01:52 /usr/lib/libgimp.so -> libgimp-1.2.so.0.0.1
>
> Sincerely,
> anna
>
That looks like a missing -devel package.  With RH, you need the -devel
for each library source you try to compile refers to.  got gimp-devel?

Lawson
---oof---



________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
