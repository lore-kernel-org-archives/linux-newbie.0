From: Ray Olszewski <ray@comarre.com>
Subject: Re: Strange problem
Date: Fri, 17 Jan 2003 10:36:49 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030117102213.021b4900@celine>
References: <20030116165541.8028.qmail@webmail30.rediffmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030117160653.9480.qmail@web1.mailbox.hu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Newbie <linux-newbie@vger.kernel.org>

You really haven't told us enough for good diagnosis. From what you did 
write, I'd guess there is a problem with mounting partitions other than the 
root (/) one (maybe including /, depending on the details of the /etc 
problems you allude to). User root's home directory is normally on the root 
partition as /root, while /home is often a separate partition, as is /var 
(particualrly if you used RH's default partitioning) ... though /etc almost 
never is (I've never seen a case where it was, and doing it that way would 
cause real problems during init).

Check the status of mounted partitions in /etc/mtab to verify that they are 
mounted RW (and that they are actually mounted as ext3, not ext2). Try (as 
root) umount'ing them, then fsck'ing them, in case they failed an automated 
fsck during init (this seems farfetched since you use ext3 filesystems, but 
it's all I can think of).

Since this happened after a reboot (at least I think that's what you 
wrote), you might want to verify that you are running the same kernel as 
you were before the reboot.

I'd classify the chance that this is a virus as quite small. The hard-reset 
question does make me think of fsck problems with the filesystems.

If that doesn't turn up anything, post again, this time quoting the actual 
error messages instead of paraphrasing them.

At 05:06 PM 1/17/03 +0100, Korosi Akos wrote:
>Hi all!
>
>I have a strange problem.
>
>Happened that the machine had been rebooted (hardly) for some times,
>and at the end the next happened:
>
>Nobody can log in except the root. The message is that there is no
>/home/<user> (<user> is the appropriate user)!
>But in /home there is the <user> directory, and the <user> has
>rwx permissions on it. And everybody has x permission on /home.
>The other thing is that in sendmail sm-client can not be started,
>because: can not chdir to /var/spool/<somedir>, no permissions.
>BUT there are appropritate permissions on that dir, and everybody
>has x permission on /var and /var/spool. After that I changed
>/var/spool/<somedir> to 777 permissions, but sm-client says the same.
>I can log in as root. And if I try to #su - <user>, it wont start.
>I tried #strace su - <user> and saw, that su can open some files,
>but it can not open to read many files (in /etc), but the files are
>there, everybody has read permissions on them, and everybody has
>execute permissions on the parent directoryes.
>
>What could this be?
>Could this be some virus (I forget to setup iptables correctly),
>or could this happen because of hard resets?
>
>I thought that I will reinstall Linux (RH 8.0), because happily
>I use more partitions, and there isnt any important data
>on root partition.
>
>But I'm very curious about this problem.
>
>I use RedHat 8.0 and Ext3 file system on all data partitions.
>This is an older machine (K6-2 350 CPU).
>
>If you need any further info, just ask.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
