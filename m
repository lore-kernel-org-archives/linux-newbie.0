From: Jeff Woods <kazrak+kernel@cesmail.net>
Subject: Re: line printer line transport
Date: Fri, 26 Sep 2003 23:16:25 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.2.1.1.0.20030926231345.02d76c40@no.incoming.mail>
References: <200309262050.h8QKo6O25459@oola.is.kpn.be>
 <200309262050.h8QKo6O25459@oola.is.kpn.be> <200309270757.40913.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309270757.40913.pa3gcu@zeelandnet.nl>
References: <200309262050.h8QKo6O25459@oola.is.kpn.be>
 <200309262050.h8QKo6O25459@oola.is.kpn.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

At 9/27/2003 07:57 AM +0200, pa3gcu wrote:
>todos < filename > newfile && cat newfile >/dev/lp0

Or even:

< filename > /dev/lp0 todos

--
Jeff Woods <kazrak+kernel@cesmail.net> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
