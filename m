From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: not getting command prompt at the console
Date: Thu, 22 Feb 2007 15:19:10 +0530
Message-ID: <b115cb5f0702220149wfbfc051qc8d0106b9e4ed98d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=FstoySg6Hex1mY1dPikbWrVnfC93EYXaY4m+14cseKScwDz+AdlfNc6+FfZiMmq7ArPK16DVV0gDE1AoovCiW56sHznue35hE4PhWPN9mZ/ayY3Q6YabStWP9dJwuoxeHp+F1qoAnWx7iXK7m3bBNIHpCAh7DozER2R5BEChlh4=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>, linux-mips@linux-mips.org

Hi All,

I just finished porting linux kernel 2.6.15 to a MIPS based board. The
board now boots up beautifully ... and here is the console log:


========================================
<snip>
......
VFS: Disk quotas dquot_6.5.1
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Initializing Cryptographic API
io scheduler noop registered
io scheduler anticipatory registered
io scheduler deadline registered
io scheduler cfq registered
rtc: SRM (post-2000) epoch (2000) detected
Real Time Clock Driver v1.12
Serial: 8250/16550 driver $Revision: 1.90 $ 1 ports, IRQ sharing disabled
serial8250: ttyS0 at I/O 0x3f8 (irq = 4) is a ST16654
RAMDISK driver initialized: 16 RAM disks of 4096K size 1024 blocksize
Uniform Multi-Platform E-IDE driver Revision: 7.00alpha2
ide: Assuming 50MHz system bus speed for PIO modes; override with idebus=xx
mice: PS/2 mouse device common for all mice
NET: Registered protocol family 2
IP route cache hash table entries: 512 (order: -1, 2048 bytes)
TCP established hash table entries: 2048 (order: 1, 8192 bytes)
TCP bind hash table entries: 2048 (order: 1, 8192 bytes)
TCP: Hash tables configured (established 2048 bind 2048)
TCP reno registered
TCP bic registered
Diplomat-IP FE device reset...
Diplomat-IP FE init ok, Rx buffer=0x8038dba8, Tx buffer=0x803adba8.
Warning: FE driver bd table wrong,old bd_id_r=0  new bd_id_r=15
IP-Config: Guessing netmask 255.255.255.0
IP-Config: Complete:
      device=eth0, addr=192.168.1.75, mask=255.255.255.0, gw=255.255.255.255,
     host=192.168.1.75, domain=, nis-domain=(none),
     bootserver=255.255.255.255, rootserver=192.168.1.76, rootpath=
Looking up port of RPC 100003/2 on 192.168.1.76
Looking up port of RPC 100005/1 on 192.168.1.76
VFS: Mounted root (nfs filesystem).
Freeing prom memory: 0kb freed
Freeing unused kernel memory: 144k freed
Algorithmics/MIPS FPU Emulator v1.5
===========================================

Next, I expected to see a command prompt which never comes. At this
point if I debug, I find the processor executing the idle process.

I am successfully hable to telnet to the board and fire whatever
commands I want though. How do I bring the prompt to the serial
console?

My root FS seems OK since the same root FS is working for the same
board for an ancient kernel (2.4.20)

Any ideas, anyone?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
