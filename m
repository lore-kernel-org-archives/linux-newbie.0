From: whitnl73@juno.com
Subject: Re: commport settings
Date: Sun, 22 Dec 2002 22:23:11 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021222.222557.134684296.3.whitnl73@juno.com>
References: <200212230108.gBN18368001576@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212230108.gBN18368001576@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: hammer@revobild.net
Cc: linux-newbie@vger.kernel.org

On 23 Dec 2002, Heimo Claasen wrote:

...
> I could not find any means, with "linuxconf" for instance, to have the
> system accept the new setting. Only - restrictedly efficient - measure
> is doing "setserial /dev/ttyS3 port 0x02e8 irq 7".
>
Ray has already covered most of this.  One little clarification:

The settings by setserial are all keyword and optional, so you need only
say

setserial /dev/ttyS3 irq 7

port 2e8 is the default for that device.
>
> // Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-12-22
> The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

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
