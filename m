From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: moving partion to newer drive
Date: Wed, 25 Feb 2004 01:48:31 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0402250138200.29650-100000@legolas.personal.engin.umich.edu>
References: <5.1.0.14.1.20040224175140.0386cc50@celine>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040224175140.0386cc50@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks for your response, Ray. I am still not particularly clear about the
/boot partition -- what exactly is it used for? I did have an older BIOS
on this hard-drive a while ago, and needed the /boot partition then to
dual boot.  Now, if my BIOS can "see" all of /dev/hdb then its not
necessary for this partition to exist?

I would probably use GRUB as the bootloader -- isn't it likely that GRUB
will be able to figure out how to modify my MBR on /dev/hda so that I
could boot windows from /dev/hda and Linux from /dev/hdb? Whats a good way
to save the MBR and the partition-info (and restore, if need be)?

I would like to follow your advice in switching the drives around and
reinstalling both windows and Linux -- but, all I have for the windows
"install" CD is a custom HP-disk which is quite useless now, since I
don't have the HP-system anymore :-? Moreover, there are way too many
things installed under the m$oft-OS, that I don't wish to go through
trying to reinstall.

-K


On Tue, 24 Feb 2004, at 6:11pm, Ray Olszewski wrote:

> >1. Can I boot from the Fedora CD and get the installation going (with
> >properly defined partitions) and subsequently mounting and copying /dev/hda6
> >to /home, without disturbing anything on /dev/hda at all?
> 
> You should be able to. I haven't actually done a Fedora install, but I'd be 
> amazed if it couldn't handle this configuration.
> 
> >2. Is it preferred that I preserve the /boot partition - i.e. will it help
> >if /boot remains on /dev/hda2?
> 
> It mainly depends on what your BIOS will put up with. LILO (or do you use 
> GRUB?) doesn't care where the boot partition (in effect, the Linux kernel) 
> is, as long as the BIOS can find it. The historical reason for a separate 
> boot partition was the old 1024-cylinder limit for BIOS access, a limit 
> long gone. I've seen some occasional BIOS problems still, though, with 
> drives over 40 GB. If your system has such a problem, you'll need a boot 
> partition spmewhere near the front of one of the drives.
> 
> >3. What are the details I must watch out for in this process?
> 
> Hard to say, aside from inane advice like "Don't do anything silly". You've 
> pretty much asked the right questions.
> 
> As long as you tell Fedora to install to hdb2, it should ignore all the 
> hda* partitions (except maybe for asking you if you want to specify mount 
> points for them). And, as I said, you will have to wait and see if you can 
> boot a kernel located on hdb2.
> 
> Remember that with this approach, you're still installing lilo (or GRUB or 
> whatever) on the MBR of hda. So you'll need either to add back in the 
> multi-boot stuff that lets Windows boot, or install Fedora to boot from 
> floppy, then edit your existing multiboot setup to add Fedora to it.
> 
> Were I doing this, I think I'd do it the reverse way -- make the new drive 
> hda and the old one hdb. Fiddle with the partitioning as needed to get a 
> working /boot partition for Linux. Probably only have one real Linux 
> partition (plus a small /boot partition), just to avoid an Extended 
> partition ... though the merits of that idea depend completely on what you 
> actually use this system for.
> 
> Then install Windows to the new hda1, Linux to the new hda2 and hda3 ... 
> and use the old drive, however you reconfigure it, as a data drive.
> 
> >4. Finally - if all goes well, can I delete partitions /dev/hda(2)3-6 and
> >make /dev/hda available as one single partition, without hosing windows?
> 
> Not with Linux tools (though fdisk can easily delete hda2-6 for you). 
> You'll need help from a Windows list to modify the size of the actual 
> Windows partition.
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
