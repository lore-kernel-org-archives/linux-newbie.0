From: James Miller <jamtat@mailsnare.net>
Subject: Re: getting a valid display under Debian
Date: Wed, 12 Nov 2003 06:54:59 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0311120631140.3176@homenet>
References: <5.1.0.14.1.20031111121913.01fa3d58@celine>
 <Pine.LNX.4.58.0311111846120.3176@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0311111846120.3176@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>

I found something on the web concerning directing STDERR to a file at
http://www.tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html .  I'll post the
relevant segment here for the benefit of other newbies who may not know
what it means or how to do it, and also in hopes that it may help me
remember how.  Excerpt follows:

------------------------------------------------------------
3.3 Sample: stderr 2 file

This will cause the stderr ouput of a program to be written to a file.

        grep da * 2> grep-errors.txt

Here, a file called 'grep-errors.txt' will be created and it will contain
what you would see the stderr portion of the output of the 'grep da *'
command.
---------------------------------------------------------

Issuing "startx 2> xerrs.txt" at the command line seems to have worked for
me - i.e., it generated a file with some content (other things I tried,
guessing at the right text to type, generated files, but the files had no
content).

In any case, here is the content of the xerrs.txt file that resulted:

-------------------------------------------------------------------
X: warning; process set to priority -11 instead of requested priority -10

This is a pre-release version of XFree86, and is not supported in any
way.  Bugs may be reported to XFree86@XFree86.Org and patches submitted
to fixes@XFree86.Org.  Before reporting bugs in pre-release versions,
please check the latest version in the XFree86 CVS repository
(http://www.XFree86.Org/cvs)

XFree86 Version 4.2.1.1 (Debian 4.2.1-13 20031030071229
root@newraff.debian.org) / X Window System
(protocol Version 11, revision 0, vendor release 6600)
Release Date: 18 October 2002
	If the server is older than 6-12 months, or if your card is
	newer than the above date, look for a newer version before
	reporting problems.  (See http://www.XFree86.Org/)
Build Operating System: Linux 2.4.22-rc2 i686 [ELF]
Module Loader present
Markers: (--) probed, (**) from config file, (==) default setting,
         (++) from command line, (!!) notice, (II) informational,
         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/XFree86.0.log", Time: Fri Jun 20 01:41:55 2003
(==) Using config file: "/etc/X11/XF86Config-4"
----------------------------------------------------------------

That doesn't seem particularly helpful to me, but it may hold some hidden
meaning for Ray and others trying to help out with this problem.

I also note the XFree86.0.log file in /var/log.  Could that also contain
something relevant to diagnosing the problem?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
