From: Ray Olszewski <ray@comarre.com>
Subject: Re: HD Woes
Date: Thu, 30 May 2002 15:07:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020530145511.02091b60@celine>
References: <3CF69241.4000705@sbcglobal.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3CF69241.4000705@sbcglobal.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Linux, Newbie" <linux-newbie@vger.kernel.org>

See below.

At 03:57 PM 5/30/02 -0500, docv wrote:
>Fellow Newbie listers,
>
>I am running a dual boot (RH7.3 & WinME) box. Due to the purchase of a new 
>Digital Video Camera and the firewire board to transfer videos, I have 
>also had to purchase a new 40Gig 7200RPM HD. For some unknown reason, I 
>can not mount any partition from the new 40Gig drive under linux.
>
>I used fdisk (in dos) to format a 15 gig partition1 as my new WinME disk 
>and successfully transfered over the WinME to it (I know it was successful 
>because I can boot from that partition into WinME).
>
>When I boot into linux and attempt to mount either partition1 (as /winME) 
>or the 25gig partition2 (as /website) All I receive is an error that 
>/dev/hdb1 (or /dev/hdb2) is not a valid block device.
>
>When I installed the drive, I used a dos based installation program that 
>came with the HD. Boot from a floppy included with the drive. I thought 
>that was the problem so I booted into a dos session and used fdisk to 
>repartition the drive, still to no avail!!
>
>Any ideas on how I can solve this problem?
[very long sig block deleted]

Tell us more.

1. If you run "fdisk /dev/hdb" (as root), does it run or return an error? 
If an error, what one (exact wording)? If it runs, what does printing the 
partition table (menu choice p, I believe) show?

2. Are you certain you installed the new drive as the IDE primary slave? If 
not, it might be /dev/hdc (secondary master) or /dev/hdd (secondary slave)? 
Or something even weirder, if you have a SCSI controller?

3. Did you add entries in /etc/fstab for these drives? If so, what 
filesystem type(s) did you specify for them? If not, how are you specifying 
the filesystem type(s) when you try to mount the devices? (That is, what is 
the EXACT mount command you are issuing?)

4. If you run "ls -l /dev/hdb*", does the output look right? (If you don't 
know, include it in COMPLETE form in your followup posting.)

5. Is it possible that your kernel does not include (either compiled in or 
as a module) support for whatever firesystem type the two new partitions 
are? (Are you using a stock or a custom kernel? Someone who knows the 
specifics of Red Hat better than I do will have to comment on what 
filesystem types are supported, and which way, by out-of-the-box RH kernels.)


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
