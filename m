From: Ray Olszewski <ray@comarre.com>
Subject: Re: linuxsingle
Date: Sat, 09 Apr 2005 21:59:48 -0700
Message-ID: <5.1.0.14.1.20050409212928.01f56448@celine>
References: <20050410042036.86859.qmail@web52908.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050410042036.86859.qmail@web52908.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:20 AM 4/10/2005 +0100, Ankit Jain wrote:
>ifanybody can tell me how to make changes in linux so
>that a person cannot move to linux single mode in any
>condition . not even from bootable CD

No. That is, nobody can tell you how to do that, because it cannot be done 
in Linux.

If someone has physical access to your host and can reboot it from a CD or 
floppy, the version of Linux on the hard disk (and even the bootloader 
there) becomes irrelevant to the boot/init process, and it can do nothing 
to stop the rescue disk from booting to whatever it wants to boot to.

There are things you can do, in the hardware and the BIOS, to prevent use 
of rescue disks. Don't have any removable storage in the first place, or at 
least none that is bootable. Make the hard disk the only boot option 
(including disallowing USB or network boots, these days), and 
password-protect the BIOS. Epoxy over the pins on the mobo that are used to 
force a BIOS reset, and superglue the CMOS battery in so it can't be 
removed to clear CMOS RAM. Superglue the hard-disk cable(s) to the drive(s) 
and the mobo so someone can't swap the boot drive to the second IDE 
connector and attach a different boot drive to the primary connector.

Even after all of that, there's probably a workaround for breaking in ... 
the point is that securing a host (at least one built from conventional 
components) from someone who has physical access to it, and time to do the 
work, is either impossible or nearly so.

(This all may seem a bit much, but you did say "in any condition" in your 
question, so I'm intentionally considering extreme cases, not only cases 
where the cracker has 2 minutes and needs to remain unnoticed in a crowded 
room. If that's all you are concerned about, and we can assume the case 
itself remains unopened, then the BIOS changes I mention are probably 
sufficient, when combined with the Linux details I will discuss below.)

If you limit your request to boot/inits based on the Linux kernel and root 
filesystem you install on the host, then you might be able to accomplish 
this, or at least what you probably really want ... requiring a user to 
know the root password even in single-user mode. Debian systems run a 
probram called sulogin in these cases, and it requires one to know the root 
password to proceed. Use of it is specified in /etc/inittab, in a line that 
reads

         # What to do in single-user mode.
         ~~:S:wait:/sbin/sulogin

Read the man page for sulogin for more on this. You could probably fiddle 
with this to make it completely impossible to log in in single-user mode, 
by replacing /sbin/sulogin with a program that blocks all access, or maybe 
a call to /sbin/halt .

If you do this, you'll also want to password protect lilo (or whatever 
bootloader you use), so a cracker can't work around this by passing a 
different "init=" line to lilo (the man page for lilo will fill in the 
blanks here, if you don't know what I mean).

I doubt I plugged all the holes. It's been a long time since I worried 
about securing a system from a user sitting at its console. But these 
suggestions will take you in the right direction.

One last possibility I should note: you could use an encrypted filesystem, 
one that is accessible only to the Linux kernel on it. I don't know any of 
the details about how to do this, though, and I suspect it is far from an 
off-the-shelf solution. So if you want to explore it, raise it in a 
follow-up and perhaps someone else can help you get started.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
