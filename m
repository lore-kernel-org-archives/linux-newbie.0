From: Ray Olszewski <ray@comarre.com>
Subject: Re: SU and root login don't have proper permissions
Date: Mon, 17 Jun 2002 15:57:04 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020617154805.020ebb20@celine>
References: <200206172035.g5HKZIM18742@firebin.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200206172035.g5HKZIM18742@firebin.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org

I'm having a bit of a problem understanding you, partly due to your use of 
unconventional terminology (e.g., "illustriave permissions") and partly 
because "go anywhere" is a bit ambiguous. I think you mean that when you 
log in as root, or when you su to root, you don't have the sort of access 
to the file system that goes with superuser status. But I don't know if you 
mean you cannot cd to some directories, cannot open files for writing, or what.

If that is at least in general terms the problem, here are two things to check.

1. is "root" still uid 0 in /etc/passwd? If not, find out what is and 
become that user (or boot into single-user mode and edit /etc/passwd). 
Consider the possibility that this was caused by a breakin, not a "backout" 
(did you mean "blackout", as in power failure?).

2. Are the filesystems themselves mounting as read/write? Even root can't 
write to a read-only filesystem. You may need to boot in single-user mode, 
or even use a rescue disk, and fsck the various filesystems by hand. Even 
if the filesystems are RW, consider the possibility that the (presumed) 
blackout left them damaged.

If these don't help, please post again, this time describing the problem 
with a bit more care. Tell us what you actually try and how it fails.

At 01:41 PM 6/17/02 -0700, Alan Womack wrote:
>After suffering a backout for a few hours yesterday and a subsequent 
>reboot of the Redhat Linux machine, I have a problem.
>
>The su and root logins don't get their illustriave permissions to do the 
>necessary work on the machine.
>
>I suspect a file system error someplace, but I don't know how to have 
>redhat compare say the libraries and the permissions from the 
>installation/distro cd against what I have on the hard drive to find 
>differences.
>
>I can log in as root, but cannot go anywhere my normal user id cannot go.
>
>Thanks
>Alan
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs

--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
