From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: fopen error number??
Date: Sat, 22 Jun 2002 11:13:22 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020622111322.B1128@neutrino.particles.org>
References: <20020621141910.A403@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020621141910.A403@lnx2.w8mch.ampr.org>; from haltec@iceweb.net on Fri, Jun 21, 2002 at 02:19:10PM -0400
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hal MacArgle <haltec@iceweb.net>
Cc: linux-newbie@vger.kernel.org

On Fri, Jun 21, 2002 at 02:19:10PM -0400, Hal MacArgle wrote:
> Greetings: Just installed Slack8.0 (2.2.19) on a fresh HD, restoring
> backed up user files only from original working HD, that was Slack7.1
> (2.2.16).  Simple setup using A AP and N groups only..
> 
> Everything working fine except one that baffles me:
> 
> Using Mutt and Metamail, default distribution packages, I can't save
> a jpeg attachment to a file, in order to view it.. The report is:
> "fopen: Permission denied (errno=13"
> 
> I checked and compared the file permissions on all the files I could
> think of, plus checked for the libraries, and see no difference
> between this machine and another similar machine that saves the files
> correctly... I have some books on C but I can't find what errno 13
> is.

[anteater@neutrino anteater]$ grep 13 /usr/include/asm/errno.h 
#define EACCES          13      /* Permission denied */
#define EHOSTUNREACH    113     /* No route to host */

Check for *directory* permissions, too.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
