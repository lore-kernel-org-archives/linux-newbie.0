From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Burning iso to disk
Date: Thu, 13 Mar 2003 10:21:45 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303131021.45642.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi All

I have downloaded the Mandrake 9.1rc2.iso to my HD.
I have attempted to burn these iso to CD by both CDRoast and by command line.

I did not ck sums but am assuming that they are good as iso were downloaded on 
line better than t3.

After placing #1 burn CD in CD Reader to start installation computer did not 
recognize CD as bootable.

Checking CD I find I have an image file on CD.

Is it possible for someone to inform me where I am making the mistake in 
converting the iso images to the correct format on the CD.

The command line command used was:
cdrecord -dev=0,2,0 -speed=12 -data MandrakeLinux-9.1rc2-CD1.i586.iso

Thanks
Frank
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
