From: Ray Olszewski <ray@comarre.com>
Subject: Re: extra ordinary installation
Date: Wed, 15 May 2002 10:50:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020515175042.00ebc114@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-2?B?TWF0ZXVzeiCjb3Nrb3Q=?= <m.loskot@chello.pl>, linux-newbie@vger.kernel.org

Were I in your shoes, I would do one of two things:

1. Don't reinstall at all. Instead, put the new HD on the other IDE channel,
make some partitions and put filesystems on them, and mount those partitions
in useful places (like /home) after copying the current contents of those
mount points to the corresponding partitions (mounted for this purpose at
some temporary mount points) on the new drive.

2. Do a fresh install of Linux on the new HD, then mount the old one (either
temporarily or permanently) on the other IDE channel. Copy over from the old
HD only local content and customization stuff.

As a loyal Debian user, I have no recommendation between RH and Slackware
... except that whatever distro you choose, you should use the latest
version (for RH, that's 7.3; for Slackware, 8.0), including ALL security
patches that are available online for it.

At 07:27 PM 5/15/02 +0200, =?ISO-8859-2?B?TWF0ZXVzeiCjb3Nrb3Q=?= wrote:
>Hello,
>
>I have some question:
>
>I have some machine with  RH 7.2 on 10 GB hard drive.
>But I would like to change this HDD to 60 GB (I have 60 GB samsung
>drive).
>
>I think there are two ways to do it:
>
>1) Export RH7.2 from  10 GB drive to 60 GB drive using PartImage
>software (www.partimage.org).
>
>2) Install new OS (I prefer Slackware)
>
>What do you think,which solutin is the best ?
>Which solution has most chances to work fine ?
>
>I could choose First one, because there are many services and software
>installed on RH 7.2 (dhcp, named, www, mysql, etc.)
>
>But I prefer Slackware.
>But I know that it is a lot of work to install this services etc.
>I haven't a lot of time.
>
>What do you recommend ?
>I'm affraid of First solution because I didn't export any OS by
>PartImage.
>
>Any advice ?


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
