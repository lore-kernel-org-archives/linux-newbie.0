From: Chris Largret <largret@gmail.com>
Subject: Re: chmod u+s confusion
Date: Mon, 10 Apr 2006 23:28:08 -0700
Message-ID: <1144736888.9394.56.camel@localhost>
References: <1144402873.8482.14.camel@localhost>
	 <200604070842.19837.david@fierbaugh.org>
	 <1144433171.8482.21.camel@localhost>
	 <200604071548.09870.david@fierbaugh.org>
Reply-To: largret@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200604071548.09870.david@fierbaugh.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Fierbaugh <david@fierbaugh.org>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Fri, 2006-04-07 at 15:48 +0000, David Fierbaugh wrote:
> I would look at permissions of the folder you're trying to create the file in. 
> That seems like the likely candidate.
> 
> Can your script append to a file if it already exists? Should be a small 
> change to the code to do this, and might help diagnose the problem.

Found the answer on linuxsecurity.com
(http://www.linuxsecurity.com/content/view/119415/49/)

Any program that is set to run with the same privileges as its user can
be a huge security hole, so the kernel programmers have set out to
alleviate this threat a little. From my own tests, it appears to be
impossible to run a shell script (or any program through a system()
call) except as the user who is running the program/script. Any commands
processed by a prompt have their privileges downgraded to the executing
user.

I had tried my suid test with SH and Perl scripts as well as with a
quick C program. The Perl script and C program both used a system() call
to run "whoami" (in order to verify if the UID had changed due to the
use of SUID). The use of the system() call was forced to run as the
standard user, which gave the appearance of failure. It wasn't one.

The verdict: Use a compiled program and do things the right way if you
want to set the SUID bit. Avoid system() calls (even if they are only as
a test).

--
Chris Largret <http://daga.dyndns.org>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
