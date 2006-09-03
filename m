From: tom arnall <kloro2006@gmail.com>
Subject: Re: system hangs momentarily every 4 mins 2 secs
Date: Sun, 3 Sep 2006 11:38:20 -0700
Message-ID: <200609031138.20699.kloro2006@gmail.com>
References: <20060817141403.10351.qmail@web81707.mail.mud.yahoo.com> <200608301435.12933.kloro2006@gmail.com> <200608302150.k7ULo12C009621@isp2dial.com>
Reply-To: kloro2006@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200608302150.k7ULo12C009621@isp2dial.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wednesday 30 August 2006 13:50, John Kelly wrote:
> On Wed, 30 Aug 2006 14:35:12 -0700, tom arnall <kloro2006@gmail.com>
>
> wrote:
> >Is there another place where bootup messages are recorded?
>
> Does your /etc/default/bootlogd say:
> > # Run bootlogd at startup ?
> > BOOTLOGD_ENABLE=yes
>
> That captures additional messages in /var/log/boot
>
> Be cautious though, if using a serial console.  With bootlogd enabled,
> I had one system lock up at boot, when using a serial console.


thanks for the info. indeed it works: /var/log/boot has all the boot messages.

now for the messages of interest. i have been getting them as of ~1 month ago. 
their appearance coincided with the appearance of another phenomenon: my 
system momentarily hangs every 4 mins 2 secs exactly. by 'momentarily hangs' 
i mean the CPU usage jumps to 50-99% usage (by events/0) and the system 
doesn't respond to keyboard or mouse input. this lasts for about 1 second. 
the messages are these, abbreviated somewhat:

	Remounting filesystems.
	/dev/hda1 not found in PARTITIONS.
	/ not found in PARTITIONS.
	Checking /dev/hda1 against HD because PARTITIONS contains "auto".
		Considering /dev/hda.
		/dev/hda1 contains /dev/hda, which is in HD, so we will remount it.
		Considering /dev/hdb.
				  o
				  o
				  o
		Considering /dev/sdg.
		Considering /dev/sdh.
	Original options: rw,notail
	Reducing file system type.
	No saved mount options, so apparently we never remounted this filesystem 
during this session.
	Not remounting.
	Executing: blockdev --setra 256 /dev/hda1
	proc not found in PARTITIONS.
	/proc not found in PARTITIONS.
	Checking proc against HD because PARTITIONS contains "auto".
		Considering /dev/hda.
		Considering /dev/hdb.
				  o
				  o
				  o
		Considering /dev/sdf.
		Considering /dev/sdg.
		Considering /dev/sdh.
	sysfs not found in PARTITIONS.
	/sys not found in PARTITIONS.
	Checking sysfs against HD because PARTITIONS contains "auto".
		Considering /dev/hda.
		Considering /dev/hdb.
				  o
				  o
				  o
		Considering /dev/sdf.
		Considering /dev/sdg.
		Considering /dev/sdh.
	devpts not found in PARTITIONS.
	/dev/pts not found in PARTITIONS.
	Checking devpts against HD because PARTITIONS contains "auto".
		Considering /dev/hda.
		Considering /dev/hdb.
				  o
				  o
				  o
		Considering /dev/sdh.
	tmpfs not found in PARTITIONS.
	/dev/shm not found in PARTITIONS.
	Checking tmpfs against HD because PARTITIONS contains "auto".
		Considering /dev/hda.
		Considering /dev/hdb.
				  o
				  o
				  o
		Considering /dev/sdg.
		Considering /dev/sdh.
	usbfs not found in PARTITIONS.
	/proc/bus/usb not found in PARTITIONS.
	Checking usbfs against HD because PARTITIONS contains "auto".
		Considering /dev/hda.
		Considering /dev/hdb.
				  o
				  o
				  o
		Considering /dev/sdg.
		Considering /dev/sdh.
	Setting spindown timeout on drives to 7200 seconds.
	(hdparm configuration value = 244.)
	Querying /dev/hda media type using device name: type 'disk' on bus 'ata' 
detected
	Querying /dev/hda media type using device name: type 'disk' on bus 'ata' 
detected
	Executing: hdparm -S 244 /dev/hda
	/dev/hda: setting standby to 244 (2 hours)
	Querying /dev/hdb media type using device name: failed - unknown name
	Querying /dev/hdb type using hdparm: type 'disk' on bus 'ata' detected
	Querying /dev/hdb media type using device name: failed - unknown name
	Querying /dev/hdb type using hdparm: type 'disk' on bus 'ata' detected
	Executing: hdparm -S 244 /dev/hdb
	/dev/hdb: No such device or address
	Querying /dev/hdc media type using device name: type 'cd' on bus 'ata' 
detected
	Skipping /dev/hdc: idle timeout control not supported.
	Querying /dev/hdd media type using device name: failed - unknown name
				  o
				  o
				  o
	Querying /dev/hdh media type using device name: failed - unknown name
	Querying /dev/hdh type using hdparm: type 'disk' on bus 'ata' detected
	Querying /dev/hdh media type using device name: failed - unknown name
	Querying /dev/hdh type using hdparm: type 'disk' on bus 'ata' detected
	Executing: hdparm -S 244 /dev/hdh
	/dev/hdh: No such device or address
	Querying /dev/sda media type using device name: type 'disk' on bus 'scsi' 
detected
	Querying /dev/sda media type using device name: type 'disk' on bus 'scsi' 
detected
	Executing: hdparm -S 244 /dev/sda
	/dev/sda: No such device or address
	Querying /dev/sdb media type using device name: type 'disk' on bus 'scsi' 
detected
	Querying /dev/sdb media type using device name: type 'disk' on bus 'scsi' 
detected
	Executing: hdparm -S 244 /dev/sdb
	/dev/sdb: No such device or address
				  o
				  o
				  o
	Querying /dev/sdg media type using device name: type 'disk' on bus 'scsi' 
detected
	Querying /dev/sdg media type using device name: type 'disk' on bus 'scsi' 
detected
	Executing: hdparm -S 244 /dev/sdg
	/dev/sdg: No such device or address
	Querying /dev/sdh media type using device name: type 'disk' on bus 'scsi' 
detected
	Querying /dev/sdh media type using device name: type 'disk' on bus 'scsi' 
detected
	Executing: hdparm -S 244 /dev/sdh
	/dev/sdh: No such device or address

thanks in advance,

tom arnall
north spit, ca




-- 
VGER BF report: U 0.500196
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
