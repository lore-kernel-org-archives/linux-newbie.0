From: Joshua Rogers <joshuarogers@hopper.net>
Subject: Noflushd usage
Date: Wed, 31 Mar 2004 22:53:35 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <406BA04F.3060503@hopper.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Slightly curious here.  I have fairly new computer here that I got from 
walmart.com maybe 4 months ago.  I decided to install linux and windows 
on  it.  Ok.  I installed a 100Gb harddrive into the computer that has 
all my data on it.  And the drive sounds like a jet plane.

How can I (or can I not) make noflushd turn off the second hard drive 
after about 15 minutes?

My first drive is /dev/hda.  It contains Windows 2000 on an NTFS 
partition, Windows 98 on Fat32, Lycoris (can't remember the fs) and 
Debian (on ReiserFS).  I don't mind this drive, it's quiet and contains 
only the OSes.

My other drive is /dev/hdb.  It is the 100Gb Drive.  It consists of 5 
partitions, all of which are of type Fat32.  My computer is only about 3 
feet from my bed, so this drive would definately keep me up.  Either 
that or have to keep shutdown every night. 

Also, when I shutdown, if there is something ready to write to the 
drive, will it save, or will the kernel just ignore it.

I'm running linux kernel 2.6.4, with ACPI enabled.  It's a custom 
kernel, so if I need to make some modifications, I will.

I'm going to be trying this on my Debian Install.  I know I can't make 
/dev/hda spin down (because of the ReiserFS), but I would like to be 
able to spin down /dev/hdb (containing only FAT32 partitions.)

Oh, one last thing (sorry), I don't know if this has anything to do with 
it, but when I type 'acpi' at konsole it responds "No support for device 
type: battery".  Is this important?  I'm running a desktop, so I'm not 
using a battery to power the system.

Thanks and sorry for the length of the post.

Joshua Rogers

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
