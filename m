From: Kurt sys <kurt.sys@UGent.be>
Subject: D-link DFE-530tx
Date: Fri, 31 Oct 2003 17:09:46 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FA2894A.2030906@UGent.be>
Reply-To: kurt.sys@UGent.be
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi all,

I'm installing Debian Woody on a new computer. I did already installed 
Woody before with no problem, but now, I have problems configuring the 
network card ('till now, I had other network cards). As you could have 
guessed, it's a D-link DFE-530tx card. It seems none of the 'drivers' 
work for that card. I already checked the web, and it seems I should use 
'VIA Rhine' chipsets. If I try this (or another possibility, I also 
tried 'real-tek 8136' and 'tulip' and some others, but this one is the 
one that I should use), I get a 'device or resource is busy'-message. 
Anyone any idea what the possible cause can be or how I can check what's 
wrong?

tnx,
Kurt

----- modprobe via-rhine -----
/lib/modules/2.2.20-idepci/net/via-rhine.o: init_module: Device or 
resource busy
/lib/modules/2.2.20-idepci/net/via-rhine.o: insmod 
/lib/modules/2.2.20-idepci/net/via-rhine.o failed
/lib/modules/2.2.20-idepci/net/via-rhine.o: Can't locate module 2
Hint: insmod errors can be caused by incorrect module parameters, 
including invalid IO or IRQ parameters
-----


----- lspci -v -----
[... upper part cutted ...]
00:1f.0 ISA bridge: Intel Corp.: Unknown device 24d0 (rev 02)
        Flags: bus master, medium devsel, latency 0

00:1f.1 IDE interface: Intel Corp.: Unknown device 24db (rev 02) 
(prog-if 8a [Master SecP PriP])
        Subsystem: Intel Corp.: Unknown device 524c
        Flags: bus master, medium devsel, latency 0
        I/O ports at <unassigned>
        I/O ports at <unassigned>
        I/O ports at <unassigned>
        I/O ports at <unassigned>
        I/O ports at ffa0

00:1f.2 IDE interface: Intel Corp.: Unknown device 24d1 (rev 02) 
(prog-if 8f [Master SecP SecO PriP PriO])
        Subsystem: Intel Corp.: Unknown device 524c
        Flags: bus master, 66Mhz, medium devsel, latency 0, IRQ 10
        I/O ports at ec00
        I/O ports at e800
        I/O ports at e400
        I/O ports at e000
        I/O ports at dc00

00:1f.3 SMBus: Intel Corp.: Unknown device 24d3 (rev 02)
        Subsystem: Intel Corp.: Unknown device 524c
        Flags: medium devsel, IRQ 3
        I/O ports at c800

00:1f.5 Multimedia audio controller: Intel Corp.: Unknown device 24d5 
(rev 02)
        Subsystem: Intel Corp.: Unknown device e000
        Flags: bus master, medium devsel, latency 0, IRQ 3
        Memory at ffaff800 (32-bit, non-prefetchable)
        Memory at ffaff400 (32-bit, non-prefetchable)
        Capabilities: [50] Power Management version 2

01:00.0 VGA compatible controller: ATI Technologies Inc Rage 128 Pro TF 
(prog-if 00 [VGA])
        Subsystem: Unknown device 1787:0100
        Flags: bus master, stepping, 66Mhz, medium devsel, latency 32, 
IRQ 11
        Memory at f0000000 (32-bit, prefetchable)
        I/O ports at a800
        Memory at ff8fc000 (32-bit, non-prefetchable)
        Expansion ROM at ff8c0000 [disabled]
        Capabilities: [50] AGP version 2.0
        Capabilities: [5c] Power Management version 2

02:01.0 Ethernet controller: VIA Technologies, Inc.: Unknown device 3106 
(rev 86)
        Subsystem: D-Link System Inc: Unknown device 1403
        Flags: bus master, medium devsel, latency 32, IRQ 10
        I/O ports at b800
        Memory at ff9ffc00 (32-bit, non-prefetchable)
        Expansion ROM at ff9e0000 [disabled]
        Capabilities: [40] Power Management version 2
-----


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
