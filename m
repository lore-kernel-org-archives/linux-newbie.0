From: "Eve Atley" <eatley@wowcorp.com>
Subject: Delete /home/shared Samba directory; need better SSH solution!
Date: Wed, 9 Feb 2005 10:53:17 -0500
Message-ID: <010a01c50ebf$79999d60$260aa8c0@lanadmin>
References: <20050203213557.GA868@lnx2.w8mch.ampr.org>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <20050203213557.GA868@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


We have people remotely SSH into our box from our overseas branch in India,
and I didn't want to create a home directory for every user at that branch.
So, I plopped them into /home/shared so they could view our network shares,
and therefore gain access to the folders for which they had permission
(having set up groups and put each user into a group). Yesterday, I ended up
deleting our Samba shares directory (/home/shared) because I was attempting
to get rid of a user; Linux prompted me if I wanted to get rid of that
user's files, and I hit ok without thinking, thereby wiping out most of our
network.

I'm slowly but surely restoring everything, but I'm wondering how to
approach remote SSH a bit more safely. I was thinking of having 1 SSH user
only for our users to work with.

Let me know if you require more information. OS is RedHat Linux 9, soon to
be upgraded to RH Enterprise WS 3.0.

- Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
