From: cr <cr@orcon.net.nz>
Subject: Re: Can't see my drives
Date: Fri, 23 Aug 2002 21:25:26 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020823083232.D8D3B50D6F@smtp.orcon.net.nz>
References: <LAW2-F63qaJY4kJSFsx00019f0a@hotmail.com>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <LAW2-F63qaJY4kJSFsx00019f0a@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: grottoBoy rant <stylerzz@hotmail.com>, linux-newbie@vger.kernel.org

On Friday 23 August 2002 03:09, grottoBoy rant wrote:
> Hi,
>
> My fstab file is set the same, I'm on RH7.2...
>
> During boot, do you see the device recognized.
Yes, there's some message about it  (can't recall specifics without rebooting)

>
> Anything showing related to /mnt/(dev) that seems funny if you enter the
> command dmesg, or tail /var/log/messages?

dmesg shows it as hdd (which I think is correct, it's the slave on the 
secondary IDE controller).   Nothing that looks suspicious though.

> Maybe you could doublecheck permissions on the device
> ls -l cdrom would show permissions, and should show /dev/cdrom linked to
> /dev/hd*, you can then check permissions on /dev/hd*
>
> On my box brw-rw---- for /dev/hdc

Same for mine from /dev/hda to /dev/hdd

> lrwxrwxrwx for /dev/cdrom
Same for mine.

I rather suspect fstab may be wrong...   

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
