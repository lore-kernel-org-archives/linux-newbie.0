From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: fopen error number??
Date: Sun, 23 Jun 2002 08:57:40 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020623085740.A216@lnx2.w8mch.ampr.org>
References: <20020621141910.A403@lnx2.w8mch.ampr.org> <20020622111322.B1128@neutrino.particles.org>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020622111322.B1128@neutrino.particles.org>; from eathan@otenet.gr on Sat, Jun 22, 2002 at 11:13:22AM +0300
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Elias Athanasopoulos <eathan@otenet.gr>
Cc: linux-newbie@vger.kernel.org

On Sat, Jun 22, 2002 at 11:13:22AM +0300, Elias Athanasopoulos wrote:
> On Fri, Jun 21, 2002 at 02:19:10PM -0400, Hal MacArgle wrote:
> > Greetings: Just installed Slack8.0 (2.2.19) on a fresh HD, restoring
> > backed up user files only from original working HD, that was Slack7.1
> > (2.2.16).  Simple setup using A AP and N groups only..
> > 
> > Everything working fine except one that baffles me:
> > 
> > Using Mutt and Metamail, default distribution packages, I can't save
> > a jpeg attachment to a file, in order to view it.. The report is:
> > "fopen: Permission denied (errno=13"
> > 
> > I checked and compared the file permissions on all the files I could
> > think of, plus checked for the libraries, and see no difference
> > between this machine and another similar machine that saves the files
> > correctly... I have some books on C but I can't find what errno 13
> > is.
> 
> [anteater@neutrino anteater]$ grep 13 /usr/include/asm/errno.h 
> #define EACCES          13      /* Permission denied */
> #define EHOSTUNREACH    113     /* No route to host */
> 
> Check for *directory* permissions, too.
> 
> Elias
> 
	Greetings and Appreciate!!.. Problem solved and I learned a
lot more in the process..

	I double checked all the directory permissions but neglected
to check the ownership of the mail file.. Wonder why it worked with
regular mail but metamail balked? A little knowledge is a dangerous
thing??? Somehow that got by me - so we're now in business as usual..
Thanks for the prodding.

	Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
    haltec@iceweb.net | w8mch@iceweb.net.. A M$ free environment     
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
