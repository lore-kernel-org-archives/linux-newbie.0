From: beolach@juno.com
Subject: Re: USB Flash Drive??
Date: Sat, 2 Aug 2003 01:07:20 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030801.180756.6091.256911@webmail13.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org


Here are a couple more comments on filesystems. This may be getting a
little off-topic from your initial question, but I think it is still
relevant. Sorry if some of it is really common knowledge, I just like
building up from the basics.

With the FAT filesytems, there are a number of variations. Back in the
days of MS-DOS & WFWG 3.1, there was FAT16, which under linux is some-
times called msdos. With M$ Win9x, an improved FAT called FAT32 came
out. Under linux, it is also called vfat.

Now for the really fun part. UMSDOS is an extension that works on top
of either msdos or vfat filesystems.  Quoting the kernel document in
/usr/src/linux/Documentation/filesystems/umsdos.txt:

"Umsdos is not a file system per se, but a twist to make a boring
one into a useful one.

It gives you:

	long file names
	Permissions and owners
	Links
	Special files (devices, pipes...)
	All that is needed to be a linux root fs."

The two newer filesystems are backward compatible under linux. If you
wanted to, you could mount a vfat or umsdos filesystem as msdos. The
problem with this is that linux can't really perform a check to find
out which of the three filesystems a device is actually formatted with.
So if the user doesn't specify which filesystem to use, the kernel
determines which filesystem to use by reading /etc/filesystems, or if
that file doesn't exist /proc/filesystems.  It will use whichever fs
is listed first. So in your case, the memory sticks that are being
detected as umsdos formatted, may or may not actually be; umsdos may
just be listed first in /etc/filesystems or /proc/filesystems. The
reason I point this out is because I was actually somewhat surprised
that a memory stick would be formatted in umsdos. The way I understood
it the main reason umsdos was developed for was to allow people to
migrate from M$ Windows to Linux without repartitioning & formatting
their harddrive. I may be wrong, but I don't think anything other than
linux (and maybe someother *nixes) even supports umsdos.

And here's a bit more additional reading on filesystems. These are
probably more coherent and more correct than my little spiel here, so
trust them more than me.

Filesystems-HOWTO: <http://www.tldp.org/HOWTO/Filesystems-HOWTO.html>
UMSDOS-HOWTO: <http://www.tldp.org/HOWTO/UMSDOS-HOWTO.html>
The kernel filesytem documentation, (probably) in
/usr/src/linux/Documentation/filesystems, or online at
<http://ftp.kernel.org/pub/linux/kernel/people/marcelo/linux-2.4/Documentation/filesystems/>


Hope this makes sense,
Conway S. Smith

--- Hal MacArgle <haltec@kvinet.com> wrote:
> 
> Greetings and thanks for the comments and pointer.. The thread was
> interesting in that it seems some of those sticks are formatted vfat
> and mine umsdos; not that I'm completely clear on the relationship
> between all this.. <g>
> 
> "Crack the book" time again... 
> 
> Appreciate!
> 
> Hal
> 
> On 07-31, beolach@juno.com wrote:
> > 
> > I have no personal experience with memory sticks, but I think you
> > should be able to reformat them with any filesystem you want to,
> > but keep in mind that it would then be unreadable in M$.  So if
> > you want it to be portable at all, keep it as vfat.
> > 
> > For somewhat related info see:
> > <http://www.linuxquestions.org/questions/showthread.php?threadid=69332>
> > 
> > Hope that helps,
> > Conway S. Smith
> > 
> > --- Hal MacArgle <haltec@kvinet.com> wrote:
> > > 
> > > Greetings: Just getting my feet wet with USB on a Slackware9.0,
> > > 2.4.20 box, and a 64mB Flash Disk "stick."
> > > 
> > > Enabling BIOS - 2.4.20 found it and loaded the necessary modules OK.
> > > Slick..
> > > 
> > > However - mount reports the fstype as umsdos.. I note I can also
> > > mount the device as msdos or vfat OK and use mcopy to manipulate
> > > files.. cp also works but reports an error, copying the file anyway.
> > > 
> > > I can find no information though as to if I can reformat the stick as
> > > ext2 or ext3..
> > > 
> > > Has anyone done this? At this point I'm afraid to try.. <grin>
> > > 
> > > TIA and Cheers,
> > > 
> > >     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
> > >                 Proprietary  Formats  Unacceptable
> > > .

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
