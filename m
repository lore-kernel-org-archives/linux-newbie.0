From: Ray Olszewski <ray@comarre.com>
Subject: Re: Read-only File System [/dev/null read only errors]
Date: Sun, 26 Feb 2006 12:24:01 -0800
Message-ID: <44020E61.2050202@comarre.com>
References: <loom.20060226T201241-775@post.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <loom.20060226T201241-775@post.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Frank wrote:
> Our server went down recently.
>   
>   According to the hosting provider, this is some of the first errors 
> it gives,
>   
>   ------------
>   /etc/rc.d/rc.sysinit line xx :/dev/null read only files system
>   gives more of the same error, It can not read many lines in many 
> files that it needs to boot up, due to read only
>   
>   configuring kernel parameters   dup2 bad file descripter
>   
>   there are several bad descriptor errors and several /dev/null read 
> only errors
>   ---------
>   
>   Can someone please assist us on whether this is fixable and if we can 
> recover our data from the server?
>   
>   Any assistance / guidance / pointers are appreciated.

Hmmm ... you haven't really posted enough info to get a good, 
to-the-point answer. So I'll provide a long, probably mediocre, answer 
instead.

If the server were onsite, I'd suggest you boot/init it with a recovery 
floppy or CD, transfer your data to some other host on your LAN, and 
then figure out what's going on once you are out of panic mode. Since 
you reference a "hosting provider", I infer that you do not have 
physical access to the server, which limits your options. (To what? Can 
you ask the provider to do anything other than "try it again"?)

Anyway, to know what you might do, we need to know more of the basics of 
your setup. What Linux distro does it run (I'm guessing Slackware, but 
we shouldn't have to guess about such basic things)? What messages 
precede the one you've more-or-less ("line xx"? "files system"? surely 
it didn't actually say these things) quoted above? What kernel are you 
running, and is it stock or custom? What's the basic hardware setup 
(hard disks and their partitions are likely to be most interesting here, 
but RAM is a possibility too)?

I have a hunch that there is an earlier error message that you, or your 
hosting provider, missed, that explains why the /dev/null errors are 
occurring. My guess is that, for some reason, when the kernel mounts the 
root partition, it is not mounting a correct /dev directory.

What is "dup2"? What other names are associated with the "bad file 
descriptor" messages, and do any of them have local meaning (e.g., are 
they disk partitions in /etc/fstab)?

Where does the server end up? Does it drop into recovery mode? Does it 
oops? Does it just hang at some point? If you (or your provider) can get 
console access, what do these commands report:

	df
	uname -a
	dmesg
	ls -l /dev/null

If this server has not been rebooted in a long time ... is it possible 
that the default LILO (or GRUB or whatever) boot choice is not the right 
one? What is the default LILO stanza (or GRUB, or whatever, equivalent)?

If the server is not under your physical control, this is going to be 
tough to troubleshoot. The worst possibility is a hardware problem with 
your hard disk, because every reboot attempt risks making that worse, 
lessening the chance that you'll be able to recover your data without 
incurring the expense of a disk-recovery specialist.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
