From: "Jonathan Kallay" <yoni@kallay.net>
Subject: gcc version conflict
Date: Thu, 9 Jan 2003 22:30:41 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00f901c2b858$a725cb60$6400a8c0@00arc>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,
  I'm trying to compile the kernel module for some NVidia drivers.  I'm
getting an error message saying that I'm compiling a module with a different
version of the compiler than the one used to compile the kernel (gcc 2.95.4
is what's installed; the kernel version is 2.2.20 and at one point I was
able to check the compiler version that compiled it but I can't remember how
I did it).  What's the best way to work around this problem?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
