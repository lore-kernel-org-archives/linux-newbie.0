From: whitnl73@juno.com
Subject: Re: commport settings
Date: Tue, 31 Dec 2002 15:11:15 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021231.151212.134684296.0.whitnl73@juno.com>
References: <200212310626.gBV6QNq18496@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212310626.gBV6QNq18496@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: hammer@revobild.net
Cc: linux-newbie@vger.kernel.org

On 31 Dec 2002, Heimo Claasen wrote:

> A propos ifup/pon/p-pon, Lawson:
>
> It is "ifup pppN" (and correspondingly), thus not "ifconfig.."
>
> -heimo

Well, then, try putting your modem init string and dial command
in /etc/sysconfig/network-scripts/chat-ppp (Mandrake), like so:

"" "<modem init strine>" "OK" "<modem dial strine>"

prepend it to the file if it is there, or create it if it is not.

Once you have run the setserial command, the IRQ is not the issue,
but the modem won't dial until somebody tells it to.

Lawson

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
