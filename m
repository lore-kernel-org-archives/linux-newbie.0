From: whitnl73@juno.com
Subject: Re: rpm description
Date: Thu, 2 Jan 2003 15:58:33 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030102.162659.134684296.0.whitnl73@juno.com>
References: <200301030832.24656.genright@paradise.net.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200301030832.24656.genright@paradise.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: genright@paradise.net.nz
Cc: linux-newbie@vger.kernel.org

On Fri, 3 Jan 2003, glenn wrote:

> Im using Mandrake 9. Have been playing with rpm and urpmi a bit.
>
> It would seem that most RPM files have a little description of their contents
> in each. is there an option or method to read these descriptions from the
> console. I've had a look thru the man pages and am just getting more
> confused.

for a package already installed:
rpm -qi <package name>

for a oackage not yet installed:
rpm -qip <filename>

Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
