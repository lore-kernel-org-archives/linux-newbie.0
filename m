From: Rei Shinozuka <shino@panix.com>
Subject: xcdroast errors
Date: Fri, 2 Apr 2004 10:38:36 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040402153836.GA27294@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Newbie Linux Users <linux-newbie@vger.kernel.org>

i've been using xcdroast for years on my thinkpad, but it consistently
reports errors duplicating disks on my new desktop.  i was trying to duplicate 
an ISO disk.  i tried several input disks (as well as isos on my
hard drive) and many output blank disks, both CDR and CDRW.  

the xcdroast always reports the error 
after fixation, the scales are always 100% and 99% for read and write
and yet there do not seem to be obvious errors in the logs,
plus the newly-created disks mount and look good, and i've even booted
off one of them.

i have tried all sorts of options but the failures are always
the same.

note that when i use mondo, i burn using the same Plextor drive
and the same batch of CDR and CDRWs and these disks are fine (i know,
i've restored my system from them at least twice!)

any ideas?

-rei

------ trying to write a CDR-------
Calling: /usr/lib/xcdroast-0.98/bin/xcdrwrap CDRECORD dev= "1,0,0" gracetime=2 fs=16384k driveropts=burnfree,noforcespeed -v -useinfo speed=10 -dao -eject -pad -overburn tsize=357664s -waiti -data -

scsidev: '1,0,0'
scsibus: 1 target: 0 lun: 0
Linux sg driver version: 3.1.25
Error trying to open /dev/scd0 exclusively ... retrying in 1 second.
cdrecord: Warning: using inofficial libscg transport code version (schily - Red Hat-scsi-linux-sg.c-1.75-RH '@(#)scsi-linux-sg.c	1.75 02/10/21 Copyright 1997 J. Schilling').
SCSI buffer size: 64512
cdrecord: This version of cdrecord does not include DVD-R/DVD-RW support code.
cdrecord: If you need DVD-R/DVD-RW support, ask the Author for cdrecord-ProDVD.
TOC Type: 1 = CD-ROM
Waiting for data on stdin...
Using libscg version 'schily-0.7'
Driveropts: 'burnfree,noforcespeed'
atapi: 1
Device type    : Removable CD-ROM
Version        : 0
Response Format: 1
Vendor_info    : 'PLEXTOR '
Identifikation : 'DVDR   PX-708A  '
Revision       : '1.01'
Device seems to be: Generic mmc2 DVD-R/DVD-RW.
Current: 0x0009
Profile: 0x001B
Profile: 0x001A
Profile: 0x0014
Profile: 0x0013
Profile: 0x0011
Profile: 0x0010
Profile: 0x000A
Profile: 0x0009 (current)
Profile: 0x0008
Using generic SCSI-3/mmc   CD-R/CD-RW driver (mmc_cdr).
Driver flags   : MMC-3 SWABAUDIO BURNFREE VARIREC FORCESPEED SINGLESESSION HIDECDR
Supported modes: TAO PACKET SAO SAO/R96P SAO/R96R RAW/R16 RAW/R96P RAW/R96R
Drive buf size : 1190112 = 1162 KB
FIFO size      : 16777216 = 16384 KB
pregap1: -1
Track 01: data   698 MB         padsize:   30 KB
Total size:      802 MB (79:29.05) = 357679 sectors
Lout start:      802 MB (79:31/04) = 357679 sectors
Current Secsize: 2048
ATIP info from disk:
Indicated writing power: 4
Is unrestricted
Is not erasable
Disk sub type: Medium Type A, low Beta category (A-) (2)
ATIP start of lead in:  -12508 (97:15/17)
ATIP start of lead out: 359848 (79:59/73)
Disk type:    Short strategy type (Phthalocyanine or similar)
Manuf. index: 22
Manufacturer: Ritek Co.
Single session is OFF.
Hide CDR is OFF.
Blocks total: 359848 Blocks current: 359848 Blocks remaining: 2169
Forcespeed is OFF.
Power-Rec is ON.
Power-Rec write speed:     40x (recommended)
Starting to write CD/DVD at speed 8 in real SAO mode for single session.
Waiting for reader process to fill input buffer ...
input buffer ready.
BURN-Free is ON.
Performing OPC...
Sending CUE sheet...
Writing pregap for track 1 at -150
Starting new track at sector: 0

Track 01: writing  30 KB of pad data.
Track 01: Total bytes read/written: 732495872/732526592 (357679 sectors).
Writing  time:  622.303s
Average write speed   7.7x.
Min drive buffer fill was 95%
Fixating...
Fixating time:   12.072s
Last selected write speed: 8x
cdrecord: fifo had 11538 puts and 11538 gets.
Max media write speed:     40x
cdrecord: fifo was 0 times empty and 10944 times full, min fill was 99%.
Last actual write speed:   8x


-------- trying to write a CDRW---------------

Calling: /usr/lib/xcdroast-0.98/bin/xcdrwrap CDRECORD dev= "1,0,0" gracetime=2 fs=16384k driveropts=burnfree,noforcespeed -v -useinfo speed=4 -dao -eject -pad -data "/tmp/track-01.img" ...

scsidev: '1,0,0'
scsibus: 1 target: 0 lun: 0
Linux sg driver version: 3.1.25
Error trying to open /dev/scd0 exclusively ... retrying in 1 second.
cdrecord: Warning: using inofficial libscg transport code version (schily - Red Hat-scsi-linux-sg.c-1.75-RH '@(#)scsi-linux-sg.c	1.75 02/10/21 Copyright 1997 J. Schilling').
SCSI buffer size: 64512
cdrecord: This version of cdrecord does not include DVD-R/DVD-RW support code.
cdrecord: If you need DVD-R/DVD-RW support, ask the Author for cdrecord-ProDVD.
TOC Type: 1 = CD-ROM
Using libscg version 'schily-0.7'
Driveropts: 'burnfree,noforcespeed'
atapi: 1
Device type    : Removable CD-ROM
Version        : 0
Response Format: 1
Vendor_info    : 'PLEXTOR '
Identifikation : 'DVDR   PX-708A  '
Revision       : '1.01'
Device seems to be: Generic mmc2 DVD-R/DVD-RW.
Current: 0x000A
Profile: 0x001B
Profile: 0x001A
Profile: 0x0014
Profile: 0x0013
Profile: 0x0011
Profile: 0x0010
Profile: 0x000A (current)
Profile: 0x0009
Profile: 0x0008
Using generic SCSI-3/mmc   CD-R/CD-RW driver (mmc_cdr).
Driver flags   : MMC-3 SWABAUDIO BURNFREE VARIREC FORCESPEED SINGLESESSION HIDECDR
Supported modes: TAO PACKET SAO SAO/R96P SAO/R96R RAW/R16 RAW/R96P RAW/R96R
Drive buf size : 1190112 = 1162 KB
FIFO size      : 16777216 = 16384 KB
pregap1: -1
Track 01: data   698 MB         padsize:   30 KB
Total size:      802 MB (79:29.05) = 357679 sectors
Lout start:      802 MB (79:31/04) = 357679 sectors
Current Secsize: 2048
ATIP info from disk:
Indicated writing power: 3
Reference speed: 6
Is not unrestricted
Is erasable
Disk sub type: High speed Rewritable (CAV) media (1)
ATIP start of lead in:  -11745 (97:25/30)
ATIP start of lead out: 359848 (79:59/73)
1T speed low:  4 1T speed high: 10
2T speed low:  4 2T speed high:  0 (reserved val  6)
power mult factor: 1 5
recommended erase/write power: 4
A1 values: 24 1A CC
A2 values: 26 B2 48
A3 values: 04 CF 80
Disk type:    Phase change
Manuf. index: 40
Manufacturer: INFODISC Technology Co., Ltd.
Single session is OFF.
Hide CDR is OFF.
Blocks total: 359848 Blocks current: 359848 Blocks remaining: 2169
Forcespeed is OFF.
Power-Rec is ON.
Power-Rec write speed:     10x (recommended)
Starting to write CD/DVD at speed 10 in real SAO mode for single session.
Waiting for reader process to fill input buffer ...
input buffer ready.
BURN-Free is ON.
Performing OPC...
Sending CUE sheet...
Writing pregap for track 1 at -150
Starting new track at sector: 0

Track 01: writing  30 KB of pad data.
Track 01: Total bytes read/written: 732495872/732526592 (357679 sectors).
Writing  time:  502.278s
Average write speed   9.6x.
Min drive buffer fill was 99%
Fixating...
Fixating time:    9.658s
Last selected write speed: 10x
cdrecord: fifo had 11538 puts and 11538 gets.
Max media write speed:     10x
cdrecord: fifo was 0 times empty and 11282 times full, min fill was 99%.
Last actual write speed:   10x




-- 
Rei Shinozuka shino@panix.com
Ridgewood, New Jersey

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
