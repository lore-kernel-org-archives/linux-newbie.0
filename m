From: dave <dave@dpomeroy.com>
Subject: bash scripting
Date: Sat, 14 Aug 2004 19:12:27 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <411ED49B.5080705@dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Well I got it to run.  I browsed the web a bit and found this command 
cat -v new.sh.  That showed lots of ^M at the end of each line.  Then I 
used :set ff=unix to set the file format for unix.  It works now.  I 
don't know how the ^M's got in the file.  I wrote it on my linux box.  
Thanks everyone for the help.
Dave

-- 
Dave Pomeroy K7DNP SouthEastern Washington

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
