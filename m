From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Re: LI -lilo booting problem
Date: Mon, 29 Jul 2002 19:11:28 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207291911.28871.sotl155360@earthlink.net>
References: <3D36DDA3.FA0F073C@gmx.net> <3D4498AF.42DC0D8C@gelm.net> <3D45AD28.7623B094@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D45AD28.7623B094@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Somewhere in my far distant past I had a dual boot RH 6.0 / MS Windows system. 
I now have a dual boot RH 7.3 box.
If I recall correctly all I did to R H 6.0 box to make it read and write to 
the Win side was add the following line to fstab:

/dev/hda1    /mnt/dos    vfat    user,noauto,rw     0 0

I have added the above to the RH7.3 box but the KDE mount User Tool does not 
show that dos is mountable.

I would appreciate what ideas and guidance the experts on this list may have 
to offer.

Thanks
Frank
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
