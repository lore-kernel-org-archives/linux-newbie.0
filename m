From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: installation of Linux over a USB external HDD
Date: Mon, 22 Nov 2004 08:58:31 +0530
Message-ID: <1101094111.3783.12.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi,
  I tried installing Linux over an external HDD. First I tried with
Fedora core 2 and its diskdruid didnt support the USB HDD. Then I used
RH 8.0, with its fdisk, I was able to partition the HDD and write the
bootloader(GRUB) into the MBR of the same external HDD. It was booting
perfectly also. But at a stage of booting it showed some resouce
conflict and finally the message

hda: CHS <value>/<value>/<value> from BIOS ignored.
The values were some numeric ones and I dont remember them exactly. And
in my BIOS there is no option to disable my internal HDD, and as it is a
laptop, I cant pullout its cord also.

What is the problem? What is the solution for that??

Please do help!!
-- 
With regards,

Jagadeesh Bhaskar P
R&D Engineer
HCL Infosystems Ltd
Pondicherry
INDIA

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
