From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: SU and root login don't have proper permissions
Date: Mon, 17 Jun 2002 16:20:04 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206172313.g5HNDeM19520@firebin.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

A most likely misspelled attempt to say I don't have the sort of access to the file system that is superuser status.


> I'm having a bit of a problem understanding you, partly due to your use of 
unconventional terminology (e.g., "illustriave permissions") and partly 
because "go anywhere" is a bit ambiguous. I think you mean that when you 
log in as root, or when you su to root, you don't have the sort of access 
to the file system that goes with superuser status. But I don't know if you 
mean you cannot cd to some directories, cannot open files for writing, or what.

>> If that is at least in general terms the problem, here are two things to check.

I will check this when home this evening.  The linux box is on a dial up account _through_ a windows box using Internet Connection Sharing, which obviously uses NAT.  It has a private IP address, and therefore would be immune to any attacks I would know of directly.  There is no spurious internet traffic I cannot account for.

1. is "root" still uid 0 in /etc/passwd? If not, find out what is and 
become that user (or boot into single-user mode and edit /etc/passwd). 
Consider the possibility that this was caused by a breakin, not a "backout" 
(did you mean "blackout", as in power failure?).

At this point I don't know, I really do not due much with the machine as of yet.  Trying to understand linux and getting setup to make it be a home automation server, proxy, and firewall more than anything now.

I will try to figure out how to use fsck to check this out, I know I enabled ext3 with journaling which might assist in "fixing" things, but I would be disappointed if Linux lost some files while the box was literally sitting idle for many hours over night.

What brought the problem to my attention is I wanted to run chkconfig again and was unable to do so.

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
> <
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
