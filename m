From: lawson_whitney@juno.com
Subject: Re: (fwd) .so, .a and .o-files
Date: Thu, 15 Aug 2002 12:17:55 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020815.122115.134670320.0.lawson_whitney@juno.com>
References: <5.1.0.14.1.20020815083919.02181c50@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020815083919.02181c50@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: axel@hh59.org, linux-newbie@vger.kernel.org

On Thu, 15 Aug 2002, Ray Olszewski wrote:

> It's been so long since I used a .a libraries, I didn't recall how they
> were created. They are the old-format libraries I referred to above. They
> are kept around, at least on full-size Linux installs, mainly for legacy
> reasons. Don't use them unless you have *very* unusual requirements (I
> can't even think of an example).

In case you want to make a static executable (one that does not require
dynamic linking.  Nost distro's link /sbin/ldconfig static so you can
use it to recover when you mess up your libraries and nothing woorks,
say when you try to upgrade libc and don't know how.

Some distros keep a /bin/ash.static or other small shell for use in
rescue root floppies and initrd images.

>
> >Many thanks and my best regards,
> >Axel Siebenwirth
>
> -------------------------------------------"Never tell me the odds!"--------
> Ray Olszewski					-- Han Solo
> Palo Alto, California, USA			  ray@comarre.com
> -------------------------------------------------------------------------------

Lawson
---oops---



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
