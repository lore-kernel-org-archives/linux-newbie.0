From: Kevin Curtis <kevin.curtis@farsite.co.uk>
Subject: Getting  c/assembler listings
Date: Tue, 29 Oct 2002 12:03:13 -0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <7C078C66B7752B438B88E11E5E20E72E0EF5A3@GENERAL.farsite.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,
	I hope this question is not too technical.  When an oops message is
generated and decoded with ksymoops, how do I get an assembler listing of
the module that caused the problem so I can see where in my program the
error occurred.  The ksymoops output seems to be bytes of code offset from
the start of a function.  Do I use a switch in my makefile?  Will the
listing have offsets in it from the start of the module or the start of each
function?  Is there any correlation to line numbers in the original .c file?


Thanks

Kevin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
