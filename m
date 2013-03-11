From: ishare <june.tune.sea@gmail.com>
Subject: help with page_fault
Date: Mon, 11 Mar 2013 09:10:40 +0800
Message-ID: <20130311011040.GA2791@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=OwAOpTrjXpiFxsBe6ASNnwacYBrDuSvaLYrOWFkHvII=;
        b=Wt77Vnll0KIcuxjcCXCwKtOG8oGrgTqh2tyxrQUsUVvfYUV9EqN1gMMpnqbrHiqdOu
         0L97cVlQcUi1ATqGnl6qimDhkvlDZ+swDEqsX715WB0iAZJ7k8cIkSUL/Wi4Ts+h1z5o
         bEfTsxbO+YDo1u7OlHGGtpfynTPY18cLx1oat+3clbYXql3it4gvzJUWDxcTAOlyW6at
         lTf/L0BhPRZ2a/j4G6TlBrEd8Vd8SiUQJPg1wiGmqaXnouCc/IAm8PGuZl0gdkya6NTM
         1NdyEUj+xW4JUluzLjqNXhPfx5rmb0Tk5WXWmQmPswUGnyV/opgmqRvhaaQ7VDTymj7u
         KtRQ==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

   
   At boot stage , my kernel get into loop restart due to page_fault.
   I have catched the source . here is the backtrace :

   #3  0xc01c686e in new_inode (sb=0xc8df5800) at fs/inode.c:551
   #4  0xc01d076d in get_sb_pseudo (fs_type=0xc02e1d00, name=0xc02c3747 "futex", ops=0x0, magic=195894762) at fs/libfs.c:201
   #5  0xc015cbbf in futexfs_get_sb (fs_type=0xc02e1d00, flags=0, dev_name=0xc02c374d "futexfs", data=0x0) at kernel/futex.c:679
   #6  0xc01a62c5 in do_kern_mount (fstype=0xc02c374d "futexfs", flags=0, name=0xc02c374d "futexfs", data=0x0) at fs/super.c:718

   code  at  the frame 3  is :
   struct inode *root = new_inode(s);
   after return from  the new_inode , the root->i_dentry=(0x1,0x3).

   then calling  the function  d_instantiate(entry, root),here entry is of type struct entry*,

   this calls do list_add(&entry->d_alias, root->i_dentry),
   Obviously,this need to address the inode->i_dentry->next,which is ox3,
   but 0x3 is low address ,addressing to it causes a page_fault ,then make system  restart .


  I doubt that the returned root inode need to be initialized using a applicable i_dentry .
  If so ,what value can be used ? If not , where am I wrong?

  thanks!
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
