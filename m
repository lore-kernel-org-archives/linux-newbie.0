From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: reinstall continued
Date: Thu, 1 Apr 2004 10:55:27 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040401155527.GC657@lnx2.w8mch.ampr.org>
References: <200404011246.54599.wheds8@ms66.hinet.net> <200404010827.24196.pa3gcu@zeelandnet.nl>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200404010827.24196.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 04-01, pa3gcu wrote:
> On Thursday 01 April 2004 06:46, S. Barret Dolph wrote:
> > I used fdisk to clear all partitions. But when I boot up my box I still get
> > a splash screen with two kernels listed. Where are those kernels?
> 
> The kernels are gone if you used fdisk but you did not clear the MBR.
> http://www.computing.net/linux/wwwboard/forum/24422.html
> 

	Good scheme Richard; Will try it in the future:

dd if=/dev/zero of=/dev/hda bs=512 count=1

	It may be of interest to try the boot and nuke scheme to
"zero" the rest of the drive just to be sure:

http://dban.sourceforge.net (dban-1.0.1-i386.img)

	It has a "quick" selection as well as other more thorough
schemes approved by the US DoD, etc, booting from a 1.44 floppy.

	And the 'fdisk /mbr' route is good for replacing the MBR with
the MBR of whatever the current boot system uses...

	I learn more and more every day.. Really enjoying the list..

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
           
	     Anyone can pile complexity upon complexity;
                  only a genius can truly simplify..
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
