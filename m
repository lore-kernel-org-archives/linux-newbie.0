From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-ROM Hell
Date: Tue, 01 Oct 2002 21:01:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021001204310.02d04d40@celine>
References: <200210010238.22882.wfoo@linuxvoodoo.com>
 <1033443333.7225.50.camel@localhost.localdomain>
 <200210010238.22882.wfoo@linuxvoodoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1033518420.19378.7.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Bryan Simmons <bsimmo1@gl.umbc.edu>, linux-newbie <linux-newbie@vger.kernel.org>

 From your latest message, Bryan, I don't think we are going to come up 
with anything by playing guessing games about the nature of the problem. 
Please post another message, this time giving the sorts of technical 
details needed to troubleshoot.

First, as I interpret what you wrote below, the CD drive is having problems 
both with data disks (which you call "CD-ROMs" and which I presume contain 
iso9660 filesystems) and with music disks (which you call "CDs", and which 
are either regular music CDs, copies of regular music CDs, or disks of MP3s 
... or perhaps some mix of the three). If this interpretation is wrong, 
please correct it next time around and tell us EXACTLY what sorts of disks 
are associated with the problem.

Second, is this an ATAPI (IDE) or a SCSI drive? What Linux modules access 
it? What deviceis it (the entry in /dev/, I mean)? (And BTW, what Linux 
distro is involved, what version, and what kernel version? Stock or custom 
kernel?)

Third, when you say "I was able to successfully run umount /mnt/cdrom" ... 
after you run it, does "df" no longer show anything mounted on /dev/cdrom? 
If it does show something there, please explain what you mean by 
"successfully". If it does not show something there, please post the EXACT 
command you then enter, and the EXACT response you then get, that you are 
characterizing as "the device is busy". If "df" itself returns an error, 
please tell us EXACTLY what it says.

Fourth, when you are trying and failing to read a music CD, what 
application are you using? Does it ever fail with an error? Can you kill 
(or kill -9) that app? If you do kill (or kill -9) it, can you then access 
the CD drive (say to mount a known-good iso9660 CD)? If not, then at this 
point, what does ""lsof | grep cdrom" report (make sure that you have the 
command installed, though, by first running it successfully without the 
pipe to grep)?

Fifth and last, does your /etc/fstab file have any entry for the CD drive? 
If so, please report the exact, complete contents of that entry.

At 08:26 PM 10/1/02 -0400, Bryan Simmons wrote:
>For some reason, the command "lsof | grep /mnt/cdrom ." didn't produce
>any results.  No error, nothing.  I looked at the man page for lsof but
>it didn't seem to have anything to say about locating run-away
>processes.  I also took a look at my running processes and couldn't find
>anything suspicious.
>
>The damn CD-ROM is still going.  I was able to successfully run umount
>/mnt/cdrom.  But, of course, I can't remount it because "the device is
>busy".
>I'd really like to find out why this happens and how to recover from it
>without a reboot.  It happens quite often with old or burned CDs, and
>it's a problem I've had with 4 different CD-ROMs on 4 different distros
>of Linux.
[old stuff deleted]


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
