From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Re: A few questions
Date: Tue, 3 Dec 2002 00:23:37 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212030023.37632.Adam@Luchjenbroers.com>
References: <200212012032.22587.Adam@Luchjenbroers.com> <200212021626.08487.Adam@Luchjenbroers.com> <Pine.LNX.4.50.0212020923080.900-100000@athame.gmpexpress.net>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.50.0212020923080.900-100000@athame.gmpexpress.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Monday 02 Dec 2002 11:56 pm, dashielljt wrote:
> You'd want to do more than one tar command of the form:
> tar zcvf user1.tar.gz /home/user1/
> tar zcvf user2.tar.gz /home/user2/
> and so on.  You'd have to specify the path of user1.tar.gz like where it
> was going to go and the same for the other archive files too.

Home directories are on a seperate partition, what I want to back up is the 
actual password/account list.

/etc/passwd seems to hold some of this, but it doesn't appear to show the 
actual password hashes (unless cat is programmed to replace them all with a 
'x').

-- 
"Not Hercules could have knock'd out his brains, for he had none." - 
Shakespeare

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
