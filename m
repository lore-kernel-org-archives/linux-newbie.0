From: ippi <heynumbertwo@yahoo.com>
Subject: Re: how to identify filesystem type
Date: Thu, 19 Aug 2004 02:06:06 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040819090606.8446.qmail@web50007.mail.yahoo.com>
References: <20040819081300.95564.qmail@web50005.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040819081300.95564.qmail@web50005.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Sorry for the typo, the command to check a block 
device such as /dev/hda1 is:

    dd if=/dev/hda1 bs=1k count=5 | file -

Regards,

ippi


		
_______________________________
Do you Yahoo!?
Win 1 of 4,000 free domain names from Yahoo! Enter now.
http://promotions.yahoo.com/goldrush
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
