From: Kenneth Stephen <pgmr@austin.rr.com>
Subject: Has anyone burnt a Redhat boot CD?
Date: Mon, 5 Jul 2004 10:22:25 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.3.96.1040705101700.2702A-100000@trillian.megadodo.umb>
Reply-To: kstephen@austin.rr.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

	I downloaded the iso images for Redhat v9 from ftp.redhat.com and
burnt CD's with them. I am using xcdroast, and I expected that simply
burning the iso images would result in the first CD being bootable. That
didnt work. So I mounted the iso in the loop device and saw that there was
an isolinux.bin file in the isolinx directory. I re-burnt the CD
specifying this as the boot image and with the boot.catalog file as the
boot catalog and specified a no emulation boot. Still no dice - this time
I get a message about the checksum failure on the boot image. However,
(1) I've verified that the md5sums of the iso that I downloaded and the
md5sum provided on the ftp side matched and (2) The md5sum of the
isolinux.bin on the loop device as well as on the CD that I burnt match
too. What am I doing wrong?

Thanks,
Kenneth

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
