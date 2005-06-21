From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: Peculiar problem mounting a harddrive
Date: Tue, 21 Jun 2005 18:10:34 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB348115AB462@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Dear all,

I have a peculiar problem mounting a hard drive on the mount point
"/mnt/LinuxH1".

I have edited the /etc/fstab at as follows:-

	Dev/hdb1	/home/LinuxH1	auto	defaults	0 0

But, I am able to mount the device with the mount command as follows

	mount /dev/hdb1 /home/LinuxH1

Can someone suggest me what cont be the problem? Why am I not able to
mount the device at mount time using the fstab entry?

Regards,
Mukund Jampala




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
