From: Norbert Aschendorff <norbert.aschendorff@yahoo.de>
Subject: CFS and nice values
Date: Sun, 23 Jun 2013 22:42:50 +0200
Message-ID: <51C75DCA.6090906@yahoo.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.de; s=s1024; t=1372020172; bh=P3WZ4xXPchponOfpa9DTfMOzyVuIOC4o5TdpfUzkkAk=; h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:X-Rocket-Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding; b=h7er6oC2R4ChEOuKz5rj8LxY/eK4rs9SLy8Mc5AgBeiuU1EGtSoH5btjLKak59pCmfIPcBjedQpG7XbIacEcPSASrYbk43YLm3n7sjN3LT9PF19ZZ1z4CNG3DUZ7oKT1JV6paUnddtWmrujx6LNzTQJpkVMMxl9/rkDCFxytkUQ=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, I hope I'm right on the newbie list for my issue. If not, please
direct me to the correct place :)

I currently have a hard time understanding how CFS uses the nice
values/priorities to give to some processes more processor time. If I
got it right till here (I'm reading "Linux Kernel Development" by Robert
Love), CFS always schedules the runnable process with the lowest
vruntime (the leftmost node in the rq (runqueue?) RBTree).
I think I somewhere read something (rather fuzzy, hehe) that
high-priority tasks are given a longer slice before they run.
But after gazing at the code in kernel/sched/fair.c for a while, I still
don't know how the nice value is used (e.g. where and how is the length
of the run time of the task calculated, and where does the context
switch happen?)

I'd be happy if someone could help me :)

Regards,
Norbert
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
