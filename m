From: Ray Olszewski <ray@comarre.com>
Subject: Re: Copying files to CD-ROM discs
Date: Sun, 06 Oct 2002 19:20:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021006191538.02552e10@celine>
References: <5.1.0.14.1.20020817104733.020ef510@celine>
 <200208100843.50199.natarajan_k@hotpop.com>
 <5.1.0.14.1.20020817104733.020ef510@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210062203.21794.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Frank Roberts - SOTL <sotl155360@earthlink.net>, Linux Newbie <linux-newbie@vger.kernel.org>

Sorry, but you can't do it that way. To write to a CD, you actually have to 
control the CD burner part of the CD device ... it's not just like writing 
to a filesystem. You do need to use a program like cdecord or cdrdao, that 
knows how to control the CD drive for burning. For that matter, cdrecord 
doesn't even know how to burn to an IDE burner -- you need to have a kernel 
with ide-scsi emulation compiled in and fake a scsi LUN for the drive. (I 
think this is true of cdrdao too, but I haven't used that app so am not 
certain.)

What you are probably half remembering is that dd does work in the other 
direction -- you can dd fom a CD to an ISO image file, pretty much the way 
you have been trying (but interchanging the if= and of= parts).

At 10:03 PM 10/6/02 -0400, Frank Roberts - SOTL wrote:
>First thanks for the previous help that several of you provided.
>
>Since I have been sort of thinking along these lines I could have sworn 
>that I
>had saved a set of e-mail that told how to make a CD using the dd comand but
>all I could find in my repository was a procedure for making an ISO from a
>CD.
>
>Any after the latest crash - crash in this case meaning refusing to boot - of
>my MS clunker it has the idea of copying a certain set files to disk became
>desirable but mot critical.
>
>Anyway I tried to execute
>
>dd if=/home/trunk/file_name of=/dev/cdrom1
>
>and a few variation of this on my Linux box as a test without success to see
>if I could make a CD from a set of files.
>
>Usage of a program like CDRoast is not a feasibility as the linux 
>distribution
>I an using is on one floppie.
>
>Any advice on how to proceed would be greatly appreciated.



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
