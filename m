From: "Lee Chin" <leechin@mail.com>
Subject: poll system call
Date: Thu, 15 May 2003 13:37:42 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030515183742.52798.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

I couldnt find an answer to this in the man pages... so here goes

If I want to wait on a file descriptor being available for both reading and writing at the same time, can I have two entries in the pollfd array for the same file descriptor, one with a POLLIN flag and the other with a POLLOUT flag set?
I tried a simple program and it worked, but I dont know if that is the correct API usage

Thanks
Lee
-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
