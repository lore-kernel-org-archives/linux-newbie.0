From: zavandi <zavandi@gmail.com>
Subject: bash problem
Date: Tue, 1 Mar 2005 20:09:25 +0200
Message-ID: <321aa0d20503011009d1b9060@mail.gmail.com>
Reply-To: zavandi <zavandi@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I found some strange result. Here it is in its most simplified form I
can think of.

This command usually prints a few OKs, as expected:

for ((i=0; i< 100000; i++)); do if [ $RANDOM -eq 0 ]; then echo OK; fi; done

But this other command _never_ prints anything:

for ((i=0; i< 100000; i++)); do if [ $RANDOM -eq 0 ]; then echo OK;
fi; done | cat

Why?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
