From: David <shawinbox@yahoo.com>
Subject: using cygwin to compile Lunix source on Windows
Date: Mon, 25 Jul 2005 22:04:07 +0000 (UTC)
Message-ID: <loom.20050726T000352-607@post.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I got a bunch compilation errors on NT headers files when building Linux 
sources and included the cygwin header files to the path in MS Studio .NET.  
If I received the header path inclusion, then there are no errrors, but I am 
left with errors on Linux POSIX specific calls.  I could use some advice as to 
how to using cygwin without running into these errors when compiling with 
nmake in Windows XP.  

Source:
Compiled under Linux g++ version 3.2

Created a project with MS Studio .NET and tyring to compile using nmake.

In preprocessor, included c:\cygwin\usr\include -> got bunch of errors in 
windows header file
remove the above include -> got errors in pthread and PATH_MAX

-- David

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
