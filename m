From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-ROM settings and hardware resources...
Date: Sat, 19 Oct 2002 23:29:47 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021019230049.02475430@celine>
References: <1035092798.26224.22.camel@localhost.localdomain>
 <1034969037.26230.3.camel@localhost.localdomain>
 <5.1.0.14.1.20021019160457.024730b0@celine>
 <1035092798.26224.22.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035093515.26224.26.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Bryan Simmons <bsimmo1@gl.umbc.edu>, linux-newbie <linux-newbie@vger.kernel.org>

At 01:58 AM 10/20/02 -0400, Bryan Simmons wrote:
>Another problem, hdparm when run as root like this:
>hdparm -ab /dev/scd0
>or
>hdparm -ab /dev/cdrom
>
>Gives me the error message:
>/dev/cdrom[scd0] not supported by hdparm
>
>Does this mean that I have the name of the device wrong or that hdparm
>won't parlais with my hardware?

hdparm works with atapi (ide) devices, not scsi devices. Since you say 
below that this CD-RW drive is ATAPI, this incompatibility presents no 
problem. Just run hdparm on the underlying atapi device (/dev/hd*) that you 
are using ide-scsi emulation to access as scsi.

But the additional details you report below make me doubt the DMA guess, 
anyway ... that problem manifests itself as skipping in the video, not as 
the sort of "stalling' you describe below. And it is not confined to one 
disk; it occurs with any disk that needs to be accessed fast. This problem, 
as I read your description, is specific to this CD and occurs with any file 
on it (or at least a large number of choices).

This problem sounds like a marginal burn to me, perhaps a multisession burn 
that's gone bad ... something I've seen in both Windows and Linux with CDs 
burned under Windows by an inexperienced user of the Windows CD software. 
Or perhaps there is some filesystem incompatibility ... does the disk 
provide s normal-looking "ls -l" listing and a reasonable "df" report? You 
also might try doing the transfer running "mv" or "cp" from an xterm or a 
console, to see if you get better results (or at least more descriptive 
error messages).

Were I you, I'd use Windows to get these files off the bad CD and onto a 
hard disk somewhere. Then I'd move them to a Linux filesystem on this 
machine, and use Linux CD creations tools (mkisofs to make the image, and 
cdrecord or cdrdao to handle the actual burn) to make a new, single-session 
burn.

Finally, as to your search for a site that sells "Linux-approved" hardware 
... there are a small number of vendors who are still in this business, but 
many failed or changed business models after the dot-com crash. The ones 
that remain (at least the ones I know of) are expensive. Assuming you know 
hardware reasonably well, the economical way to get a "Linux friendly" 
system is to build your own. (At least as far as desktop systems go; 
laptops have their own set of problems, and I've no experience there, just 
observation of the struggles of others.) Buy any decent mobo, its standard 
memory, any modern IDE hard drive (or most any newer SCSI drive and 
controller), and any standard ATAPI CD-RW drive.

You don't mention how you are capturing video, but there you have to be 
careful, as only some of the common devices (best card-based ones use the 
bt-8*8 chips; I don't know the USB stuff well enough to advice you there) 
are supported by the video4linux drivers in the 2.4.x kernel. In the vidcap 
stuff I do, I've had trouble recording sound with on-mobo VIA chipsets 
(though they work fine for playback, there is some problem with 
/dev/mixer), but I've used Yamaha and Ensoniq-compatible sound with no problem.

For playback of video (since you use xine and xmovie, you probably already 
know this part), you want a display card with a chipset whose X server 
supports xVideo -- the ATI driver is good at this, the Savage one does not 
work right (unless that's been fixed recently), and I'm not familiar with 
the small number of others. If you don't have xV available, xmoive still 
works fine, but xine need to use xShm, and the required context switches 
make that a CPU hog.



>On Sun, 2002-10-20 at 01:46, Bryan Simmons wrote:
> > Sorry to all for not being more descriptive.  Here are my specs as far
> > as I can tell:
> > 1.  Kernel: 2.4.19mdk (Mandrake 9.0)
> > 2.  CD-RW: HP CD-Writer+ 9100 (ATAPI)
> > ,fs=auto,ro,--,iocharset=iso8859-1,codepage=850,umask=0
> >
> >
> > The CDs I'm trying to read were made in Windows (98, 2000, XP) with this
> > very same drive about a year ago.  They all contain home-made movies
> > that I created in XP.  The range in sizes is 9MB to 200MB.  Now, I have
> > never been able to play any of them directly off of the disk in Windows,
> > but I have always been able to transfer them from CD to hard disk.  My
> > problem in Linux is that the drive "stalls" during a copy or a read of
> > the media during playback in xine or kaboodle or xmovie, etc...  It
> > would play the first 30 seconds of the film and then stall out.  The
> > media program freezes and the drive is locked until I kill the processes
> > accessing it.  The same is true when I attempt a copy from CD to hard
> > drive in Konqueror.  The copy window says it transfered 4MB and then the
> > drive status windows says "stalled" and that's as far as I can get.
> >
> > I figure there is a setting in some config somewhere that will get me
> > better performance when dealing with CD-R media.  I thought that there
> > might be a parallel between the "read ahead" setting in the driver under
> > Linux as well as Windoze.
> >
> > BTW, I'm NOT pro-Windoze.  I'm trying to set all this up under Linux so
> > that I never have to use MS software again.
> >
> > Oh, I'm also looking to upgrade my system considerably.  Right now I'm
> > running an old AMD Athlon 650Mhz with a 9GB and 20GB two-drive setup.  I
> > want something fast and cheap that is Linux approved or Linux friendly.
> > Does anyone know of a web storefront that sells such hardware or will I
> > have to simply shop with a list of known compatible hardware?
> >
> > Thanks in advance guys!
> >
> > On Sat, 2002-10-19 at 19:09, Ray Olszewski wrote:
> > > I meant to reply earlier but it slipped my mind.
> > >
> > > First, it would help to be a bit more descriptive than just to say "has
> > > trouble reading large files". What sorts of files? What sort of trouble?
> > > What application software is involved?
> > >
> > > Without that detail, here is just a guess ... under Linux, DMA is not
> > > enabled on the drive (I'm assuming here that this is an ATAPI drive,
> > > another detail you omitted). You can check this (and if need be 
> correct it)
> > > with "hdparm" ... the man page will give you the details.
> > >
> > > [...]
> > > >On 18 Oct 2002, Bryan Simmons wrote:
> > > > > I've noticed that my HP CD-Writer 9100+ has trouble reading large 
> files
> > > > > off of a burn under Mandrake 9.0.  This problem doesn't occur in
> > > > > Windows.  I think it may be the read-ahead setting.  Does anyone know
> > > > > anything about this?
> > > [...]




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
