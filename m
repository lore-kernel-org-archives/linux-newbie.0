From: Abhijit Vijay <abhijit_v@yahoo.com>
Subject: Linux Mount Partitions
Date: Fri, 25 Oct 2002 06:04:34 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021025130434.49227.qmail@web13402.mail.yahoo.com>
References: <Pine.BSF.4.44.0210250441590.3791-100000@server1.shellworld.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.BSF.4.44.0210250441590.3791-100000@server1.shellworld.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Hi All,

I had a query regarding linux mount partitions, which
I was trying to understand. I understand that Linux
mounts certain partitions by default at certain
locations. You have the kernel image which is located
at /boot (?) and the root partition /root mounted at /
But why is it that /dev/cdrom is mounted by default on
/mnt/cdrom? Why not reduce confusion and mount it on
/dev/cdrom itself? Also, what are the other partitions
that are mounted by default and their default
locations?

Thanks in advance,
Regards,
Abhijit.

__________________________________________________
Do you Yahoo!?
Y! Web Hosting - Let the expert host your web site
http://webhosting.yahoo.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
