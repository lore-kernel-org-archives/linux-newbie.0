From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: USB Flash/Jump Drives-Linux??
Date: Sat, 29 Jan 2005 14:24:34 -0500
Message-ID: <20050129192434.GA1141@lnx2.w8mch.ampr.org>
References: <20050129140343.GA599@lnx2.w8mch.ampr.org> <5.1.0.14.1.20050129075916.02be0cc0@celine>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20050129075916.02be0cc0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 01-29, Ray Olszewski wrote:
> At 09:03 AM 1/29/2005 -0500, Hal MacArgle wrote:
> 
> 
> >Greetings: Running Slackware 9.0 and 9.1; kernels 2.4.20 or 2.4.22,
> >bare.i installation, I've experienced good support for all USB
> >devices except Flash Drives.
> >
> >First one bought was a Link-Max UL-641 that, plugged in, was
> >immediately accessible by the kernel with no configuring by me..
> >
> >Later attempts with other brands, no such luck.. As I look at the
> >retail boxes not a single one mentions Linux, so was wondering what
> >others have discovered.. It's no fun buying then returning just to
> >see what works or doesn't... <grin>
> >
> >Most of the comments on the Web seem to indicate this is not a
> >problem but I've found otherwise.. One vendor, Kingston, said flat
> >out that Linux is not supported by their devices..
> >
> >Best and TIA.
> 
> 
> I've only used one of these drives, a Lexar 256 MB JunpDrive Secure. Since 
> I compile my own kernels, I did have to recompile (2.4.21, I think), 
> turning on several USB options and SCSI (the standard way to access USB 
> drives uses SCSI emulation), but then had no difficulty on my own systems 
> .. and a couple of embedded Linux systems, using their manufacturers' 
> stock kernels, also accessed the drive with no difficulty.
> 
> Since you don't include any details, I don't know if what was unusual about 
> your experience was the single success (say with a device that does not 
> require SCSI emulation somehow) or your several (few? many? you don't say) 
> failures.
> 
> Why not tell us more ... in particular, what devices you tried with and 
> failed, and how you accessed the Link-Max.

Greetings Ray, thanks for the input:

	I only run Linux here but attempt to "help" neighbours with
their Windoze boxes so bought the 64mB drive in order to download
Winfiles on my machine and use the flash drive to sneaker net to
their machine.. Used to use floppies but the bloat! <grin>

	The docos for the UL-641 said Linux 2.4.X and WinME up with
Win98SE needing an extra driver supplied on the drive.. It turned out
I could never get it recognized by two neighbour machines running
Win98SE, but that file worked with another running Win98FE..??.. I've
decided, since, then, that I know nothing about Windoze and,
probably, never will... Thinking it may have been the UL-641...

	I bought another one made by Kingston and I discarded my
notes when the vendor said to contact Kingston techhelp who told me
their flash drive would not work with Linux - never/none... The other
one I tried same problem and I can't remember the mfgr.. I decided I
needed more info so hit the Web and most docos mention Linux supports
all USB drives, 2.4.X up, and all say that Win98SE needs an extra
driver.. The UL-641 says USB 1.0; 1.1 and 2.0 OK.. I think my older
machines are all 1.1, so I selected a flash drive that didn't mention
2.0 needed..

	Anyway I plugged the UL-641 as received into this Linux box,
2.4 20, Slackware bare.i precompiled, and dmesg reported the drive as
/dev/sdb1.. Mounting sdb1, sure enough, there were the vfat files.. I
saved them to a CD thence reformatted the drive as ext2 - perfect.. I
had to do nothing except plug it in and mount..

	Tried on another machine, same thing, with dmesg reporting
the device as sda1, because the former machine has other scsi
devices.. It was all automatic.. Both machines have ide-scsi default
because of using cdrecord and a CD Burner.. BTW Slack 9.0 and 9.1,
2.4.20 and 2.4.22, bare.i, precompile, support USB when booted..
Patrick has compiled that in the two versions I've used..

	Now that I know a Lexar Jump Drive Secure, wonder what the
secure means? Has a write protect switch?, I will look one of them
up to try.. I'm presuming that Flash Drive, Jump Drive and many other
names are the same thing; memory card in an enclosure.. Very
confusing.. <grin> Before buying though, if possible, I will check
with Lexar - will I get the right answer?? <grin>

	Thanks again; appreciate!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20-1)
.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
