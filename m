From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: line printer line transport
Date: Sat, 27 Sep 2003 07:57:40 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309270757.40913.pa3gcu@zeelandnet.nl>
References: <200309262050.h8QKo6O25459@oola.is.kpn.be>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309262050.h8QKo6O25459@oola.is.kpn.be>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

On Thursday 01 January 1970 01:00, Heimo Claasen wrote:

> Thus something like 'cat filename >/dev/lp0' should go through a
> simple filter which inserts a CR in front of any LF.
> Like, 'cat <{filter-prog <filename} >/dev/lp0

Possably something like;

todos < filename > newfile && cat newfile >/dev/lp0

man todos
man fromdos

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
