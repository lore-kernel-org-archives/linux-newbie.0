From: Adam Saeed <adam.saeed@gmail.com>
Subject: booting error
Date: Sun, 7 Nov 2004 07:17:59 +0500
Message-ID: <6e9eecc804110618178f3a3dc@mail.gmail.com>
Reply-To: Adam Saeed <adam.saeed@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have RED HAT 9.0 , I am getting problem while booting.
i have lilo,  i used the following command:
mv /etc/lilo.conf   /dev/null
then install grub.
after rebooting the maching grub was there.. it starts booting my
machine... but after some time it gives these errors:

Mounting Proc File system: dup2: bad file or desriptor name [failed]
grep: no such file or directory
Configuring kernel parameter dup2: bad file or desriptor name [failed]   

Setting Clock dup2: bad file or desriptor name [failed]     
load default keymap(us)   /etc/rc.d/rc.sysinit   
line:162: /dev/null Read Only File System

Setting hostname localhost dup2: bad file or desriptor name    [Failed]
/etc/rc.d/rc.sysinit :line 173: /dev/null read only filesystem [failed]
/etc/rc.d/rc.sysinit :line 173: /dev/null read only filesystem [failed]

Initialising usb controller : dup2: bad file or desriptor name  [failed]

/etc/rc.d/rc.sysinit 184 /dev/null read only filesystem
/etc/rc.d/rc.sysinit 184 /dev/null read only filesystem
/etc/rc.d/rc.sysinit 200 /dev/null read only filesystem  [failed]

awk:cmd:line2:fatal:cannot open /proc/mounts for reading (no such file)
checking root file system : dup2: bad file or desriptor name  [failed]

any suggestion:
Thanks 
Adam
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
