From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: tar for "full" floppy backup?
Date: Sat, 07 Dec 2002 15:03:07 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF253FB.FCE749BE@gelm.net>
References: <Pine.LNX.4.50.0212071157090.5141-100000@filesrv1.baby-dragons.com> <3DF305BD.3BA2C910@ihug.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

 I did

tar -cyvf /boot /dev/fd0
 and 
/mnt# tar -xyvf /dev/fd0
 and it created 
/mnt/boot/
 and all the files from /boot appeared in /mnt/boot

 Next I tried
tar -cvMf /dev/fd0 /etc
 and after some floppy action, I was prompted:

"Prepare volume #2 for /dev/fd0 and hit return:"

I'd recommend running 'badblocks' on the diskettes
and using only those that report 0 bad blocks.
;-)

tar --version
tar (GNU tar) 1.13
 ...

HTH, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
