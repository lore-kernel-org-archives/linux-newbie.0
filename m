From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: A way to transfer drives?
Date: 31 Oct 2002 14:52:52 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036075973.2322.105.camel@zebra.vil.ite.mee.com>
References: <200210310853.08719.1stflight@ameritech.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210310853.08719.1stflight@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 1stFlight <1stflight@ameritech.net>
Cc: linux newbie <linux-newbie@vger.kernel.org>

Connect the new drive in place as the secondary. 
Boot as normal. 
Use fdisk as appropriate on the new drive to set up your partitions as
you want them.
Create file systems on the partitions you have created using whatever
file system you are using (eg Ext3). This does not have to be the same
as the previous FS you used.

To copy from one place to another (including sub-dirs) you can use find
and cpio like this:

cd <wherever you are copying _from_
find . -print | cpio -pmudv <wherever you want to put the files>

eg:

cd /usr
find . -print | cpio -pmudv /mnt/newusr


To do root, you can use grep in between the commands:

cd /
find . -print | grep -v newdisk | cpio -pmudv /mnt/newdisk



Paul.


On Thu, 2002-10-31 at 13:53, 1stFlight wrote:
>  I'm looking for a way to upgrade my HD and maintain file/directory structure. 
> I've got a 20GB  with partitions for / /home /usr how can I copy/clone this 
> drive over to it's 60B replacement? Thanks!
> 
>                   												Darryl
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
