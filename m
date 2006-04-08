From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian Sarge Install??
Date: Sat, 08 Apr 2006 15:00:55 -0700
Message-ID: <44383297.5090808@comarre.com>
References: <20060408181307.GA1328@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060408181307.GA1328@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal --

I understand that you have a slow connection, but you might still want
to consider doing a network install of Debian (Etch or Sid), using an
installer floppy set (3 floppies, last I checked) or an installer CD. Or 
if you expect to do many installs, download a current set of isos and 
burn your own DVDs.

Since your main interest is video, you'll (probably) want to add in
packages that are not officially part of Debian (like mplayer/mencoder
and various codecs), and you pretty much have to do that online, from
unofficial repositories. Also, you will probably be happier with either 
the Testing (Etch) or Unstable (Sid) version than the Stable (Sarge) 
version of Debian; maintainers are very conservative about updates to 
Stable, far too much so for bleeding edge uses like video, where things 
change rapidly.

This would also give you the advantage of getting the latest versions of
everything. Even if you stay with Sarge, you'll want to apply its 
scurity updates from the onlline security repository (which a sucessful 
install will put in your list of package sources).

Aside from that, what you are describing does sound like either a
marginal disk or a marginal drive. Since you've tried two different
drives without success, bad or marginal disks are my best guess. I've
offered some specific thoughts below.

One long shot: are you setting up a swap partition? I've found that some 
systems behave funny if they don't have swap, even if it never gets used 
in any real sense. (On these systems, when they have swap, I normally 
see "free" reporting a tiny amount of swap used, even when there's lots 
of free RAM, so I assume it is some weird rounding problem in the memory 
mapping.) And installs typically do use all the physical memory sooner 
or later, even on systems with 1 GB or more of RAM, because of the way 
the kernel does buffering and caching.

Just as a last resort, since you have a DVD burner, you might see if
you can make new DVDs from your old ones. I assume you already know how
to burn data DVDs, using growisofs or whatever you prefer. Getting the 
image to burn from is just like a CD:

	dd if=/dev/dvd of=/some/path/DVDimage.iso

adjusting the source and destination paths appropriately for your setup.
If you really have bad disks (bad burns, I mean), this too will fail ...
and a successful copy and burn, but an unusable result, probably means
a filesystem flaw in the iso9660 filesystem that the vendor burned.

Hal MacArgle wrote:
> Debian Sarge; two single layer DVD set bought on eBay.. Packed well
> with very nice printed labels and both mounted and read easily with
> two separate machines and DVD devices; a HP DVD-300i and Plextor
> PK-708A, both relatively new and not overworked..

What exactly does "read" mean here? Do you mean simply that you could
get a listing ("ls") of directories? I often am able to do that with
filesystems (usually iso9660s; occasionally bad ext2s) that are
otherwise corrupted. Getting a directory listing does not mean you have 
a good image on the CD or DVD; it just means that the file with the 
directory information can be read. A better quick-and-dirty test of real 
readability is an "ls -l" or a "du -s *".

> Tried installing, twice, on a Cyrix III/600mHz CPU; 256mB SDRAM; 8gB
> freshly partitioned HD and a c.2000 BIOS.. Both trys stalled on
> DVD#1, so I used the distributions "Check the CDRoms Integrity"
> program and both failed at different points in the run.. Thought;
> must be bad burns???

At that point, I wouldn't know if it is a bad burn or a bad drive
(unless I'd been using the drive reliably with other iso9660 DVDs, as
you may well have, given your video activity).

> Not wanting to complain if there is another reason I tried on another
> machine: Duron 1.3gHz CPU; 512mB SDRAM; freshly partitioned 12gB on a
> 40gB HD, this one with the Plextor PK-708A device and c.2000 BIOS...

Since you mention the Plextor here, I surmise that your prior try used
the HP. When the same DVD (or CD or floppy) fails on 2 different drives, 
I usually infer it's the disk.

> DVD#1 passed the Integrity run but #2 failed at around 90% of the
> checksum run... So no install that machine either.. I got to thinking
> that I didn't want to complain to the vendor if the problem was a
> single file that I would never need anyway, but how to work around
> this; if possible??
> 
> Could it be that all files must be perfect to install Debian Sarge??

Probably not, but the files for the packages you actually want to
install would have to be good. Certainly a bad disk 2 would not cause
the install to fail while it is still using disk 1, to mention the
obvious counterexample to your hypothesis.

Since the disks seem to fail at different points, though, in different
runs, I begin to wonder about a physical problem like smudges or dirt on
the disks. I've seen some discussions online about using polishes and
waxes to make scratched disks temporarily readable; you might look into 
that (I haven't tried this myself, though). Or at least try wiping them 
clean with the kind of cloth you'd use to clean eyeglasses; that's 
helped me from time to time with CDs.

You haven't actually said where in the install process things are 
failing. If it happens after you get to the point where the package 
manager (I don't recall which one the DVD versions use) has let you 
select packages or "tasks" to install, then you could try telling it to 
install nothing more at this point. You should have a small but 
functioning system, and you can then add packages selectively, by hand. 
(This is what I always do myself, just to avoid the package bloat that 
the "common tasks" approach generates.)

> The vendor charged only pennies above what the blanks cost so can I
> really complain?? Are single layer DVD's that critical with data??

In my experience, yes. I've had a lot of problems, though in my cases, a
bad or marginal drive seems always to have been a factor ... disks that
were erratic with my old and cheap read-only drive now mount, list, and
transfer content great with my new-this-year read-burn DVD drive.

And BTW, if you got them from the same vendor I saw on eBay, the DVDs
themselves are dirt cheap at $1.95 (not really "pennies" more than
blanks, but still pretty cheap), but there's a modest profit built into 
his $5.80 S&H charge.

> TIA...


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
