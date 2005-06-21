From: qwms-avib@dea.spamcon.org
Subject: Re: Peculiar problem mounting a harddrive
Date: Wed, 22 Jun 2005 07:39:53 +1200
Message-ID: <20050622073953.16d908f4.qwms-avib@dea.spamcon.org>
References: <4EE0CBA31942E547B99B3D4BFAB348115AB462@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Received: from localhost
 (203-167-171-240.dialup.clear.net.nz [203.167.171.240]) by smtp1.clear.net.nz
 (CLEAR Net Mail) with SMTP id <*Email Address Suppressed*>; Wed,
 22 Jun 2005 07:38:48 +1200 (NZST)
In-reply-to: <4EE0CBA31942E547B99B3D4BFAB348115AB462@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: qck0-92lj@dea.spamcon.org
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

Mukund JB. wrote:
>
> I have edited the /etc/fstab at as follows:-
> 
> 	Dev/hdb1	/home/LinuxH1	auto	defaults	0 0
> 
> But, I am able to mount the device with the mount command as follows
> 
> 	mount /dev/hdb1 /home/LinuxH1
> 
> Can someone suggest me what cont be the problem? 

Make sure you have  /dev/hdb1  *not*  Dev/hdb1
Remove auto.

Cheers,
Steven

____________________________
http://www.basiclinux.com.ru
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
