From: Ray Olszewski <ray@comarre.com>
Subject: Re: Finding things
Date: Fri, 02 May 2003 12:43:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030502123558.01fd7d68@celine>
References: <5.1.0.14.2.20030502122424.02b2f3f8@mail.lcsd.k12.wa.us>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.2.20030502122424.02b2f3f8@mail.lcsd.k12.wa.us>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:25 PM 5/2/2003 -0700, Dan Bentson-Royal wrote:
>I often cannot find where things are on my Linux box.
>
>What is the best way to look for something when I haven't a clue where (or 
>if) I have it? I think I saw Eric Harrison use "locate" but when I do that 
>it never finds things that I know are there. I did "man locate" and was 
>even more confused than ever.

Three possibilities, depending a bit on the nature of the "things" you want 
to find, are:

locate -- this actually checks a database that is, in normal operation, 
updated daily as a cron job. You don't say anything about your distro, 
though, so I don't know if your system maintains the locate database or not.

which -- this will find an executable that is in the PATH of the user 
running it. Try it with "which which" to see what does. Remember that an 
ordinary yser's PATH covers less ground than root's (on typical systems), 
so this command will not find some common executables unless run by root.

find -- this is the core capability, in that is searches all areas of all 
mounted filesystems that the user has read rights for, using a starting 
point the user specifies. The simplest way to use it is (as root, so you 
have access to everything)

         find / -name *filespec*

Unwrapping this a bit:

         the / says to start at the root (top) of the filesystem.
         the -name says that the next thing listed will be what to look for.
         *filespec* is a REGEX for what to look for. You can use wildcards 
like * and ? here.

For example, to find all gif files on a system, you would use

         find / -name *.gif

The man pages for locate, which, and find will tell you more. This should 
be enough to get you started, though.

BTW, I'm sorry that "man locate" confused you. But unless you say something 
about *why* you found the man page confusing, I can't do more than sympathize.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
