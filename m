From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: Perl
Date: Wed, 4 Dec 2002 11:24:42 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212041924.gB4JOJG28579@firebin.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

> How can I make this assignment in one statement. I know its going to be
something easy.
$path=$5;
$path=~s/ /\\ /g; <

won't 

$path=$5=~s/ /\\ /g;

work?  maybe have to put () around the $5=~, but I think it will work without that.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
