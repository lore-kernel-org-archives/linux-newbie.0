From: beolach@juno.com
Subject: Re: USB Flash Drive??
Date: Thu, 31 Jul 2003 19:26:03 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030731.122614.5706.281202@webmail08.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org


I have no personal experience with memory sticks, but I think you
should be able to reformat them with any filesystem you want to,
but keep in mind that it would then be unreadable in M$.  So if
you want it to be portable at all, keep it as vfat.

For somewhat related info see:
<http://www.linuxquestions.org/questions/showthread.php?threadid=69332>

Hope that helps,
Conway S. Smith

--- Hal MacArgle <haltec@kvinet.com> wrote:
> 
> Greetings: Just getting my feet wet with USB on a Slackware9.0,
> 2.4.20 box, and a 64mB Flash Disk "stick."
> 
> Enabling BIOS - 2.4.20 found it and loaded the necessary modules OK.
> Slick..
> 
> However - mount reports the fstype as umsdos.. I note I can also
> mount the device as msdos or vfat OK and use mcopy to manipulate
> files.. cp also works but reports an error, copying the file anyway.
> 
> I can find no information though as to if I can reformat the stick as
> ext2 or ext3..
> 
> Has anyone done this? At this point I'm afraid to try.. <grin>
> 
> TIA and Cheers,
> 
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
>                 Proprietary  Formats  Unacceptable
> .

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
