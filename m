From: Mensch <bausparkasse@gmx.de>
Subject: allocating disk space the fast way
Date: Sat, 05 Aug 2006 17:43:22 +0000
Message-ID: <1154799802.1885.9.camel@Marvin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie list <linux-newbie@vger.kernel.org>

hello list.
i want to allocate some space for a harddisk image file.
for now, i do it like
$ dd if=/dev/zero of=blub.img bs=1M count=2000
which takes some time. is there a faster way to create a huge file? it
don't have to be zeroed.
i've seen that e.g. azureus allocates filesize in no time. how does this
work?

thanks in advance,
josef gosch

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
