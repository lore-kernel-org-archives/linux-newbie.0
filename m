From: Peter Garrett <peterg@fishinternet.com.au>
Subject: Re: CD-RW-Drive
Date: Wed, 29 Dec 2004 18:29:25 +1100
Message-ID: <20041229182925.72af4a68.peterg@fishinternet.com.au>
References: <20041229070643.E79E71737F@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041229070643.E79E71737F@heisspf>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wed, 29 Dec 2004 15:06:43 +0800
"Peter H." <heisspf@skyinet.net> wrote:

> Season Greetings,
> 
> Slackware 10, Kernel 2.4.26
> 
> I got myself an Asus Atapi CD-RW-Drive and I am not sure if this was
> the right 
> choice for Linux. I was able to make it work following the
> instruction of the 
> program xcdroast, however, some things seem strange.
> 
> I always get error messages telling not to use atapi instead scsi.

Since you are using a 2.4.26 kernel, you might want to try ide-scsi
emulation.  It is deprecated for 2.6.* kernels but should be fine
with yours. If your boot loader is lilo, you can put

append="hda=scsi hdb=scsi hdc=scsi" 

or whatever devices you need scsi emulation for. I have no experience
with grub, but someone will know on this list, I'm sure.
(The append line goes in  /etc/lilo.conf  - which you will of course
need to edit as root in your editor of choice. After editing it be
sure to run/sbin/lilo-v before rebooting! Otherwise your changes won't
take effect... ) The -v for running lilo is "verbose", which might be
useful if you make an error.


> 
> I had a CD with picture files on. When I copied them to the HD I
> can't open 
> them and copying back to the CD I can't open them as well any
> longer. In fact 
> I can not mount the CD anymore. Only xcdroast can.
> $ mount /mnt/cdrom
> mount: Not a directory

This is a mystery to me, sorry - maybe someone else has a suggestion.
> 
> Trying too boot Knoppix 3.4 from the CD I get only a blank screen.
> Booting 
> from CD and then switching to HD, Knoppix works alright.
> 
> It seems that xcdroast can only write .wav and .iso files?????
> 
> Questions:
> 
> Is there a better CD-RW-Drive for Linux than Asus? The shop is
> willing to 
> exxchange.
> 
> Are there better programs than xcdroast to R+W and which?

For sheer ease of use I doubt that anything beats k3b (a KDE app - but
it will of course run happily with whatever window manager/ desktop
environment you prefer) Using the command line directly is quicker,
but confusing at first. K3b is an excellent, user-friendly CD burning
GUI program, with easy dialogs and buttons. XCDroast is fine, but k3b
is easier to use, in my opinion.
> 
> Thanks & regards
>  
>    
> -- 
> Peter
> 
> -
> To unsubscribe from this list: send the line "unsubscribe
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
