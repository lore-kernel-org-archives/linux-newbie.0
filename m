From: kernel kernel <unix.hacker@gmail.com>
Subject: New System call.
Date: Sat, 6 Nov 2004 22:01:39 +0530
Message-ID: <104ee7a504110608313b809d3@mail.gmail.com>
Reply-To: kernel kernel <unix.hacker@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: newbie <linux-newbie@vger.kernel.org>

Hi All

I am planning to add a new system call, in the Linux 2.6.8 kernel. I
have made the changes.
But gnu ld is throwing the linker errors. I have properly updated all
the required header files. So compiliation is fine. I guess this
problem is because, this newly introduced symbol is not in libc.so

Please give a solution.

Thanks
Amrith
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
