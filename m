From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: No Boot Problem
Date: Thu, 25 Jul 2002 21:38:32 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207252138.32376.sotl155360@earthlink.net>
References: <3D36DDA3.FA0F073C@gmx.net> <02072506225706.04469@unix.pa3gcu> <3D406BBB.E208E07B@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D406BBB.E208E07B@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

partitionsucceededI hope you nice people can explain to me how to get out of 
this situation.

I have a dual boot box - MS Windows 98 on hda and Linux RH6.3 on hdb.

Having problems with the Windows side (nothing new here) I decided to remove 
both hda and hdb and install a third hard drive (hd3) and the use the 
original restore disk to install windows on hd3.

First I had problems getting the restore disk to be acknowledged but on about 
the 4th boot attempt I . 

The first screen up said that the disk drive was unreadable and that i would 
have to use FDisk to remove all partions. This I did and then rebooted the 
box. 

The box then refused to boot.

I then restored the box to its original configuration by reinstalling hda and 
hdb and removing hd3. The systen still refused to boot.

I stuck Tomsrtd in and boot the box into Toms followed by a normal shut down.

I then stuck RH 7.3 install in and started an upgrade to see what would 
happen. The box finally booted into RH after 5 or 6 tries. 

I shut the upgrade down before the box upgrades keeping the original 
configuration - hopefully.

Next I attempted an install of RH to see what the  table looked liked. Here I 
received an error message that the partition table for hda the MS Windows 
side was not readable. At that point I shut the box down keeping the original 
configuration hopefully.

I again tried to boot the box normally. No Go.

Hopefully somebody has some ideas in how to boot this box.

Thanks

Frank

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
