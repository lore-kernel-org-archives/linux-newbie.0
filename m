From: Ray Olszewski <ray@comarre.com>
Subject: Re: SCSI Emulation w/ DMA
Date: Tue, 20 Aug 2002 07:38:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020820073235.022333c0@celine>
References: <5.1.0.14.1.20020819153832.020ec500@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D6250BE.10202@tulane.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: David Yeu <dyeu@tulane.edu>, linux-newbie@vger.kernel.org

At 09:22 AM 8/20/02 -0500, David Yeu wrote:
>Thanks for the help Ray...
>
>To answer your questions:
>I'm using a Plextor 24X with the command, 'cdrdao write toc.file',
>and I'm burning a mix of isos and music cds.
>Under Windows, this process never seemed to take more than three
>and a half minutes, but with Linux, average burn times hover around
>four and change.  Now I know, thirty seconds isn't much to whine over,
>but I was just curious to see if it was something I had failed to do.
>I read both the CD-ROM HOW-TO, and the CD-Writing HOW-TO, but I must
>have missed the illuminating section.

I'm not sure what would qualify here as "illuminating". I don't use cdrdao 
myself (I use cdrecord), but in my CD burnings, I notice two things that 
might be relevant:

1. cdrecord waits about 10 seconds before it starts burning, with a 
countdown on the screen, to give me an option to abort the burn.

2. I too have a 24x burner (a Sony), and I tell this to cdrecord. 
Nonetheless, it always tells me that it is burning (iso images) at 12x, not 
24x.

Since the discrepancies you are seeing between Windows and Linux are so 
small, they are probably the result of some subtlety in the way the two 
apps work (possibly including what each does before and after you start the 
clock -- with differences that small, asking how exact your timings are is 
a reasonable thing to do). I mentioned those two not to diagnose your 
situation, but as examples of the kinds of things that might be going on. 
either in your home setting or in the work one you describe below.


>More interestingly, the burner I have at work is a generic Lite-On
>24/10/40, and it usually takes anywhere from 8-10 minutes to burn
>a cd, under both Windows and Linux.

[rest deleted]

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
