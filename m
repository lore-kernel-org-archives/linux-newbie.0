From: "Eve Atley" <eatley@wowcorp.com>
Subject: Cannot load mysql extension; don't want to disturb mysql installed
Date: Thu, 20 Jan 2005 13:33:09 -0500
Message-ID: <006501c4ff1e$7da31cc0$500aa8c0@lanadmin>
References: <1106125343.4183.7.camel@localhost.localdomain>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1106125343.4183.7.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Linux Newbie' <linux-newbie@vger.kernel.org>


Platform: Redhat Linux Enterprise WS 3
PHP installed: 4.3.2
MySQL installed: 4.0.21
Apache installed: 2.0.46

When setting up PhpMyAdmin today, I got the error:
Cannot load mysql extension,
Please check PHP configuration

My phpinfo() shows:
'with-mysql=shared,/usr' (yes, the comma is not a mistake)
- This looks like a glitch; should I fix, and if so where?

Mysql.so was found in:
/usr/lib/php4/

My php.ini has been editted to read:
extension=mysql.so
...and I also tried:
extension="/usr/lib/php4/mysql.so"

Any clues on remedying this problem, without upgrading MySQL? I have read
the problem is solved by installing a PHP-MySQL package, but when I
attempted to do so via up2date, I was notified that a dependency was
required for a MySQL-client. But Mysql 4.0.21 is already installed and
running.

Any clues out there?

Thanks,
Eve

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
