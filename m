From: whitnl73@juno.com
Subject: Re: Tartar
Date: Sun, 13 Apr 2003 21:33:37 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030413.221707.8.0.whitnl73@juno.com>
References: <200304140111.h3E1BHi02260@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304140111.h3E1BHi02260@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pfheiss@philonline.com
Cc: linux-newbie@vger.kernel.org

On Mon, 14 Apr 2003, Peter wrote:

> Hi,
>
> when you first mentioned tartar it was:  tar -C $1 -cOl . | tar -C $2 -xpf ,
>
> This time you put quotations:  tar -C "$1" -cOl . | tar -C "$2" -xpf .
>
> Which is correct.
>
> Regards
>
Well, IIRC the first version won't work if the directory name contains
spaces.  That's why I changed it.  Guess I'll have to start versioning
it.

#!/bin/sh
## copy a directory or partition
## tartar version 0.0.3 Lawson Whitrney <whitnl73@juno.com>
## 13 April 2003 	Use, distribute or change at your own risk.
tar -C "$1" -cOl . | tar -C "$2" -xpf -

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
