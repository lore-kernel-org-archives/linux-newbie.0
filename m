From: "Anna G. Zapata" <azapata@du.edu>
Subject: setting my path
Date: Mon, 08 Sep 2003 10:35:18 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <HBEJLOFMLEPBMAAEFNFDKEHGCBAA.azapata@du.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>

Hello,

I am running Red Hat 8.0.  When I run ifconfig as a user, I cannot see what
the IP address is of my box.  However, when I switch to being a root user
(su -) and run ifconfig, I can see the IP address.  How do I set my $PATH so
I can run ifconfig as a regular user?  Or is this possible?

Here is the user path:

-bash: /usr/local/bin:/bin:/usr/bin:/usr/X11R6/bin:/home/azapata/bin

Root path:

-bash:
/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin/X11:/u
sr/X11R6/bin:/root/bin

Let me know if I am missing any useful information.

Thanks.

Anna Zapata

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
