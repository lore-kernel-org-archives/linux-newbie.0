From: Ray Olszewski <ray@comarre.com>
Subject: Re: Burning iso to disk
Date: Thu, 13 Mar 2003 09:00:30 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030313085420.01fcb8b0@celine>
References: <200303131021.45642.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303131021.45642.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Frank Roberts - SOTL <sotl155360@earthlink.net>, Linux Newbie <linux-newbie@vger.kernel.org>

Frank -- The generic line I use for burning is quite similar to yours:

                 cdrecord dev=0,0,0 speed=24 filename.iso

And while I rarely burn bootable CDs (I mostly archive data), when I do, 
they work.

Note that I use, for example, speed, not -speed, a usage consistent with 
the man page ... but that difference is unlikely to cause the sort of 
failure you seem to be describing. And while I omit -data, that is the 
default (according to the man page) if no content-type flag is specified.

So ... what do you mean by "Checking CD I find I have an image file on CD"? 
Do you mean that the process you use creates an iso9660 filesystem that 
*contains* the file "MandrakeLinux-9.1rc2-CD1.i586.iso" or that the 
iso-image file is correctly being placed on the CD as a mountable filesystem?

At 10:21 AM 3/13/2003 -0500, Frank Roberts - SOTL wrote:
>Hi All
>
>I have downloaded the Mandrake 9.1rc2.iso to my HD.
>I have attempted to burn these iso to CD by both CDRoast and by command line.
>
>I did not ck sums but am assuming that they are good as iso were 
>downloaded on
>line better than t3.
>
>After placing #1 burn CD in CD Reader to start installation computer did not
>recognize CD as bootable.
>
>Checking CD I find I have an image file on CD.
>
>Is it possible for someone to inform me where I am making the mistake in
>converting the iso images to the correct format on the CD.
>
>The command line command used was:
>cdrecord -dev=0,2,0 -speed=12 -data MandrakeLinux-9.1rc2-CD1.i586.iso





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
