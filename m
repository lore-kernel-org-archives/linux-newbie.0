From: Haines Brown <brownh@hartford-hwp.com>
Subject: assertion failure (Ted, ext3)
Date: Wed, 28 Aug 2002 11:01:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208281501.g7SF1EC12998@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I installed ted-2.11-1.i386.rpm, but when I try to run it, get the
following error:

# Ted &
[1] 12833
# Ted: loadlocale.c:220: _nl_load_locale: Assertion `idx % __alignof__ 
  (u_int32_t) == 0' failed. 
  [1]+  Aborted                 Ted
# /usr/local/bin/Ted &
[ 1] 12836
# Ted: loadlocale.c:220: _nl_load_locale: Assertion `idx % __alignof__
   (u_int32_t) == 0' failed.
  [1]+  Aborted                 /usr/local/bin/Ted

Is this an assertion failure? I'm using ext3 file system with kernel
2.4.88-3. Can I debug it without recompiling my kernel?

Haines Brown

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
