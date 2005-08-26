From: Bryan <bryanh@supportteam.net>
Subject: Re: where do folders reside on partition
Date: Fri, 26 Aug 2005 02:56:37 -0500
Message-ID: <430ECB35.9070808@supportteam.net>
References: <20050825055430.80228.qmail@web40627.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050825055430.80228.qmail@web40627.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: rekha vn <vidiyala_r@yahoo.com>
Cc: linux-newbie@vger.kernel.org

rekha vn wrote:

>how can i know the hard disk partition in which the
>various folders reside? 
>the "find" command is giving only the path and not the
>partition on which the folder resides.
>
>
>		
>__________________________________ 
>Yahoo! Mail for Mobile 
>Take Yahoo! Mail with you! Check email on your mobile phone. 
>http://mobile.yahoo.com/learn/mail 
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>
You may also want to try the mount command, although df gives nicer output.

apollo:~
12 $ mount
/dev/hda6 on / type ext2 (rw)
none on /proc type proc (rw)
/dev/hda1 on /boot type ext2 (rw)
/dev/hdc5 on /home type ext2 (rw)
/dev/hda5 on /usr type ext2 (rw)
/dev/hda7 on /var type ext2 (rw)
none on /dev/pts type devpts (rw,gid=5,mode=620)

Bryan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
