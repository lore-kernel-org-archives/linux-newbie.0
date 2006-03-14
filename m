From: James Miller <jamtat@mailsnare.net>
Subject: pdf inflation mystery
Date: Tue, 14 Mar 2006 11:26:43 -0600 (CST)
Message-ID: <Pine.LNX.4.64.0603141107250.4459@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Dunno if this is the right place to ask since it may not be a strictly 
Linux issue, but lemme try.  I use ps2pdf a fair amount since I have no 
printer attached to my system but occasionally want to print something 
from the web, for example.  In those cases, I print to a postscript file, 
convert the file to pdf using ps2pdf, then send it off to my wife at work 
for printing.  Recently I undertook a project to make up some booklets, 
and was investigating how to print multiple pages onto a single sheet 
(what is called "4up" in my case) for this.  With alot of puzzling, 
experimentation and a bit of help on the OOo forums, I was able to do this 
using psutils.  The resulting file was, of course, postscript.  It's 
actually a fairly lengthy little booklet--about 100 pages.  When I went to 
convert it to pdf I was amazed at how much the size inflated--about 30 
times!  A 1.5 MB ps file became a 40 MB pdf.  I never noticed such a huge 
increase in size in converting ps to pdf in any previous attempt 
(generally with smaller files).  So, I'm just wondering: is it typical for 
ps files to balloon to such proportions when converting to pdf?  Or is 
there maybe something unusual about my file?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
