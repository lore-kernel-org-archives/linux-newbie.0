From: Jim Nelson <james4765@verizon.net>
Subject: Re: No init found
Date: Fri, 29 Oct 2004 05:30:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41820DA6.3050708@verizon.net>
References: <20041029065819.2178A44BBB@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041029065819.2178A44BBB@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Peter H." <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

Peter H. wrote:
> Hi,
> 
> Slackware 10.
> 
> I am trying to change my hard drive. I duly copied all partitions and 
> files to the new drive with 'tar -C "$1" -cOl . | tar -C "$2" -xpf - '. Now 
> when I boot I get:
> 
> ....
> Freeing unused kernel memory: 120 K freed.
> Warning unable to open an initial console.
> Kernel panic: no init found. Try passing init= option to kernel.
> 
> When I boot using the rescue disk after
> 
> ....
> Freeing unused kernel memory: 120 K freed.
> 
> it continues with
> INIT: version 2.84 booting ...
> 
> to fully boot and I can use the installation flawlessly.
> 
> init is at /sbin/init.
> 
> Where is the hang-up ?
> 
> Thanks & regards 
> 

Is the new hard drive in the same location as the old one?  i.e. on IDE drives, 
both the old and new hard drives were master drives on the primary interface, and 
for SCSI drives, does the new hard drive have the same SCSI ID on the same adapter 
card in the same PCI slot as the old one?

If not, you will have to modify lilo.conf to reflect the location of the new hard 
drive. "man lilo.conf" and "info lilo.conf" have a great deal of information about 
how to set the root partition configuration in lilo.  Make sure you run the "lilo" 
command as root before rebooting, since just modifying lilo.conf will not change 
the configuration in the boot sector.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
