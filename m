From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: debugging a Segmentation fault
Date: Thu, 7 Oct 2004 02:43:50 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0410062117530.13932-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I develop a monte-carlo code written in standard C. I recently decided to
"add features" to the previous stable version and now the code aborts with
a Segmentation fault. I suspect the code is executing different parts of
the code before crashing, on different runs (and therefore crashing at
different points?).  There is no core dumped either.

Can I discover which source-line caused the program to abort (or get
information about which function it was, etc.), or trap the signal 
within the code and print out details -- how? 

Please excuse me if this post is off-topic for this list -- can some one
please point me to a list where such questions are not, otherwise/as well? 


Thanks! 

-K



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
