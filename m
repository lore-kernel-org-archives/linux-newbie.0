From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: how to assess occupied space
Date: Sun, 15 Sep 2002 00:40:38 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0209150039410.15231-100000@router.windsormachine.com>
References: <200209150354.g8F3sYPR007105@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209150354.g8F3sYPR007105@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Revobild / Heimo Claasen <revobild@revobild.net>
Cc: linux-newbie@vger.kernel.org

On 15 Sep 2002, Revobild / Heimo Claasen wrote:

> Is there a practical way to get a sum-up of HD space occupied by one
> dir (including subdirs) and then, especially of a package ?
>
> I'd like to weed out never used stuff and recover scarce disk place.
> Is there a good, or any, "strategy" for this ?
>
> // Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-14

du directoryname

last line there should be the total size in kilobytes

if that's too large of output, du --max-depth=0

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
