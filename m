From: Ray Olszewski <ray@comarre.com>
Subject: Re: Configuring lilo to boot from sda after RH 9.0 install
Date: Mon, 14 Apr 2003 17:46:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030414173840.020022e8@celine>
References: <000101c31a77$7597f830$1601a8c0@crypt>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000101c31a77$7597f830$1601a8c0@crypt>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: steven@nvts.us, linux-newbie@vger.kernel.org

OK. We probably need to see a bit more than James asked for. Please provide:

1. The complete /etc/lilo.conf
2. The contents of /etc/fstab
3. A description of what does happen if you try to boot from sda.
4. Do you know that the hardware is capable of booting from a SCSI drive? How?
5. If you boot from floppy, log in as root, and run the command "lilo", 
what is the result? What gets printed to the screen?

The root directory (almost) surely is NOT /dev/sda. It will be something 
like /dev/sda1 or /dev/sda2 (the numbers identify partitions on a drive, 
while the matching entry without a number is the drive itself).

Finally, is this by any chance a RAID server? If so, and if the boot device 
is part of the RAID cluster, there are special problems getting it to boot. 
I fear I do not recall the details, but you might look through the various 
RAID HowTos at tldp to find the one that discusses boot procedures.

At 05:18 PM 5/14/2003 -0700, Steven Ackerman wrote:
>Dear list,
>
>I read the faq for the list. Searched tldp.org
>(http://tldp.org/LDP/lame/LAME/linux-admin-made-easy/install-lilo.html) and
>read the linux faq (ftp://sunsite.unc.edu/pub/Linux/docs/faqs/!INDEX.html)
>before posting. I also read the faq for this list. At that point I got
>frustrated and am sending this message. I know this is easy but I can't
>figure it out. I am not a linux guru. Just an enthusiast and that makes me
>the best man for the job at hand.
>
>I installed RH 9.0 as a server and the machine only boots from floppy. In
>lilo.conf the boot= line in the first section says boot=/dev/sda. In the
>same section the install= line says install=/boot/boot.b. I don't even know
>what I should be posting to help anyone answer my question. This is a rack
>mount server with 4 SCSI drives. I don't know if that matters. If I remember
>right, the root directory is /dev/sda. Whatever the default is. I can give
>you whatever info you need. I may have to figure out how to do it, but
>usually I can do that.
>
>I need help. I don't mind pointers to links, documentation, pointers to some
>documentation I missed, ect. All the doc's I found refer to using ide
>devices and pointing to the root directory or wherever lilo is installed or
>the root directory is or something like that. Not knowing all the linux
>internals, I don't even know how to find that out.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
