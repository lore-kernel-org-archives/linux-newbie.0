From: Brian Bilbrey <bilbrey@orbdesigns.com>
Subject: Re: How do I do a surface scan of a CDROM?
Date: Fri, 13 Sep 2002 07:24:54 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209130724.54174.bilbrey@orbdesigns.com>
References: <CPIMSSMTPU045A8JB0i00002fe5@cpimssmtpu04.email.msn.com>
Reply-To: bilbrey@orbdesigns.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU045A8JB0i00002fe5@cpimssmtpu04.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Friday 13 September 2002 00:29, Alan Womack wrote:
> like to run a full surface scan of the cd to see if it gets read sometimes,
> but not others.

Well, how about using readcd, a dd-like tool for extracting disc images for 
copying purposes. It's a part of the cdrecord suite, and does extensive 
retries on errors. You *do* need to have your cd configured as a scsi device, 
but this works fine on my IDE burner (which appears as scsi due to 
hdc=ide-scsi in the boot string, and the correct options enabled in the 
kernel).

type man readcd for the details. There are examples of usage in the manpage.

Then you can just do a loopback mount of the image file (if readcd manages to 
read the disc effectively). To mount the file cd_image created above on the 
directory /cdrom, give the command:

mount -t iso9660 -o ro,loop=/dev/loop0 cd_image /cdrom

HTH,

.brian

-- 
Brian Bilbrey - bilbrey@orbdesigns.com - http://www.OrbDesigns.com/
 Visit LinuxMuse - I^3 at http://www.LinuxMuse.com/ 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
