From: james niland <bareego@yahoo.com>
Subject: Re: CDParanoia not copying from /dev/cdrom
Date: Sun, 22 Dec 2002 16:24:33 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021223002433.95073.qmail@web11401.mail.yahoo.com>
References: <3E05BE15.6090000@mega.ist.utl.pt>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E05BE15.6090000@mega.ist.utl.pt>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org



--- "Paulo Jorge O. C. Matos" <pocm@mega.ist.utl.pt>
wrote:
> Hi all,
> 
> I have a /dev/cdrom pointing to /dev/sr1 since I had
> /dev/hdd to 
> ide-scsi. I can listen to audio cds through
> /dev/cdrom using the Gnome 
> CD Player but while doing:
> pdestroy@localhost:/mnt/old/audiowrite$ cdparanoia
> -vsQ
> cdparanoia III release 9.8 (March 23, 2001)
> (C) 2001 Monty <monty@xiph.org> and Xiphophorus
> 
> Report bugs to paranoia@xiph.org
> http://www.xiph.org/paranoia/
> 
> Checking /dev/cdrom for cdrom...
> 	Testing /dev/cdrom for cooked ioctl() interface
> 		/dev/sr1 is not a cooked ioctl CDROM.
> 	Testing /dev/cdrom for SCSI interface
> 		No generic SCSI device found to match CDROM device
> /dev/sr1
> 
> 
> Any ideas?
> 
Which user you tried this with ?
See if you get the same problem with root.
If not, it's a permission problem for your device.

James

__________________________________________________
Do you Yahoo!?
Yahoo! Mail Plus - Powerful. Affordable. Sign up now.
http://mailplus.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
