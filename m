From: Peter <pfheiss@philonline.com>
Subject: TGZ Installation ProbleM
Date: Mon, 10 Mar 2003 13:43:13 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303100543.h2A5hDu11203@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>
Cc: pa3gcu@zeelandnet.nl

Hi,

Since the dawn of RH5.2 I am struggling to install tgz packed programs. I 
succeed only in 1 out 10. Usually when running configure somewhere it is 
aborted with various error messages. I am using RH7.3 now and the installation 
was made from scratch.

Now with the help of Richard, he traced the problem to the fact that the 
program configure is looking for files in /usr/local/include when in fact the 
files are in /usr/include.

There are some files in /usr/local/include, however, not as many as in 
/usr/include.

What I did now is move /usr/local/include somewhere else and make a symbolic 
link to /usr/include in usr/local/.

On the first try with 3 programs configure run flawlessly, 2 then fully 
installed and 1 somewhere aborted with error messages when running make.

Questions: Will it be alright if I fully copy or move /usr/include to 
/usr/local/include or I just stay with the symbolic linc?

Are most tgz packed programs made to be looking for files in 
/usr/local/include and if so why when installing RedHat distros the files are 
not there instead they are in /usr/include?

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
