From: jorgefm@cirsa.com
Subject: Init process and threads
Date: Wed, 29 May 2002 17:03:42 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <OF9A0DDE36.D1B35D98-ONC1256BC8.0052B374@cirsa.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi !

I have a little question about creating linux threads inside the process
init.
Is there some limitation in the clone() function when the parent id is 1?
I was trying the 'pthread_create()' call in the init process code but it
nevers returns.
The same code in a child process, in the same module after the fork(), runs
ok.
I used the linux kernel v2.4.19-pre8.

Could you CC the answer/comments to my personnal email, please?

Thanks for your comments,
Jorge Fernandez
UNIDESA

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
