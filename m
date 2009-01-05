From: "Adrian Cornish" <adrianc@cqg.com>
Subject: Pre-emption and kernel/softlockup.c softlockup_tick()
Date: Mon, 5 Jan 2009 14:17:50 -0700
Message-ID: <4CEB6A0515F3C54E9FC68A55F28698A40F5764A0@d3smail.denver.cqg>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I am investigating why on 1 particular machine we get these soft lockup
errors.

When looking at following code in kernel/softlockup.c is it possible for
the touch time stamps get swapped over due to pre-emption and the wrong
touch_timestamp is compared against wrong current time, there by causing
a false soft lockup message.

Should softlockup.c be changed to call get_cpu() rather then
smp_processor_id()

void softlockup_tick(void)
{
   int this_cpu = smp_processor_id();
   unsigned long touch_timestamp = per_cpu(touch_timestamp, this_cpu);


Adrian Cornish

Jan  5 07:12:46 qlbqp1 ntpd[3149]: synchronized to 172.18.40.2, stratum
2
Jan  5 07:17:53 qlbqp1 kernel: BUG: soft lockup - CPU#2 stuck for 10s!
[swapper:0]
Jan  5 07:17:53 qlbqp1 kernel: CPU 2:
Jan  5 07:17:53 qlbqp1 kernel: Modules linked in: ipv6 xfrm_nalgo
crypto_api sunrpc dm_mirror dm_mod video sbs backlight i2c_ec i2c_core
button battery asus_acpi acpi_memhotplug ac parport_pc lp parport
ata_piix libata shpchp i5000_edac bnx2 ide_cd edac_mc e1000e cdrom
serio_raw pcspkr sg megaraid_sas sd_mod scsi_mod ext3 jbd ehci_hcd
ohci_hcd uhci_hcd
Jan  5 07:17:53 qlbqp1 kernel: Pid: 0, comm: swapper Not tainted
2.6.18-92.1.18.el5 #1
Jan  5 07:17:53 qlbqp1 kernel: RIP: 0010:[<ffffffff80056d38>]
[<ffffffff80056d38>] mwait_idle+0x36/0x4a
Jan  5 07:17:53 qlbqp1 kernel: RSP: 0018:ffff8101043e3ea0  EFLAGS:
00000246
Jan  5 07:17:53 qlbqp1 kernel: RAX: 0000000000000000 RBX:
ffff81012ececca0 RCX: 0000000000000000
Jan  5 07:17:53 qlbqp1 kernel: RDX: 0000000000000000 RSI:
0000000000000082 RDI: ffffffff8049276c
Jan  5 07:17:53 qlbqp1 kernel: RBP: 0000000000000000 R08:
ffff8101043e2000 R09: ffff8101043e3ecc
Jan  5 07:17:53 qlbqp1 kernel: R10: ffff810001014f00 R11:
ffff810001014f00 R12: 0000000000000000
Jan  5 07:17:53 qlbqp1 kernel: R13: 0000000000000010 R14:
0000000000000001 R15: 0000001100000000
Jan  5 07:17:53 qlbqp1 kernel: FS:  0000000000000000(0000)
GS:ffff81010439cec0(0000) knlGS:0000000000000000
Jan  5 07:17:53 qlbqp1 kernel: CS:  0010 DS: 0018 ES: 0018 CR0:
000000008005003b
Jan  5 07:17:53 qlbqp1 kernel: CR2: 00000000033760c8 CR3:
00000000b12c8000 CR4: 00000000000006e0
Jan  5 07:17:53 qlbqp1 kernel:
Jan  5 07:17:53 qlbqp1 kernel: Call Trace:
Jan  5 07:17:53 qlbqp1 kernel:  [<ffffffff80186d1f>]
acpi_processor_idle+0x1a6/0x463
Jan  5 07:17:53 qlbqp1 kernel:  [<ffffffff80186b79>]
acpi_processor_idle+0x0/0x463
Jan  5 07:17:53 qlbqp1 kernel:  [<ffffffff80186b79>]
acpi_processor_idle+0x0/0x463
Jan  5 07:17:53 qlbqp1 kernel:  [<ffffffff80048b85>] cpu_idle+0x95/0xb8
Jan  5 07:17:53 qlbqp1 kernel:  [<ffffffff800767c7>]
start_secondary+0x45a/0x469
Jan  5 07:17:53 qlbqp1 kernel:
Jan  5 07:17:53 qlbqp1 kernel: BUG: soft lockup - CPU#5 stuck for 10s!
[domproc:3645]
Jan  5 07:17:53 qlbqp1 kernel: CPU 5:
Jan  5 07:17:53 qlbqp1 kernel: Modules linked in: ipv6 xfrm_nalgo
crypto_api sunrpc dm_mirror dm_mod video sbs backlight i2c_ec i2c_core
button battery asus_acpi acpi_memhotplug ac parport_pc lp parport
ata_piix libata shpchp i5000_edac bnx2 ide_cd edac_mc e1000e cdrom
serio_raw pcspkr sg megaraid_sas sd_mod scsi_mod ext3 jbd ehci_hcd
ohci_hcd uhci_hcd
Jan  5 07:17:53 qlbqp1 kernel: Pid: 3645, comm: domproc Not tainted
2.6.18-92.1.18.el5 #1
Jan  5 07:17:53 qlbqp1 kernel: RIP: 0010:[<ffffffff80064ba4>]
[<ffffffff80064ba4>] .text.lock.spinlock+0x2/0x30
Jan  5 07:17:53 qlbqp1 kernel: RSP: 0018:ffff8100b8099f00  EFLAGS:
00000282
Jan  5 07:17:53 qlbqp1 kernel: RAX: 0000000000000002 RBX:
0000000000000001 RCX: 0000000000000002
Jan  5 07:17:53 qlbqp1 kernel: RDX: ffff8101269e7c10 RSI:
0000000000010002 RDI: ffff8101275c30d0
Jan  5 07:17:53 qlbqp1 kernel: RBP: 000000000000000e R08:
00040e09096000e0 R09: 0000000000000001
Jan  5 07:17:53 qlbqp1 kernel: R10: 0000000000000025 R11:
0000000000000800 R12: 0000000049620877
Jan  5 07:17:53 qlbqp1 kernel: R13: 00000000f2cea28a R14:
00007fff95c0ec40 R15: 0000000000000008
Jan  5 07:17:53 qlbqp1 kernel: FS:  00002abe14e9f670(0000)
GS:ffff81012fc1e540(0000) knlGS:0000000000000000
Jan  5 07:17:53 qlbqp1 kernel: CS:  0010 DS: 0000 ES: 0000 CR0:
000000008005003b
Jan  5 07:17:53 qlbqp1 kernel: CR2: 0000000015aebff0 CR3:
00000000b8087000 CR4: 00000000000006e0
Jan  5 07:17:53 qlbqp1 kernel:
Jan  5 07:17:53 qlbqp1 kernel: Call Trace:
Jan  5 07:17:53 qlbqp1 kernel:  [<ffffffff80113566>] ipc_lock+0x2c/0x3f
Jan  5 07:17:53 qlbqp1 kernel:  [<ffffffff80114086>]
do_msgsnd+0x81/0x315
Jan  5 07:17:53 qlbqp1 kernel:  [<ffffffff8005d28d>] tracesys+0xd5/0xe0
Jan  5 07:17:53 qlbqp1 kernel:
Jan  5 07:24:30 qlbqp1 ntpd[3149]: synchronized to 172.18.40.3, stratum
2
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
