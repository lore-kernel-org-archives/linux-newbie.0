From: Peter <pfheiss@philonline.com>
Subject: Tartar
Date: Mon, 14 Apr 2003 09:11:17 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304140111.h3E1BHi02260@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: lawson_whitney@juno.com
Cc: linux-newbie@vger.kernel.org

Hi, 

when you first mentioned tartar it was:  tar -C $1 -cOl . | tar -C $2 -xpf ,

This time you put quotations:  tar -C "$1" -cOl . | tar -C "$2" -xpf .

Which is correct.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
