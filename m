From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Slack9.0/Atapi-ZIP250???
Date: Tue, 1 Jul 2003 11:08:52 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030701110852.A169@lnx2.w8mch.ampr.org>
References: <20030630065631.A148@lnx2.w8mch.ampr.org> <BKEGKPICNAKILKJKMHCAGEDPEIAA.Riley@Williams.Name>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <BKEGKPICNAKILKJKMHCAGEDPEIAA.Riley@Williams.Name>; from Riley@Williams.Name on Mon, Jun 30, 2003 at 07:37:10PM +0100
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 06-30, Riley Williams wrote:
>  >
>  > Everything I've read about ZIP drives say they _must_ use scsi
>  > emulation..
> 
> SCSI emulation is needed for PARALLEL PORT and SCSI INTERFACE zip
> drives only - and NOT for ATAPI IDE zip drives - UNLESS you included
> the string "hdc=ide-scsi" as a kernel parameter. If you did that,
> then you told the kernel to use the ide-scsi driver to access the
> drive in the secondary master IDE position independent of whether
> such was necessary or not.

	OK got that.. Apparently the default for 2.4.18 and before
had that string included somewhere, unknown to me, as I worked
merrily along with /dev/sda4..



> I bought my IDE ZIP-250 drive when the 2.3 kernel series was the
> current development series, and I've always used the standard IDE
> driver to access it. The only difference from your setup is that
> I have mine set to use hdc1 rather than hdc4 since I normally buy
> the MAC formatted zip-250 disks rather than the PC formatted ones
> as they are 10% cheaper locally. Since I always reformat them as
> ext3 the original format is irrelevant to me.

	OK again. I was, obviously, off on the "wrong" foot and not
knowing it, except the 'shoe did fit,' for several months.. I did
note the MAC disks went unbid on eBay so, being a good Scot, I went
that route too and reformatted them with iOmega's IW program as
/sda4-ext2, to 'match' what they seemed to wish, and save myself some
money at the same time.



> Indeed, it was only when I bought a PC formatted one due to the
> shop being out of MAC formatted ones that I discovered that the
> PC formatted ones use hdc4 whereas the MAC formatted ones use hdc1
> instead !!!

	This opens another wonderment: All of my disks are formatted
/dev/sda4 - not changing that - but they are mounted as /dev/hdc4 on
Slack9.0/2.4.20.. The major/minor numbers are way different, and I
see no sym links?????



>  > Adding the above to /etc/fstab and then mounting /dev/hdc4 on
>  > /zip worked with Slack9.0/2.4.20 but _not_ with Slack8.0/2.4.18,
>  > which required ide-scsi.o.. All disks formatted with ext2..
> 
> That is either a configuration error with Slack8.0 or one of the
> bugs in the 2.4.18 kernel that was fixed by 2.4.20.

	A possible bug fixed that "bugged" me. <grin> Reminds me of
the UART fiasco several moons ago, when developers wrote around a bug
only to get into real trouble when the vendor fixed it.. Ugh..



> The best thing to learn from this saga is simply that if a device
> (other than a CD-Writer or DVD-Writer) is labelled as IDE, then one
> should expect to use the IDE driver to access it. The writers are
> excluded because the cd writing software all expects to be talking
> to a SCSI writer, and in general won't talk to an IDE one directly,
> so one has to use the ide-scsi driver to let it talk to them. Note
> that the IDE CD-writers and IDE DVD-writers can all be successfully
> READ from using the IDE driver, and this problem is entirely due to
> the cd writing software, not to the drives themselves.

	I went through that last year which made sense as we now have
machines with both SCSI and ATAPI CDR's w/emulation.. CDRECORD pretty
much covers that in their docos.. I could find no mention of the
former subject problem anywhere except on this list.. Maybe I didn't
look hard enough..

	Alls well that ends well, eh? APPRECIATE ALL...

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
