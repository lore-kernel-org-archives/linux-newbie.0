From: Eve Emshoff <seance83@yahoo.com>
Subject: Some users locked out of ssh and sftp?
Date: Tue, 1 Mar 2005 08:22:52 -0800 (PST)
Message-ID: <20050301162252.34857.qmail@web53710.mail.yahoo.com>
References: <5.1.0.14.1.20050228220147.01f4dec8@celine>
Reply-To: seance83@yahoo.com
Mime-Version: 1.0
In-Reply-To: <5.1.0.14.1.20050228220147.01f4dec8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>


This isn't making sense to me. I have users logging in
via SSH to a redhat linux box using their network
username/password. I'm able to do it as are most
others, either locally or remotely. ie:

ssh -l eve <ipaddress>
or 
sftp eve@<ipaddress>

Thus far, I've run across 1 user who can't sftp OR
SSH. He's entirely locked out, despite having the
correct username and password. He appears to be set up
the same as well the others.

Is there a file or some such I should edit and/or
check to ensure he can get access? Anything to point
me to in terms of what I can check in that he may
*not* be set up the same as everyone else?

Thanks,
Eve

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
