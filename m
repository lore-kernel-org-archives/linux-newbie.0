From: Ray Olszewski <ray@comarre.com>
Subject: Re: read-only file system
Date: Fri, 04 Oct 2002 21:18:03 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021004211126.0253a730@celine>
References: <F156rHAK6YwyLdnsODF00001cac@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F156rHAK6YwyLdnsODF00001cac@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: a a <xlsd@hotmail.com>, linux-newbie@vger.kernel.org

At 03:02 AM 10/5/02 +0000, a a wrote:
>hello
>im trying to edit a file in /etc/rc.d but it says "Read-only file system"
>how do i change it to writeable?

Depending on details you have not provided, you may not be able to change 
this (for example, if the filesystem is on a read-only medium like a CD). 
And you probably realize that you have to be root for this sort of thing.

If you can change it, the mechanism you use is the "mount" command. 
Assuming that /etc/rc.d is part of the root (/) filesystem, you would use 
(approximately - I didn't actually try this, so watch for small errors) 
this command:

         mount -n -o remount.rw /

Check "man mount" for the details behind this, and look at whatever init 
script your system uses to fsck filesystems for examples of this usage.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
