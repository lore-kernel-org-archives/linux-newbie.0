From: Hayim Shaul <hayim@post.tau.ac.il>
Subject: Re: Editing contents of initrd
Date: Sun, 10 Sep 2006 13:54:47 +0300 (IDT)
Message-ID: <Pine.LNX.4.61.0609101353370.22479@nova.cs.tau.ac.il>
References: <292693080609080001wfb242f4q41f184ea3083150c@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080609080001wfb242f4q41f184ea3083150c@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>


why not try the exact opposite?

cpio -o | gzip



On Fri, 8 Sep 2006, Daniel Rodrick wrote:

> Hi,
>
> I want to edit the contents of initrd. For this, I extracted the
> contents of my initrd:
>
> $ mkdir /tmp/initrd
> $ cd /tmp/initrd
> $ gunzip -c /boot/initrd-2.6.17.img | cpio -i
>
> And hence the contents were extracted and made the changes I wanted to
> do. Now how do I wrap this changed hiereachy BACK into a valid initrd?
>
> Thanks,
>
> Dan
>
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
>
>
> +++++++++++++++++++++++++++++++++++++++++++
> This Mail Was Scanned By Mail-seCure System
> at the Tel-Aviv University CC.
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
