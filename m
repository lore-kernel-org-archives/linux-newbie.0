From: Chuck Gelm <nc8q@gelm.net>
Subject: LI -lilo booting problem
Date: Thu, 25 Jul 2002 17:20:59 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D406BBB.E208E07B@gelm.net>
References: <3D36DDA3.FA0F073C@gmx.net> <200207241807.06375.linux-newbie@jimmo.com> <001601c23358$7b5bd630$e908a8c0@Viper> <02072506225706.04469@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Howdy, Y'all:

 Where can I find help with 'lilo'.
When I try to boot from hard disk, I get:

LI

 This happens with several hard disks, usually large ones of
8 gigabytes or larger. The drives are partitioned with 
 partition 1 <= 1024 cylinders,
 partition 2 is some swap, and
 partition 3 is 'the rest'.
Partition 1 is '/' and contains the entire distribution
install (Slackware v8.0).

 I've read some help files and it mentions drive geometry
problems and the 1024 cylinder limit.  I usually keep
trying different hard drives until I get one that will
boot and then I make it /dev/hda.  

The system boots fine from CD-ROM (Slackware8.0 Install)
or pre-install boot disk or post-install created lilo floppy.

:-|

Regards, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
