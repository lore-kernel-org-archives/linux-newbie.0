From: Edgar Alwers <edgaralwers@gmx.de>
Subject: Re: File-system Ext2 or Ext3??
Date: Sun, 12 May 2002 14:44:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02051214440201.00732@edgar>
References: <20020511204622.23285.qmail@web12806.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020511204622.23285.qmail@web12806.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Staci <spiritlover666@yahoo.com>, linux-newbie@vger.kernel.org

On Saturday 11 May 2002 22:46, Staci wrote:
> I still get forced fscks at startup, and they still find
> lots of problems I thought would be eliminated with
> ext3.

You need to be more precise. What lots of problems is fsck finding ? Please 
include the exact wording.
And did you have the problems before changing the FS ? ( " I thought would be 
eliminated with ext3" )
If you have had an unclean shutdown ( power out for instance ), FS will get 
checked on next bootup. You may get messages like "unexpected inconsistency; 
run fsck manually "
You also may need the newest version of e2fsprogs ( > 1.27 )
Have you checked that your kernel supports ext3 ( normally > 2.4.18, but not 
always the stock kernels ). 

> So I look at cfdisk for /dev/hdb, and it says those
> partitions are ext2. 

It happens in my system also, which is clean ext3. Perhaps cfdisk is not in 
the last shape !

> Is my cfdisk too old?  Did I do
> something wrong?  Both my mtab and fstab have them
> labeled (correctly?) as ext3.

Include also /etc/fstab

Regards,
Edgar

-- 
-----------------------------------
Dr.-Ing. Edgar Alwers
Mailto:edgaralwers@gmx.de

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
