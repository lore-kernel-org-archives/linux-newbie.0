From: "Tom Beer" <mailings@analogon.com>
Subject: Hard Drive - 2nd try
Date: Fri, 17 May 2002 20:58:09 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <010101c1fdd4$cb130540$0901a8c0@system>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

first Ray, thanks for your reply, but Conditions have changed now.
The problem is as follows:
One drive (as mentioned in the other mail)
is corrupt. On this drive resides the swap partition
and another, for system purposes unimportant data
partition. These are labeled in /etc/fstab
/dev/hdb6 swap 
/dev/hdb5 /unit

I replaced this disk with a new one with different size. However, I
cant boot or start Yast or format the drive with a 
swap partition. There I'm in a turning cycle. 
What advice I would need is how to
format the new drive from the rescue mode (all
commands availble dd, mkswap, and so on),
place a swap partition of the size of 128MB on it
and another partition with the rest of the free space.
It would be great if anyone may provide me how to 
accomplish this.

Thanks in advance Tom










-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
