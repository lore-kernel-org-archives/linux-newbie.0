From: Nilesh Sahita <nksahita@softhome.net>
Subject: Problem running two domains on one Apache server
Date: 18 Jun 2003 10:25:59 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1055903157.9558.9.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I am trying to run two domains on one Apache domain.

The system config is:  RH9, Apache 2.0.40

I setup two domains - nstest1.homedns.org and nstest2.homedns.org

In Apache configuration, I create two virtual servers - the entries from
httpd.conf are:

Quote

...

NameVirtualHost *

<VirtualHost nstest1.homedns.org>
DocumentRoot "/var/www/html/test1"
ServerName nstest1.homedns.org
DirectoryIndex index.html index.php index.htm
</VirtualHost>

<VirtualHost nstest2.homedns.org>
DocumentRoot "/var/www/html/test2"
ServerName nstest2.homedns.org
DirectoryIndex index.html index.php index.htm
LogLevel debug
</VirtualHost>

End-quote

In /var/www/html/test1 and /var/www/html/test2, I have two simple
index.html files.

When I access http://nstest1.homedns.org, I serves up test1/index.html -
which is what I expected.  However, when I access
http://nstest2.homedns.org, it serves up test1/index.html instead of
test2/index.html.

I tried clearing browser cache, restarting apache but doesn't help.

Anyone got idea what could be potentially going wrong?

TIA for any pointers/help.

Regards.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
