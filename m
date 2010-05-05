From: Peter Wurmsdobler <peter@wurmsdobler.org>
Subject: mmap of 8GB reserved memory using remap_pfn_range
Date: Wed, 05 May 2010 14:15:48 +0100
Message-ID: <4BE16F84.30205@wurmsdobler.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello,

I am using 64bit Ubuntu 9.04, kernel 2.8.28, on a PC equipped with 12GB 
RAM. I would like to capture and store data into a reserved memory area, 
8GB big and above 4GB. This memory area is currently being reserved at 
boot time by passing "mem=4G memmap=8G$4G" to the kernel. (Interestingly 
enough, "free" reports only 3GB memory, a mismatch I do not quite 
understand yet.)

I wrote a small char device driver that does an ioremap of the entire 
reserved physical memory area and implements the mmap file operation 
using remap_pfn_range. A user space application succeeds in opening the 
dev file corresponding to the char driver and in calling mmap. 
Unfortunatley, when it tries to read/write to/from the mmaped area, the 
kernel is complaining with a "Corrupted page table at address ..." and a 
register dump.

This is in essence what my code does. In my char driver I #define 8GB 
reserved memory at an offset of 4GB:

	#define RAW_DATA_SIZE 0x200000000UL
	#define RAW_DATA_OFFSET 0x100000000UL

In init_modulule, I ioremap the physical memory to kernel virtual 
memory, and in addition set it to zero:

	rawdataStart = ioremap(RAW_DATA_OFFSET, RAW_DATA_SIZE);
	memset(rawdataStart, 0, RAW_DATA_SIZE);

After some parameter checking, the mmap file operation function does:

	remap_pfn_range(vma, vma->vm_start,
		(unsigned long) rawdataStart,
		RAW_DATA_SIZE, PAGE_SHARED);

In user space, the mmap call on the corresponding file descriptor still 
works:

     fd = open("/dev/rawdata", O_RDWR | O_SYNC);
     mptr = mmap(0, RAW_DATA_SIZE,
	PROT_READ | PROT_WRITE, MAP_FILE | MAP_SHARED, fd, 4096);

but the assignment "mptr[0] = 'a'" fails with the dmesg output below.

What am I doing wrong? Do I need to loop through smaller chunks when 
calling remap_pfn_range?

Help is very much appreciated.

Kind regards,
peter


[ 481.669633] rmem_test: opened
[ 481.669696] rmem_test: mmap
[ 481.717016] rmem_test: mmap OK
[ 481.717157] rmem_map: Corrupted page table at address 7f63179e1000
[ 481.717222] PGD b6471067 PUD b44eb067 PMD b55ed067 PTE 7c20011890000227
[ 481.717434] Bad pagetable: 000d [#3] SMP
[ 481.717567] last sysfs file: 
/sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
[ 481.717649] CPU 0
[ 481.717741] Modules linked in: rmem_test nfs lockd nfs_acl sunrpc 
input_polldev video output lp parport snd_hda_intel snd_pcm_oss 
snd_mixer_oss snd_pcm snd_timer snd soundcore snd_page_alloc pcspkr 
psmouse serio_raw iTCO_wdt iTCO_vendor_support usbhid nvidia(P) ohci1394 
r8169 mii ieee1394 floppy
[ 481.719030] Pid: 3781, comm: rmem_map Tainted: P D 2.6.28.paw2 #1
[ 481.719094] RIP: 0033:[<00000000004006bc>] [<00000000004006bc>] 0x4006bc
[ 481.719198] RSP: 002b:00007fff1f442ee0 EFLAGS: 00010206
[ 481.719260] RAX: 00007f63179e1000 RBX: 0000000000400730 RCX: 
0000000000000002
[ 481.719325] RDX: 00007f6517d4e9c0 RSI: 00007f6517f6e029 RDI: 
00007f6517f6e027
[ 481.719390] RBP: 00007fff1f442f00 R08: 0000000000000001 R09: 
0000000000000002
[ 481.719455] R10: 0000000000000022 R11: 00000000ffffffff R12: 
0000000000400550
[ 481.719520] R13: 00007fff1f442fd0 R14: 0000000000000000 R15: 
0000000000000000
[ 481.719586] FS: 00007f6517f666f0(0000) GS:ffffffff80a8f000(0000) 
knlGS:0000000000000000
[ 481.719667] CS: 0010 DS: 0000 ES: 0000 CR0: 000000008005003b
[ 481.719730] CR2: 00007f63179e1000 CR3: 00000000b44e5000 CR4: 
00000000000006a0
[ 481.719795] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
0000000000000000
[ 481.719860] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 
0000000000000400
[ 481.719926] Process rmem_map (pid: 3781, threadinfo ffff8800b446e000, 
task ffff8800b8cf4320)
[ 481.720007]
[ 481.720061] RIP [<00000000004006bc>] 0x4006bc
[ 481.720158] RSP <00007fff1f442ee0>
[ 481.720236] ---[ end trace e47eba847a88b683 ]---
[ 481.756598] rmem_test: released
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
