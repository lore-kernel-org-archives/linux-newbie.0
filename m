From: Greg KH <greg@kroah.com>
Subject: Re: Problem while inserting pciehp (PCI Express Hot-plug) driver
Date: Tue, 12 Jul 2005 15:52:25 -0700
Message-ID: <20050712225225.GA29690@kroah.com>
References: <1e2adab705071202015fb9aa50@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1e2adab705071202015fb9aa50@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: rajatj@noida.hcltech.com
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org, rajatxjain@yahoo.com

On Tue, Jul 12, 2005 at 06:01:22PM +0900, Rajat Jain wrote:
> Hi,
> 
> I'm trying to use the PCI Express Hot-Plug Controller driver
> (pciehp.ko) with Kernel 2.6 so that I can get hot-plug events whenever
> I add a card to my PCI Express slot.
> 
> I built the driver as a module, and am trying to load it manually
> using modprobe. However, when trying to insert, I'm getting the
> following error:
> 
> pciehp: acpi_pciehprm:\_SB.PCI0 _OSC fails=0x5
> pciehp: Both _OSC and OSHP methods do not exist
> FATAL: Error inserting pciehp
> (/lib/modules/2.6.9-5.18AXcustom-hotplug/kernel/drivers/pci/hotplug/pciehp.ko):
> No such device

Your bios does not support pci express hotplug.  Are you sure you have
pci express hotplug hardware in your system?  If so, contact your bios
vendor to get an updated version.

Good luck,

greg k-h
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
