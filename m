From: Ray Olszewski <ray@comarre.com>
Subject: Re: not reading contents of cd-rom
Date: Sun, 08 Feb 2004 08:47:41 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040208083014.01f98b70@celine>
References: <5.1.0.14.1.20040207231643.01f9a4a0@celine>
 <5.1.0.14.1.20040207231643.01f9a4a0@celine> <200402081558.18273.wheds8@ms66.hinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200402081558.18273.wheds8@ms66.hinet.net>
References: <5.1.0.14.1.20040207231643.01f9a4a0@celine>
 <5.1.0.14.1.20040207231643.01f9a4a0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "S. Barret Dolph" <wheds8@ms66.hinet.net>, linux-newbie@vger.kernel.org

At 03:58 PM 2/8/2004 +0800, S. Barret Dolph wrote:


> > Am I right in assuming that you meant to type /mnt/cdrom ?
>
>Yes, my apologies...
>
>I did this...
> >          mount /dev/cdrom /mnt/cdrom
>
>and got mount: you must specify the filesystem type.

This pmay just mean that there is no entry in /etc/fstab for the CD drive. 
Check by looking for a line there that looks about like this one (some 
details may vary):

/dev/cdrom      /mnt/cdrom          iso9660 ro,user,noauto          0       0

Now see if this works:

         mount -t iso9660 /dev/cdrom /mnt/cdrom

If not, one of four things is wrong:

1. /dev/cdrom does not point to a working, physical CD device.

2. The kernel does not have CD-ROM support compiled in (or as a module).

3. The kernel does not have support for the iso9660 filesystem type.

4. The CD in the drive is not a valid data disk.

If you post again on this topic, please include the details of your setup; 
any diagnosis beyond this really requires knowledge of the physical and 
software details of the system, including

         what type of CD drive
                 if IDE, what IDE device is it (hda, hdb, hdc, hdd)
                 if SCSI, what scsi device is it
                 if something else (e.g., USB), the appropriate details
         output of "ls -l /dev/cdrom"
         possibly, output of "lsmod"
         any relevant output in the dmesg buffer (see below)
         whatever the BIOS messages say about the CD drive before Linux boots
         what distro and kernel are involved

> > If this command does not fix the problem, then you probably need to check
> > that the CD drive itself is working and is recognized by your kernel.
> > Details require a description of your setup. But one quick check is to see
> > if a CD ripper (like cdparanoia) can read the CD drive.
>
>How do I check if the cd is recognized by the kernel? I am trying to install
>SourceMage so I must select all the hardware options for the kernel.

I'm unfamiliar with SourceMage so cannot tell you exactly how to do what 
you want using it. Assuming you have an ATAPI (IDE) CD drive, you want to 
make sure that

         CONFIG_BLK_DEV_IDECD=y

is in the kernel's .config file. That handles the hardware part. For the 
filesystem (iso9660), you also need these lines:

         CONFIG_ISO9660_FS=y
         CONFIG_JOLIET=y

(the second is not essential but is a good idea).

To see if the existing kernel is recognizing the drive, check dmesg for a 
line similar to this one:

         hdd: CD-RW BCE4012IM, ATAPI CD/DVD-ROM drive

How you check dmesg is a bit distro specific. On my (Debian-Sid) system, 
there is a file /var/log/dmesg that preserves the state of the dmesg buffer 
immediately after boot/init. If your distro doesn't do something similar, 
you'll have to check the buffer itself (with the command "dmesg") right 
after boot/init, before any messages of interest might be overwritten.

Finally, I suggested using ripping software on a music CD as a test. I 
repeat that suggestion.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
