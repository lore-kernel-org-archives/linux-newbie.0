From: Peter <heisspf@skyinet.net>
Subject: Re: CD-RW-Drive
Date: Mon, 3 Jan 2005 11:26:35 +0800
Message-ID: <20050103112635.6dce0659@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On 
Peter H. <heisspf@skyinet.net> wrote:

> Slackware 10, Kernel 2.4.26
> 
> got myself an Asus Atapi CD-RW-Drive and I am not sure if this was the right
> choice for Linux. I was able to make it work following the instruction of
> the program xcdroast, however, some things seem strange.

> I always get error messages telling not to use atapi instead scsi.
> 
> I had a CD with picture files on. When I copied them to the HD I can't open 
> them and copying back to the CD I can't open them as well any longer. In
> fact I can not mount the CD anymore. Only xcdroast can.

> $ mount /mnt/cdrom
> mount: Not a directory
> 
> Trying too boot Knoppix 3.4 from the CD I get only a blank screen. Booting 
> from CD and then switching to HD, Knoppix works alright.
> 
> It seems that xcdroast can only write .wav and .iso files?????
> 
> Questions:
> 
> Is there a better CD-RW-Drive for Linux than Asus? The shop is willing to 
> exxchange.
> 
> Are there better programs than xcdroast to R+W and which?
> 

The problem got solved, the CD got damaged.

Since xcdroast was not found in Slackware I installed the one from Fedora 2.
Before I tried the program I had checked the CD, I could mount it and see the
files on it. I followed the instructions of xcdroast on what to do with Atapi
drives including putting 'append "/dev/hdc=ide-scsi"' into lilo.conf and run
lilo.
I then copied the folder on the CD to the HD and wrote another folder from the
HD to the CD using xcdroast. After that the CD could not be mounted anymore.
It looks like the CD was roasted by xcdroast. Now I understand the name of the
program.

On the advise of the various replies I installed in slackware k3b from Fedora
2. It looked as if the installation was not right. I went then into the Fedora
box from where either in xcdroast or 3kb a message showed that the CD is
probably defective.

I then downloaded k3b...bz2 installed it in slackware got myself new CDs and
the programs works like a dandy.

What is still puzzling is why a different CD drive would give a blank screen
when Knoppix is run from the CD only. I solved that by running it in expert
mode configuring the monitor.

Many thanks again
-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
