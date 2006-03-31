From: James Miller <jamtat@mailsnare.net>
Subject: Re: cannt open root device ?
Date: Thu, 30 Mar 2006 22:40:43 -0600 (CST)
Message-ID: <Pine.LNX.4.64.0603302233010.6607@localhost.localdomain>
References: <442C9885.8000703@gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <442C9885.8000703@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 31 Mar 2006, Bo Yang wrote:

> I know maybe my question is just a piece of cake for you , but
> I have struggled with it for 4 days , and I didn't get any answer from
> the google and the archive .
> So I came here !
>
> And my problem is that :
> I use VMware , and install gentoo linux on the vm which hold a scsi disk
> . I compile the linux kernel with scsi support in the kernel self , but
> when boot up the kernel panic with the bellow message :
> VFS: Cannot open root device "803" or unkonw-block(8,3)
> Please append a correct "root=" boot option
>
> But I have a line in my lilo.conf : root=/dev/sda3
>
> I have recompile the kernel for many times , but it panic everytime .

This is actually a VMware question more than a Linux question.  They have 
a user forum: have you tried posting about your problem there?  I have a 
little bit of experience with VMware, but you don't provide enough 
information for me to take a stab at what the problem might be.  First, is 
this a virtual disk or are you trying to use an actual scsi hardware disk 
for your Gentoo install?  I have no expereince with using a real disk or 
partition for the guest OS, only with virtual disks.  So I might not be 
able to help with that anyway.  If it's a virtual partition I can't 
understand why you would specify it as /dev/sda3.  I've always put OS's on 
the first partition of the virtual disk.  VMware presents these virtual 
disks to the host OS as scsi disks, so my experience has always been with 
systems installed to /dev/sda1.  Did you partition the (virtual?) disk and 
put /home and swap or something on the other 2 partitions?  Anyway, I'm 
not even sure I can help.  Probably best to try the VMware forums.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
