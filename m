From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: detecting eth0 with fedora core 2
Date: Tue, 15 Feb 2005 16:18:53 -0500
Message-ID: <4212673D.3090203@cwazy.co.uk>
References: <Pine.LNX.4.44.0502151328480.17383-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <Pine.LNX.4.44.0502151328480.17383-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:
> Hello,
> 
> We got a new machine at work with an intel P4@2.8GHz from Dell [model:  
> Optiplex GX280] with an Intel broadcom(r) NIC. I installed fedora core 2
> by replacing the windows partition, which installed painlessly. 
> 
> However, I am unable to "see" eth0 via a /sbin/ifconfig eth0 (I get a
> mesasage saying eth0 not found). I could'nt find any info in
> /var/log/messages indicating whether the device was detected or not. How
> can I try to detect this device and obtain its MAC-address?
> 
> 
> 

First off, let's see what you have.  Could you please post the output of dmesg and 
lspci?

Have you installed X?  If so, you can use system-config-network to set it up - 
provided that the NIC is supported.  If not, NDISwrapper is called for.

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
