From: ichi@ihug.co.nz
Subject: Re: How to check for 0 byte file in bash script
Date: Tue, 25 Jun 2002 17:07:52 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D18A368.4FF4F4F6@ihug.co.nz>
References: <200206250004.g5P04S300842@qpbd999.quickpages.net.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Phillip Morgan <pmorgan@qpbd999.quickpages.net.au>
Cc: linux-newbie@vger.kernel.org

Phillip Morgan wrote:
> 
> How do you check if a file is 0 bytes in size in a bash script.

[ -s filename ]

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
