From: beolach@comcast.net
Subject: Re: devfs
Date: Tue, 03 Feb 2004 06:59:27 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <020320040659.23735.27fe@comcast.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: mike@kevino.org
Cc: linux-newbie@vger.kernel.org

Sorry for the length of this reply, I was bored and felt like writing a novel.

Well, no you don't *need* to have devfs, and it would be really easy to remove,
but I wouldn't recommend it, for a couple reasons.  First of all, devfs really
is the best way to do what's being done (see below), and secondly (and more
importantly) I don't subscribe to the engineering maxim, "If it's not broken,
fix it."  I've had enough grief from trying to "fix"/improve/whatever stuff
that wasn't broken that I don't recommend making any unnecessary changes to
a system that is currently working.  If you do want to disable devfs, it
should be as simple as passing devfs=nomount at the boot prompt, and possible
editing your startup scripts not to run devfsd.  This is assuming that your
distribution includes a standard set of device files - most do.  And there
might be other pitfalls to avoid that I'm not aware of.

Some history on device files: basically, *nix systems use special files in
the /dev directory to refer to physical devices on the system.  The "old"
(pre-devfs) way for these special files to be created was with the mknod
command.  Because there are at the very least dozens of these special device
files required to opperate correctly, most *nix distributions came with the
most common device files already created.  Generally, the distributions tried
to include every possible device file that could be in the system, so that the
end user would never have to worry about creating them.  This is where the
problem starts.  There are so many possible devices that could potentially be
in any given system that the /dev directory installed by default from most
distribution started to get very cluttered.  For example, hard drives.  Most
home desktop computers only support a max of 4 IDE drives. But, especially on
the servers that *nixes often run on, there could be many more, and often
they would be SCSI drives.  So instead of just having /dev/hd[a-d], Slackware
(my preferred distro) includes /dev/hd[a-t] & /dev/sd[a-h].  And then we have
up to 32 partitions for each IDE hard drive, and 15 for each SCSI drive.  So
here we have 788 special device files just for hard drives & partitions.
Hopefully you can see how this becomes really cluttered with stuff that, for
most systems, is unnecessary.  Just FYI, Slackware comes with over 23000
special device files by default, the majority of which are usually unneeded.

Now assume that you install a new device (say, a rare video card) that needs
a special device file to work properly, but your distribution hadn't included
that particular device file.  Now you need to create it.  If your lucky, the
distribution or the device manufacturor will have supplied a MAKEDEV script
that will do this for you; if you're unlucky you'll need to find out what the
device file is supposed to be named, and what major & minor device numbers it
expects.  Hopefully it's well documented & easy to find, but you could end up
digging through the source code hunting for the major/minor numbers (alright,
that is a unlikely worst case scenario, but it could happen).

Now lets talk about the naming system.  You've already mentioned that this is
one of the big areas of controversy around devfs.  But lets start with the
"old" (pre-devfs) naming system.  The problem here was that the naming system
was overly cryptic and hard to interpret.  Again I will illustrate with disk
drives.  IDE hard drives would have device files like /dev/hda or /dev/hdb;
which at first glance looks simple enough: hd for Hard Drive, and a letter to
differentiate between multiple hard drives.  But wait; /dev/hda could be any
IDE device, like a CD-ROM, Tape, or Floppy drive, not just a hard drive.  And
my hard drive could be SCSI, so it wouldn't be a /dev/hd? device.  It would
be /dev/sda.  And a SCSI CD-ROM drive would be /dev/sr0 (notice it a number
rather than a letter to differ between multiple SCSI CD-ROMS), and a SCSI
tape drive would be either /dev/rst0 or /dev/nrst0 depending on if it was a
rewinding or nonrewinding drive.  Anyway, with the old naming scheme
everything ended up being a jumble of letters and numbers, that supposedly
stand for something (hd=hard drive; sd=SCSI drive), but actually don't; and
if you don't already know what a device name means, good luck guessing.

Devfs is a virtual device filesytems designed to solve these problems.  It
dynamically creates & removes special device files as devices are added or
removed from the system (a major benefit if you deal with hotplug stuff like
USB), or when the drive module is inserted or removed from the kernel.  So
/dev only has the special device files for devices that actually are in the
system - forget the other 20000 or more devices files that I don't need.  And
as long as I can find a driver for this rare video card I just found, it will
work, without me needing to mess with mknod and finding major/minor numbers
(okay, maybe not - some device drivers still don't support devfs, but not
many, and even if it doesn't I'm no worse off than if I wasn't using devfs).
The changes to the naming scheme are, IMO, less important, but are still an
improvement.  And because enough people do dislike the new naming scheme, it
can be changed in /etc/devfsd.conf (if you can figure out how - my very brief
glance at it looked complicated).  While the new names are longer, they also
give more information with less ambiguity than the old names.  And IIRC devfs
by default does make symlinks to to all the old names.  This means that while
on the old system /dev/hdb could be any type of IDE device, on the new system
I can `readlink /dev/hdb` and it will show the new name for the device, which
might be "ide/host0/bus0/target1/lun0/cd" - which tells me this is a CD-ROM
on lun0 (not sure what that is... all I know is most IDE devices only have 1
lun) on the slave channel (target1) of the primary bus (bus0) of the first IDE
controller (host0) in the system.  All of that other than what type of drive
it is can be interpreted from from the old naming system, but this spells it
out better.

Well, that's my novel for today.  Hope you enjoy,
Conway S. Smith
> Hello all,
> I was reading the thread subject=(error message interpretation 
> help?) and the reference to "devfs". I have a stock installation of 
> MDK9.2 and my understanding is that "devfs" is in the kernel or 
> (module maybe?) by default.
> I should say right off the bat that I am a major newbie so bare with 
> me. I've heard complaints about "devfs" before, for one thing the 
> naming convention I noticed on my "df" output alittle long and hard 
> to read for instance.
> 
> Filesystem            Size  Used Avail Use% Mounted on
> /dev/ide/host0/bus0/target0/lun0/part5
>                        380M  115M  246M  32% /
> 
> Someone told me that was because I had "devfs" I did some reading 
> and I think I can change that part on my system with 
> /etc/devfsd.conf but my question is do I really need "devfs" and if 
> not how can I remove it or disable it, and do I need to replace it 
> with something else?
> 
> -- 
> Mike
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
