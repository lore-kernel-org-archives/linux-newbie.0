From: Eric Bambach <eric@cisu.net>
Subject: Re: allocating disk space the fast way
Date: Sat, 14 Oct 2006 12:35:08 -0500
Message-ID: <200610141235.08715.eric@cisu.net>
References: <1154799802.1885.9.camel@Marvin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1154799802.1885.9.camel@Marvin>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mensch <bausparkasse@gmx.de>
Cc: linux-newbie list <linux-newbie@vger.kernel.org>

On Saturday 05 August 2006 12:43, Mensch wrote:
> hello list.
> i want to allocate some space for a harddisk image file.
> for now, i do it like
> $ dd if=/dev/zero of=blub.img bs=1M count=2000
> which takes some time. is there a faster way to create a huge file? it
> don't have to be zeroed.
> i've seen that e.g. azureus allocates filesize in no time. how does this
> work?
>
> thanks in advance,
> josef gosch
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

I know you already found an answer....but....

Make it sparse.

dd if=/dev/zero of=./my.image bs=1M seek=2048 count=1

-- 
Thanks,

Eric
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
