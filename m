From: axel@pearbough.net
Subject: Delete certain text in multiple files (sed/awk/?)
Date: Sat, 4 Jan 2003 20:53:23 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030104195323.GA15354@neon.pearbough.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

i have a little problem. There is a source tree with many subdirectories
each with its own Makefile. My compiler is gcc 3.3 which produces more
warnings that 3.2 and before. But the Makefiles all contain the -Werror flag
which constantly causes my build to fail. Then I edit the corresponding
Makefile manually.
What I'd like to do is automatically delete all occurences of -Werror
recursively in all Makefiles. I have looked at sed, awk, regular
expressions, but it all seems fairly complicated, 
so I am now hoping that maybe someone of you helpful linux users can give me
a little hint on what I need to write i.e. how a shell/perl script would
need to look like to do exactly what I need.


Thank you very much in advance,
Axel Siebenwirth
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
