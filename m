From: Girish H <hhgirish@yahoo.com>
Subject: PCI express hot plug issue
Date: Wed, 23 Jan 2008 15:39:46 -0800 (PST)
Message-ID: <470930.59881.qm@web39812.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
        I'm trying to use the hot plug feature of
PCI-PCIE bridge using pciehp.ko hot plug driver. I see
the following issues and experiences after workarounds
employed. 

The bridge chip is from Pericom PI7C9X110 and bridge
is configured in reverse mode i.e. PCI to PCI express.
When I try to load the kernel driver i.e., PCIE root
port driver it fails to load. On debugging this driver
loading sequence I see that init method is called and
the probe method (pcie_port_device_probe fn) returns
with error code ENODEV. Debugging revealed that the
bridge reported device/port type as 80h i.e. PCI/PCIx
to Express bridge,  in its PCIExpress capability
register of PCIexpress capability structure.  
Is this correct reporting by bridge? 
If yes, is PCIe root port driver needed to handle this
setting also? 
For comparison purposes I found a server box having
Intel South bridge chip which is PCI express to
PCI/PCI-x mode device i.e, forward bridge mode
operation. This also reports device port type as 07h
which is again bridge device but unfortunately it
didn't have a  HP controller on it. 
Gurus, Please comment here with yes or no so that
either I can use a s/w fix or make the vendor to
report expected value in its config table.

Next issue: 
I just put a hack specific to Pericom vendor and
device id to get past this issue in loading PCIe root
port driver. With this root port driver got loaded
successfully. Then I tried to load pciehp hot plug
driver. Again this driver's probe method failed as
this also checks for device/port type to be either
Root port or Downstream port. 
  So does bridge need to report it as a root port/down
stream port for hot plug capability?
 
From board layout perspective we plan to use this
bridge as a secondary bridge i.e. as another south
bridge device. So from my understanding of PCI specs
this value should NOT be root port. If you disagree
please comment here.

Again with my hack I got past this issue but the probe
method failed as there was no HP methods present in
ACPI bios name space. I got around this method by
using force flag for loading the driver. The hot plug
driver works fine with all device removal/insertion
issues but this raises basic question next. For hot
plug to work properly either _OSC or _OSHP method
should be supported in ACPI BIOS name space. I don't
see these in dsdt file generated for BIOS we are
using, then how are the hot plug interrupts being
captured by Linux kernel? 

Thanks in advance.

regards
Girish Handral



      ____________________________________________________________________________________
Looking for last minute shopping deals?  
Find them fast with Yahoo! Search.  http://tools.search.yahoo.com/newsearch/category.php?category=shopping
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
