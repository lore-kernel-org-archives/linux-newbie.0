From: "Paulo Jorge O. C. Matos" <pocm@mega.ist.utl.pt>
Subject: CDParanoia not copying from /dev/cdrom
Date: Sun, 22 Dec 2002 13:28:53 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E05BE15.6090000@mega.ist.utl.pt>
Reply-To: pocm@mega.ist.utl.pt
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi all,

I have a /dev/cdrom pointing to /dev/sr1 since I had /dev/hdd to 
ide-scsi. I can listen to audio cds through /dev/cdrom using the Gnome 
CD Player but while doing:
pdestroy@localhost:/mnt/old/audiowrite$ cdparanoia -vsQ
cdparanoia III release 9.8 (March 23, 2001)
(C) 2001 Monty <monty@xiph.org> and Xiphophorus

Report bugs to paranoia@xiph.org
http://www.xiph.org/paranoia/

Checking /dev/cdrom for cdrom...
	Testing /dev/cdrom for cooked ioctl() interface
		/dev/sr1 is not a cooked ioctl CDROM.
	Testing /dev/cdrom for SCSI interface
		No generic SCSI device found to match CDROM device /dev/sr1


Any ideas?

Best regards,
-- 
Paulo J. Matos : pocm(_at_)mega.ist.utl.pt
Instituto Superior Tecnico - Lisbon          WISHING YOU A MERRY
Software & Computer Engineering - A.I.        CHRISTMAS, AND A GREAT
  - > http://mega.ist.utl.pt/~pocm                               2003!!!
  ---	
	Yes, God had a deadline...
		So, He wrote it all in Lisp!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
