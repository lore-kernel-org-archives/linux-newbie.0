From: Ray Olszewski <ray@comarre.com>
Subject: RE: Debian install issue
Date: Wed, 09 Oct 2002 12:23:25 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021009121954.025ce990@celine>
References: <Pine.LNX.4.44.0210091223130.6549-100000@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000d01c26fbd$e4761080$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, 'James Miller' <jamtat@mailandnews.com>, linux-newbie@vger.kernel.org

At 02:01 PM 10/9/02 -0400, Paul Kraus wrote:
>I know you can redirect the standard output with > and then the file
>name you want. But how do you also redirect the STRERR?

At least with bash, you use

         2> filename

to redirect STDERR to its own file.

You use

         > filename 2>&1

to redirect both STDOUT and STDERR to the same file (the second part, to be 
exact, redirects STDERR to STDOUT, which the first part has already 
redirected to the file).


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
