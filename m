From: Ray Olszewski <ray@comarre.com>
Subject: Re: boot problem
Date: Mon, 02 May 2005 09:08:42 -0700
Message-ID: <4276508A.5030409@comarre.com>
References: <427617F5.1030307@arrakis.es> <4276443B.6020003@comarre.com> <42764699.7030100@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <42764699.7030100@arrakis.es>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbies <linux-newbie@vger.kernel.org>

Andrew wrote:
> Ray Olszewski wrote:
> 
>> It's difficult to say what your problem is from this sketchy a 
>> description, but the likely place to start tracking it down is by 
>> looking at your logs.
[...]
> I shall do as you describe. Meanwhile, please note my reply tp Joy's 
> suggestion: /sbin/init does not exist. Also, the kernel change made no 
> difference.

Don't bother with any of what I suggested until you deal with "the case 
of the missing init". That is your proximate problem .. though a problem 
that basic is a warning that something really major may have gone wrong 
in your upgrade.

init is the basic, core application that keeps everything running in 
userspace; after the kernel itself, it's the most essential thing a 
system runs. It's a program, and you can't "create" it the way you would 
a script; you need to (re-)install it from your Slackware install CD or 
floppy. (In Debian, init is in the package "sysvinit"; some Slacker will 
need to tell you the name of the corresponding Slackware package.)

First, though, please double-check the "does not exist" part. How did 
you check this? There are several ways, but any other then "ls -l 
/sbin/init*", done as root, might provide a false negative. And as part 
of the check, make sure the root filesystem that's being mounted is the 
drive and partition you expect it to be ("df" will check this for you) 
and that no other partition is being mounted on /sbin ("df" will tell 
you that too).

ALso ... this is a real long shot ... take a moment to make sure init 
isn't just in the wrong place. "find / -name init" (run as root) is the 
most reliable way to turn up a copy of init that was installed in an 
unusual location.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
