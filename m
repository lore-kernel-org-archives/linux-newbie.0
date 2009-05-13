From: peansen ken <qmh524@gmail.com>
Subject: timer interrupt handled by CPU0 only
Date: Wed, 13 May 2009 17:01:48 +0900
Message-ID: <6f66b81c0905130101t6629c96co366ff1e44890d50@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=p77pgjwx0bp4/2HQvnUzrm1t9tXf5G1eNoVe70hp/kw=;
        b=BQI/FcpT7HlCLOQJe9eUhvo7Iqz2eMKfIpn1uLoELhozML0XmLnzTxiy7Vg1WqtPfB
         1Y0rzOKFW6vhWWZo2UL6fvKfVb/RV1YrZ+9GmRG5FuIM7cYvPi+3a0249FnD7DtfFaKv
         SYk2SWzAhN5i56yF87BRrAqjminP6RYu8ELuY=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have start irqbalance service. Why the timer interrupt only happend in CPU0
$ sudo service irqbalance status
irqbalance (pid 2390) is running...
$ cat /proc/interrupts
           CPU0       CPU1       CPU2       CPU3
  0:   21487296          0          0          0    IO-APIC-edge  timer
  1:          3          0          0          0    IO-APIC-edge  i8042
  8:          1          0          0          0    IO-APIC-edge  rtc
  9:          0          0          0          0   IO-APIC-level  acpi
 12:          4          0          0          0    IO-APIC-edge  i8042
 74:         18          0          0          0   IO-APIC-level
uhci_hcd:usb1, uhci_hcd:usb3, ehci_hcd:usb4
 82:          0          0          0          0   IO-APIC-level  uhci_hcd:usb2
 90:       1934          0   45886283          0   IO-APIC-level  libata
 98:          0          0          0          0   IO-APIC-level  libata
106:        120          0          0   22824923         PCI-MSI  eth0
169:      16933          0    9370507          0   IO-APIC-level  ioc0
NMI:      43241      26776      33934      29946
LOC:   21487192   21487118   21487046   21486887
ERR:          0
MIS:          0
$ uname -a
Linux xxx 2.6.18-53.el5 #1 SMP Mon Nov 12 02:14:55 EST 2007 x86_64
x86_64 x86_64 GNU/Linux
$ cat /proc/cpuinfo
processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 23
model name	: Intel(R) Xeon(R) CPU           L5410  @ 2.33GHz
stepping	: 6
cpu MHz		: 2333.339
cache size	: 6144 KB
physical id	: 0
siblings	: 4
core id		: 0
cpu cores	: 4
fpu		: yes
fpu_exception	: yes
cpuid level	: 10
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov
pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm syscall nx lm
constant_tsc pni monitor ds_cpl vmx est tm2 cx16 xtpr lahf_lm
bogomips	: 4669.93
clflush size	: 64
cache_alignment	: 64
address sizes	: 38 bits physical, 48 bits virtual
power management:

processor	: 1
vendor_id	: GenuineIntel
cpu family	: 6
model		: 23
model name	: Intel(R) Xeon(R) CPU           L5410  @ 2.33GHz
stepping	: 6
cpu MHz		: 2333.339
cache size	: 6144 KB
physical id	: 0
siblings	: 4
core id		: 1
cpu cores	: 4
fpu		: yes
fpu_exception	: yes
cpuid level	: 10
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov
pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm syscall nx lm
constant_tsc pni monitor ds_cpl vmx est tm2 cx16 xtpr lahf_lm
bogomips	: 4666.62
clflush size	: 64
cache_alignment	: 64
address sizes	: 38 bits physical, 48 bits virtual
power management:

processor	: 2
vendor_id	: GenuineIntel
cpu family	: 6
model		: 23
model name	: Intel(R) Xeon(R) CPU           L5410  @ 2.33GHz
stepping	: 6
cpu MHz		: 2333.339
cache size	: 6144 KB
physical id	: 0
siblings	: 4
core id		: 2
cpu cores	: 4
fpu		: yes
fpu_exception	: yes
cpuid level	: 10
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov
pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm syscall nx lm
constant_tsc pni monitor ds_cpl vmx est tm2 cx16 xtpr lahf_lm
bogomips	: 4666.69
clflush size	: 64
cache_alignment	: 64
address sizes	: 38 bits physical, 48 bits virtual
power management:

processor	: 3
vendor_id	: GenuineIntel
cpu family	: 6
model		: 23
model name	: Intel(R) Xeon(R) CPU           L5410  @ 2.33GHz
stepping	: 6
cpu MHz		: 2333.339
cache size	: 6144 KB
physical id	: 0
siblings	: 4
core id		: 3
cpu cores	: 4
fpu		: yes
fpu_exception	: yes
cpuid level	: 10
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov
pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm syscall nx lm
constant_tsc pni monitor ds_cpl vmx est tm2 cx16 xtpr lahf_lm
bogomips	: 4666.54
clflush size	: 64
cache_alignment	: 64
address sizes	: 38 bits physical, 48 bits virtual
power management:

$
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
