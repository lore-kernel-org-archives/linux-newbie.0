From: Axel Siebenwirth <axel@hh59.org>
Subject: Re: Unknown User/Alias 'Marc'
Date: Mon, 19 Aug 2002 12:13:31 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020819101331.GA811@diamond.ipht-jena.de>
References: <20020816.094311.134670320.14.lawson_whitney@juno.com> <OE73lmmlQ080Gxw8Zw500012266@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <OE73lmmlQ080Gxw8Zw500012266@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arthur Othieno <a_othieno@hotmail.com>
Cc: linux-newbie@vger.kernel.org

Hi Arthur!

On Fri, 16 Aug 2002, Arthur Othieno wrote:

> # Person who should get root's mail
> #root:                        marc
> 
> All I want to know is who is this user/alias marc? A quick look at the
> /etc/passwd, shadow, group, gshadow... didn't turn up any results, which
> puzzles me. Funny thing is I get mail as root fine! I am running RedHat 7.3

Well it's quite simple.

1) the alias root -> marc is commented with a "#" so this isn't in effect
	anyway.

2) if it would be active, mail would still go to user root since there is no
user marc

3) so leave it commented or replace marc with the user that you want to
	receive emails for root


Regards,
Axel
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
