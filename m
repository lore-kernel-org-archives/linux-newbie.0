From: Mark Hounschell <markh@compro.net>
Subject: exported bitops for userland
Date: Mon, 22 Oct 2007 15:27:43 -0400
Message-ID: <471CF9AF.9050309@compro.net>
Reply-To: markh@compro.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have used test_and_clear_bit/test_and_set_bit calls from glibc's (kernel headers) in userland for years.
Did the kernel and glibc people decide I don't need them any more and I was foolish for using them 
to begin with? Are there replacements available?

Thanks in advance
Mark 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
