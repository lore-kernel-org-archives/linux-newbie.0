From: Haines Brown <brownh@hartford-hwp.com>
Subject: permission for alias file
Date: Mon, 6 Jan 2003 11:52:58 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301061652.h06GqwTo000410@hartford-hwp.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

When I use /etc/aliases for single address, it works ok (as I'm now
doing), but if there is a pointer to a file of addresses, it fails
because of permisions. 

For example, in /etc/aliases, I have a pointer to 

    test: :include:/home/brownh/aliases/test.aliases

But when I use it (after upgrading to RH 8.0), I get:

     ----- The following addresses had permanent fatal errors ----- 
  :include:/home/brownh/aliases/test.aliases
    (expanded from: <test@hartford-hwp.com>)

     ----- Transcript of session follows -----
  550 5.2.4 :include:/home/brownh/aliases/test.aliases... Cannot open
    /home/brownh/aliases/test.aliases: Permission denied 

Bothe the aliases directory and the test.aliases file are rwxrwxrwx
(wide open for test purposes). 

Haines Brown

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
