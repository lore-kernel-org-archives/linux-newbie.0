From: James DeVincentis <admin@nexcast.net>
Subject: Re: A way to let initramfs continue as THE final root filesystem?
Date: Tue, 03 Nov 2009 08:54:27 -0600
Message-ID: <4AF04423.70500@nexcast.net>
References: <C86899CCB10A6C4E93D5978DCB232D4B0D7545C8@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B0D7545C8@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Yes, I have done this myself when booting from a CD. I load the kernel 
and the initramfs into memory and then boot. Here is my configured 
bootline to do it:

kernel linux
append ramdisk_size=64000 initrd=base_fs init=/sbin/init root=/dev/ram0 rw

- James

On 11/3/2009 4:37 AM, Rajat Jain wrote:
> Hi,
>
> I'm trying to use an embedded cpio archieve (initramfs) to boot my
> embedded board, and I'm curious is there a way to let initramfs be the
> final root filesystem for my kernel?
>
> Thanks,
>
> Rajat
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>    
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
