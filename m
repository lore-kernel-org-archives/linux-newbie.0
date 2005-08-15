From: chuck gelm <chuck@gelm.net>
Subject: Re: dmesg output: impending hardware failure?
Date: Mon, 15 Aug 2005 19:52:39 -0400
Message-ID: <43012AC7.2000606@gelm.net>
References: <Pine.LNX.4.61.0508151724430.11640@localhost.localdomain>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0508151724430.11640@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

Hi, James:

  I'll top post because your example is long.
  First: Backup your data on /dev/hdb! :-|
  Second: I recommend editing /etc/smartd.conf to include
/dev/hdb -a
  Then running
smartd
  Then
tail -f /var/log/messages
  and see whazzzup!  ;-)

HTH, Chuck

James Miller wrote:
> I run a Debian unstable system here and recently did a 
> dist-upgrade--actually the Synaptic equivalent. In the process, I got a 
> new kernel (2.6.12). On reboot, I noticed alot of errors referencing 
> /dev/hdb. This is not the oldest of the 3 hard drives I have in this 
> machine, but it's also not very new (ca. 4 years old). All drives are on 
> the built-in IDE channels. I'm wondering if the output may be telling me 
> the hardware is on its way south. I include relevant dmesg output below. 
> Any input or advice on this anyone?
> 
> NET: Registered protocol family 1
> Uniform Multi-Platform E-IDE driver Revision: 7.00alpha2
> ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx
> PIIX4: IDE controller at PCI slot 0000:00:07.1
> PIIX4: chipset revision 1
> PIIX4: not 100% native mode: will probe irqs later
>     ide0: BM-DMA at 0xffa0-0xffa7, BIOS settings: hda:DMA, hdb:DMA
>     ide1: BM-DMA at 0xffa8-0xffaf, BIOS settings: hdc:DMA, hdd:DMA
> Probing IDE interface ide0...
> hda: ST310215A, ATA DISK drive
> hdb: ST320413A, ATA DISK drive
> ide0 at 0x1f0-0x1f7,0x3f6 on irq 14
> Probing IDE interface ide1...
> hdc: IBM-DPTA-371360, ATA DISK drive
> hdd: CD-RW 32X10X40, ATAPI CD/DVD-ROM drive
> ide1 at 0x170-0x177,0x376 on irq 15
> Probing IDE interface ide2...
> Probing IDE interface ide3...
> Probing IDE interface ide4...
> Probing IDE interface ide5...
> hda: max request size: 128KiB
> hda: 19541088 sectors (10005 MB) w/2048KiB Cache, CHS=19386/16/63, UDMA(33)
> hda: cache flushes not supported
>  /dev/ide/host0/bus0/target0/lun0: p1
> hdb: max request size: 128KiB
> hdb: Host Protected Area detected.
>     current capacity is 39102336 sectors (20020 MB)
>     native  capacity is 39102337 sectors (20020 MB)
> hdb: Host Protected Area disabled.
> hdb: 39102337 sectors (20020 MB) w/1024KiB Cache, CHS=38792/16/63, UDMA(33)
> hdb: cache flushes not supported
>  /dev/ide/host0/bus0/target1/lun0: p1
> hdc: max request size: 128KiB
> hdc: 26712000 sectors (13676 MB) w/1961KiB Cache, CHS=26500/16/63, UDMA(33)
> hdc: cache flushes not supported
>  /dev/ide/host0/bus1/target0/lun0: p1 p2
> kjournald starting.  Commit interval 5 seconds
> EXT3-fs: mounted filesystem with ordered data mode.
> hdb: dma_intr: status=0x51 { DriveReady SeekComplete Error }
> hdb: dma_intr: error=0x10 { SectorIdNotFound }, LBAsect=39102336, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: dma_intr: status=0x51 { DriveReady SeekComplete Error }
> hdb: dma_intr: error=0x10 { SectorIdNotFound }, LBAsect=39102336, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: dma_intr: status=0x51 { DriveReady SeekComplete Error }
> hdb: dma_intr: error=0x10 { SectorIdNotFound }, LBAsect=39102336, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: dma_intr: status=0x51 { DriveReady SeekComplete Error }
> hdb: dma_intr: error=0x10 { SectorIdNotFound }, LBAsect=39102336, 
> sector=39102336
> ide: failed opcode was: unknown
> hda: DMA disabled
> hdb: DMA disabled
> ide0: reset: success
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> ide0: reset: success
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> end_request: I/O error, dev hdb, sector 39102336
> Buffer I/O error on device hdb, logical block 39102336
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> ide0: reset: success
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> ide0: reset: success
> hdb: task_in_intr: status=0x59 { DriveReady SeekComplete DataRequest 
> Error }
> hdb: task_in_intr: error=0x10 { SectorIdNotFound }, LBAsect=39167615, 
> sector=39102336
> ide: failed opcode was: unknown
> end_request: I/O error, dev hdb, sector 39102336
> Buffer I/O error on device hdb, logical block 39102336
> 
> Thanks, James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
