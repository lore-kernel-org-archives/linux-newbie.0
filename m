From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Thought I was mounting drive correctly, but backup failed
Date: Fri, 11 Mar 2005 18:49:36 -0500
Message-ID: <00bf01c52694$fbf85b60$4f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050311144254.02050060@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <5.1.0.14.1.20050311144254.02050060@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

>Hmmm ... have you created (touch'ed) the file /mnt/backup/connected on the 
>backup drive? If not, the script is failing to perform the backup because 
>the conditional in its if statement  (if [ -f /mnt/backup/connected ];) 
>fails. And the script has no instructions for what to do if the if test 
>fails (no "else", that is), so nothing would get logged in this case.

Oh my! Let's go with this one first. :) I copied the connected file over
from the old machine and I'll see if that solves my problems. :)

- Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
