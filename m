From: Ray Olszewski <ray@comarre.com>
Subject: Re: Polaroid BurnMAX24 CD-RW
Date: Fri, 17 May 2002 22:43:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020518054327.03bdbe44@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Mark Johnson <rmjohnson144@adelphia.net>
Cc: linux-newbie@vger.kernel.org

I added the list back in. My substantive reply is below.

At 07:50 PM 5/17/02 -0700, Mark Johnson wrote:
[...]
>This I do need to know how to do.  I tried to run cerecord and was 
>overwhelmed by all the options, so I tried the K menu in KDE and for 2 
>programs: KOnCD and X-CD-Roast and both of them say I my drives aren't 
>SCSI and won't recognize them.  If you can tell me how or point me to a 
>HowTo, I would appreciate it.
>
>Thanks -=Mark=-


There is a CD Writing HowTo that covers the basics of how to do this; find
it at (for example) www.linuxdoc.org . It is slightly out of date, but you
should be able to get what you actually need to do worked out without too
much difficulty from the information it presents.

Here's what I did ... influenced a bit by my use of Debian, so the details
for your distro may vary a bit.

1. Compile the needed kernel options as modules. My notes say I did it this
way (on kernel 2.4.17, using "make menuconfig") --

        in IDE/ATA/ATAPI BLock Devices, I enabled a module
for "SCSI emulation support"
        in SCSI, I enabled "SCSI disk support", "SCSI CD_ROM
                support", and "SCSI generic support"
                all enabled as modules

2. Since I had already compiled my own kernel, I could compile these modules
incrementally, with "make modules". Then I moved the newly-compiled modules
into the kernel modules area (I did this with "make modules_install").

3. I then added (in /etc/modules) the modules I neded to modprobe in at
boot/init. That list is:

# the stuff to enable ide-scsi emulation for the CD-ROM
scsi_mod
sr_mod scd0
sg
ide-scsi


4. Last, I modified lilo.conf so that the IDE CD-R/W drive would NOT be
initialized as an IDE devide at boot (so the ide-scsi module can grab it
instead). I made this change (the last line shown) to lilo.conf:

image=/boot/vmlinuz-2.4.17
        label=Linux
        read-only
        append="hdd=ide-scsi"


The hdd part is because I connected the drive as IDE secondary/slave. You'll
need to modify that for wherever you have yours connected (hdb, hdc, or hdd).

I then re-ran LILO, successfully.

5. With all the changes made, I rebooted. Everything worked for me, and I
now had the drive installed as device /dev/scd0 . The easy test of this was
to use it as a CD_ROM reader, putting in an iso9660 disk and mounting it
successfully.

6. cdrecord is a bit weirder. It doesn't use the /dev/scd0 pseudofile to
access the drive; it uses its (pseudo) SCSI parameters instead. The easy way
to find them out is to run 

        cdrecord --scanbus

to get it to find the drive. Once it does, use the reported values to access
the drive. For example, after I've created a filesystem image with mkisofs,
I use this command --

        cdrecord dev=0,0,0 speed=24 filename.iso

where the dev= part is what you get from the prior command, speed= is the
write speed of your drive, and filename.iso is the image you want to put on
the CD. This is for a write-once disk; there are other options if you want
to do multisession.

I've only done this a little bit myself, so there are, I'm sure, many other
oprtions, once you get the basics working. 

Hope this helps. Good luck.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
