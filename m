From: Ray Olszewski <ray@comarre.com>
Subject: Re: cdrom
Date: Fri, 01 Oct 2004 08:30:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041001082059.01faeff8@celine>
References: <415D58F4.6040709@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <415D58F4.6040709@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 06:17 AM 10/1/2004 -0700, dave wrote:
>I have a samsung cdrom.  The last couple of weeks it quit working or only 
>partially works.  It works great for booting mandrake 10 and 
>installing.  It works great for burning.  It just doesn't work trying to 
>read a cd.  I have a cd full of pictures, my vmware disk,  windows xp that 
>it reads a little.  On the windows cd it show 3 icons with question marks 
>where the file name is ususally.  I'm at a loss.  Anyone have any 
>ideas?  Thanks for your time.
>Dave Pomeroy K7DNP South Eastern Washington


Since you write "It works great for booting mandrake 10 and installing", I 
surmise that the failures are associated with a fresh install of Linux. 
Please correct me if I am wrong. My immediate thought is that you are using 
a kernel that does not support Joliet extensions ... check this in the 
kernel source .config file if you can (it's under Filesystems in the "make 
menuconfig" menus).

If that's not it, and if no one else comes up with something, you're going 
to need to give us a more detailed report about the failures indicating 
what else changed contemporaneously with the "quit working", if the drive 
reads properly non-Windows CDs written on it, if it works properly under 
Windows (I ask this only becaus you mention a Windows XP CD, causing me to 
surmise that this system dual boots), and what "reads a little" means with 
respect to the "cd full of pictures" you mention.

If all this happened simply out of the blue, with no other changes in your 
Linux setup, then I would suspect a hardware problem with the drive. I've 
had drives fail before, but the usual symptom I see, under either Linux or 
Windows, is a complete inability to read disks (my failed drives were 
read-only drives, not RW drives).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
