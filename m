From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Lexar Jump Drive & Linux??
Date: Sat, 25 Mar 2006 09:43:10 -0500
Message-ID: <20060325144310.GC1239@lnx2.kvinet.com>
References: <20060324213842.GA1272@lnx2.kvinet.com> <44247618.4060701@bcgreen.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44247618.4060701@bcgreen.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stephen Samuel <samnospam@bcgreen.com>
Cc: linux-newbie@vger.kernel.org

On 03-24, Stephen Samuel wrote:
> Hal MacArgle wrote:
> >Greetings: One year ago I bought a Lexar 256mB Jump Drive; put an
> >ext2 FS on it and used it to transport small files from one Linux
> >machine to another, all running 2.4.XX kernels, and mounting the
> >drive as /dev/sda1, per dmesg...
> >
> >All of a sudden I couldn't write to it unless the files were less
> >than 30mB total size.. I figured the drive must be bad; still in
> >warranty according to Lexar, so I contacted their support people..
> >
> >First off they say I must reformat the drive using Windows and
> >included instructions for doing this with Win98SE or XP... SE didn't
> >even see the drive so I fetched the newest driver from their site and
> >never did get it to work...
> >
> >Then I went to an XP machine and was able to format the drive as per
> >their instructions so it now seems to work fine as long as it's
> >formatted FAT32  (VFAT)...
> >
> >Am I presuming I have to _not_ use a Linux FS with this or other jump
> >or flash drives?? (I do have a UL641 64mB drive that's fine ext2, so
> >far) I've been telling some that the Lexar 256 drive works with
> >Linux.. I'll have to retract that unless I can figure out what
> >happened, eh?? Any comments. TIA.. (Of course the drive 'specs' don't
> >list Linux, as usual.) :^(
> >  
> 
> Shoulda stopped at step 1.. They had it specified as
> working with Se. If that didn't work then you could tell
> them it was broken and get a replacement.
> Now that you have it working with XP, it's a lot harder
> to scream at them for having a dead drive.
> :-)
> 
> Hey, they gave the specs, not me.

	Some day "they'll" admit that there are "other" O/S's out
there, eh??

	One of my paranoid problems is that I can't get Win98SE to
work with any flash/jump drive, only an USB mouse, even with the
driver supplied by Lexar's site, trying on three different machines..




> If it was working with Linux to begin with, I'd say that
> most things were fine... There may have been some
> problems with reading/writing certain blocks in the
> device. I'd try exercising it with something like the
> 'badblock' command in Linux.

	Now that I have it reformatted as vfat, 'dosfsck' gives it a
clean bill of health; giving more details than badblocks of course..
I find the drive I have is USB 1.0, so it's not up to speed so to
speak, eh?



> Did you have any errors associated with the drive in
> /var/log/messages?
> 
> You can also run the system with heavy debugging...
> 
> Presuming it's just a desktop (as opposed to a heavily loaded
> server which would produce lots of I/O if you do the following):

	Yes a simple desktop, a machine that can be connected to wide
band for faster downloads than our rural home machines using antique
twisted pairs, lucky to get 3.0kBps.. I admit I cried wolf before
putting my brain in motion and didn't troubleshoot properly..

<snip>




> One thing that I'll have to ask (OK: 2)
> 
> 1) have you always remembered to unmount the device before
> pulling it out??
> 2) did you try doing a full FSCK?

	Running Unix for years now I hope I know about umount but
have to be honest that we sometimes "forget," eh?? Am, really, not
sure of the complete details.. In the heat of "battle" I flipped and
didn't do many things I should have.. At least all is well now with
the vfat format.. I hope it's not an intermittent thingy.. Oh well..




> I'd also suggest using ext3fs, which is a good bit more
> resilient than ext2fs to having the drive accidently pulled out
> without an unmount.

	Everything I have here is ext3 but I used ext2 on that drive
because I didn't want to rock the boat away from a device that's
marked "Windoze" only... <grin> I'll keep it vfat and be done with
it, as all suggested.. Believe it or not I've actually talked to some
hardware vendors who haven't even "heard" of Linux... Ugh..

	Lexar support has been excellent otherwise with, actually,
too many messages, but they seem to want to try as long as I don't
mention Linux (maybe.) Wonder if they'll talk to me as to why I can't
get Win98SE to work with either flash/jump drive I have?? Lexar
support answers eMails within hours instead of the normal days of
others, if at all...

	Appreciate all!!

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
