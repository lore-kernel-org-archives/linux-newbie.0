From: "William Stanard" <wstanard@palmertrinity.org>
Subject: vsftp permissions
Date: Mon, 01 Mar 2004 14:08:44 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <fc.004c4e000051a541004c4e000051a541.51a5db@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm running Red Hat 8.0 (2.4.18-14). After consulting the usual suspects
(Learning RH Linux, Running RH Linux, and Apache, the definitive guide)
I've hit a blank wall on using vsftp to update and add files to my httpd's
document root (/var/www/html, as defined in httpd.config). 

Unless I am root, I do not have write permission to that directory. I
don't mind reading to find the answer, but I seem to be missing a basic
truth about connecting to the Linux box (via vsftp over a 10.x.x.x LAN) to
update our web server. 

Do I create another directory and change the httpd.conf file? 

I really don't want to have to use a public_html directory and
http://www.domain.com/~username as an address.

Bill


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
