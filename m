From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: A few questions
Date: Mon, 2 Dec 2002 09:26:50 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0212020923080.900-100000@athame.gmpexpress.net>
References: <200212012032.22587.Adam@Luchjenbroers.com>
 <Pine.LNX.4.50.0212010803280.1213-100000@athame.gmpexpress.net>
 <200212021626.08487.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212021626.08487.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Cc: linux-newbie@vger.kernel.org

You'd want to do more than one tar command of the form:
tar zcvf user1.tar.gz /home/user1/
tar zcvf user2.tar.gz /home/user2/
and so on.  You'd have to specify the path of user1.tar.gz like where it
was going to go and the same for the other archive files too.


Jude <dashielljt(at)gmpexpress-dot-net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
