From: Ray Olszewski <ray@comarre.com>
Subject: Re: C Library on Linux to write JPEGs
Date: Wed, 19 Feb 2003 09:26:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030219092037.02252d40@celine>
References: <0302191243130F.29824@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030219170358.52823.qmail@web13402.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:03 AM 2/19/03 -0800, Abhijit Vijay wrote:
>Hi All,
>
>This might be slightly offtopic, but does anyone know
>of C libraries on Linux that might be used to write
>JPEGs?

Search your system for libjpeg*. (On my Debian-Sid system, the library 
*package* name is libjpeg62  ... and there is, as usual, a corresponding 
libjpeg62-dev package with the headers and stuff ... and the library 
itself  is
/usr/lib/libjpeg.so.62 .)

I haven't used this in a couple of years ... don't even have the -dev part 
installed these days ... but my recollection is that it will do what you 
probably want.


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
