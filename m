From: Ray Olszewski <ray@comarre.com>
Subject: Re: Strange Boot behavior
Date: Thu, 21 Aug 2003 18:35:58 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030821182255.06796ba8@celine>
References: <20030822010917.50037.qmail@web13801.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030822010917.50037.qmail@web13801.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

How about a few more details?

1. What is the size of the new drive in GB?

2. How old is your BIOS? Windows has a 138 GB size limit for hard disks. 
Linux does not, but some BIOSes might have a limit similar to that of 
Windows, and that might affect the boot process.

3. On the BIOS drive display, does the new drive show up with the right size?

4. How is the drive partitioned? In particular, is /boot near the beginning 
of the drive? (The old 1024 cylinder restriction is a fading memory, but I 
wonder if we are starting to see a new one with today's supersized drives.)

5. Did you install GRUB in the MBR or in a partition?

6. Do you have the new drive jumpered as Master and on the Primary IDE 
channel? If you ae using Cable Select, try switching to jumper assignment 
and see if that helps. It shouldn't make a difference, but I've found that 
sometimes it does, no matter how it "should" work.

7. Does the problem occur whether or not you have the old drive installed? 
If you don't know, try booting with ONLY the new drive physically connected 
(or with it on the Secondary IDE channel). This is just to check if you 
have the old drive mis-jumpered.

If you get NO message at all from GRUB, the problem is at the start of the 
boot process, not later in it. So the /boot partition itself is probably 
not the problem. Figuring out what is will require more details, of the 
sort I've asked about.

At 06:09 PM 8/21/2003 -0700, Christopher Swope wrote:
>Hello all,
>
>I am currently having trouble getting my computer to boot.  I
>recently decided to install a larger, faster, hard drive.  Since this
>hard drive was larger and faster, I decided that I wanted to make it
>my master drive, and make my old drive my slave.  I took the old hard
>drive out, and installed Red Hat Linux 8.0.  I then reconnected the
>old drive, transferred files, etc.
>
>The problem is that when the new drive is connected, I never get the
>grub display screen.  The BIOS executes appropriately, and then the
>computer just sits there, like it is waiting for something.  When the
>old drive is not connected, the computer boots fine, however.  Even
>if the old drive is turned off in the BIOS Setup, if it is connected,
>I have this problem.
>
>I did make a boot diskette, and I can boot from that.
>
>I have tried several things to fix the problem, including
>reinstalling grub, making the old /boot partition no longer bootable,
>and even changing the label of the old /boot partition.  I even tried
>to delete the old /boot partition altogether, but nothing has solved
>the problem yet.
>
>I am stumped as to what could be the problem.  It might very well be
>hardware/BIOS related, but I don't think it is.
>
>Does anyone have any ideas on what the problem could be and/or how I
>can fix it.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
