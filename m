From: Ray Olszewski <ray@comarre.com>
Subject: Re: moving partion to newer drive
Date: Tue, 24 Feb 2004 23:14:33 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040224230445.0203c5d8@celine>
References: <5.1.0.14.1.20040224175140.0386cc50@celine> <Pine.LNX.4.44.0402250138200.29650-100000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0402250138200.29650-100000@legolas.personal.
 engin.umich.edu>
References: <5.1.0.14.1.20040224175140.0386cc50@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Karthik <karthikv@Alum.Dartmouth.ORG>, linux-newbie@vger.kernel.org

At 01:48 AM 2/25/2004 -0500, Karthik Vishwanath wrote:
>Thanks for your response, Ray. I am still not particularly clear about the
>/boot partition -- what exactly is it used for? I did have an older BIOS
>on this hard-drive a while ago, and needed the /boot partition then to
>dual boot.  Now, if my BIOS can "see" all of /dev/hdb then its not
>necessary for this partition to exist?

Right. /boot (the directory) is where, by convention, you put the image of 
the Linux kernel that lilo or GRUB (or something else) will load at 
boottime. SInce the kernel hasn't been loaded yet, the bootloader has to 
rely on the BIOS to access the portion of the hard disk where the 
kernel-image resides. So if the BIOS cannot access that location, the 
kernel cannot load.

Usually (actually, I've never seen an exception with ide drives, but I 
don't know enough to say always) even if the BIOS cannot access the entire 
hard disk, it can access the "first" part of it. So a traditional 
workaround is to make /boot its own small partition, say 50 MB, best 
created as hda1 to be sure you're where the BIOS can find it.

BTW, the Linux kernel does not use the BIOS to access hard disks. That's 
why it can access portions of a hard disk that the BIOS cannot see. But the 
kernel can't use this trick to load itself, for what I hope are obvious 
reasons.

>I would probably use GRUB as the bootloader -- isn't it likely that GRUB
>will be able to figure out how to modify my MBR on /dev/hda so that I
>could boot windows from /dev/hda and Linux from /dev/hdb? Whats a good way
>to save the MBR and the partition-info (and restore, if need be)?

Actually, as I recall (I use lilo, not GRUB, so I'm a bit hazy on this), if 
you are now running GRUB, you won't need to modify the actual MBR to change 
things. GRUB is a multi-stage bootloader, and only the first pieces is in 
the MBR. A later stage actually reads the GRUB config file during boot.  If 
you're now using lilo, then you will need either to reinstall it or install 
GRUB.

I don't know a way to read the actual  MBR; normally, you would "save" it 
by keeping the LILO or GRUB config file you used to install it.

>I would like to follow your advice in switching the drives around and
>reinstalling both windows and Linux -- but, all I have for the windows
>"install" CD is a custom HP-disk which is quite useless now, since I
>don't have the HP-system anymore :-? Moreover, there are way too many
>things installed under the m$oft-OS, that I don't wish to go through
>trying to reinstall.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
