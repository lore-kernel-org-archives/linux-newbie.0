From: Ralph Gesler <rgesler@pacificnet.net>
Subject: Re: CD-ROM Hell
Date: Wed, 02 Oct 2002 14:35:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D9B66BD.101284FA@pacificnet.net>
References: <5.1.0.14.1.20020930220638.02c84c60@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: Bryan Simmons <bsimmo1@gl.umbc.edu>, linux-newbie <linux-newbie@vger.kernel.org>

Ray Olszewski wrote:
<snip> 
> The mere act of putting a CD in a drive shouldn't cause Linux to try to
> read the CD. You normally have to execute a "mount" command for the device
> (or mount point, if it is in /etc/fstab). You should be able to kill the
> process running the mount command to halt attempts to access the CD. If
> that option isn't available to you, you'll need to tell us how you have the
> system set up to mount CDs.
> 
> BTW, I assume we are talking about iso9660 CDs here, not music CDs. If I'm
> mistaken in that assumption, please tell us what app you are using to rip
> the music CD (and you should probably tell us the basics of which Linux
> distro and version you are using). Here too, you should be able to get free
> by killing the process, whatever it might be.
> 
A little bit late to this thread, but some symptoms that I have recently
seen that may point to Bryan's problem ( assuming it is not a bad CDROM
drive )which may point to a misconfiguration, e.g. driver, device
linkage. Experimenting with the CD dump program cdda2wav I find that if
I carelessly misstep or omit a command line device parameter, the
process hangs and can not be killed with SIGKILL ,i.e.. -9, even by the
super user. I am making a wild guess that this condition is caused by
some kernel io process, as yet unidentified: it does time-out and the
calling process, cdda2wav, dies. 

I make this assumption because of the large amount of cpu usage used by
system at this time as shown by top. So far I have only observed this
with a music cd in the drive, but I have no reason to believe that the
same problem would not occur with a data, iso9660, cd. It may be
possible that a misconfiguration could cause the same symptoms.

kernel 2.4.4, Pentium 133

Ralph Gesler
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
