From: Neo Wee Teck <weeteck@linux.net>
Subject: Process information?
Date: Mon, 8 Dec 2003 17:37:32 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031209013732.D92B03965@sitemail.everyone.net>
Reply-To: weeteck@linux.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

  I saw some difference in the process info when using RedHat kernel 2.4.20-8 and the kernel from kernel.org (2.4.23)

With Redhat's kernel, process show something like this

www      10186  0.0  0.1  2536 1272 ?        S    Dec08   0:01 [httpd]
www      10187  0.0  0.1  2536 1272 ?        S    Dec08   0:01 [httpd]
www      10188  0.0  0.1  2536 1276 ?        S    Dec08   0:01 [httpd]

But with 2.4.23 kernel it shows

www      5673  0.0  0.1  2536 1272 ?        S    Dec08   0:01 /usr/local/apache/bin/httpd 
www      5674  0.0  0.1  2536 1272 ?        S    Dec08   0:01 /usr/local/apache/bin/httpd 
www      5675  0.0  0.1  2536 1276 ?        S    Dec08   0:01 /usr/local/apache/bin/httpd 

Any configuration in the kernel that i missed out? I prefer the way processes are shown in Redhat's kernel but would like to use the 2.4.23's kernel.

Cheers

    Neo

_____________________________________________________________
Linux.Net -->Open Source to everyone
Powered by Linare Corporation
http://www.linare.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
