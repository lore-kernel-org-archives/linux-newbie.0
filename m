From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Editing contents of initrd
Date: Fri, 8 Sep 2006 12:31:50 +0530
Message-ID: <292693080609080001wfb242f4q41f184ea3083150c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

I want to edit the contents of initrd. For this, I extracted the
contents of my initrd:

$ mkdir /tmp/initrd
$ cd /tmp/initrd
$ gunzip -c /boot/initrd-2.6.17.img | cpio -i

And hence the contents were extracted and made the changes I wanted to
do. Now how do I wrap this changed hiereachy BACK into a valid initrd?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
