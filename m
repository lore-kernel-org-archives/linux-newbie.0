From: Ray Olszewski <ray@comarre.com>
Subject: Re: tar confined to partitions
Date: Tue, 03 Sep 2002 10:59:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020903104825.021a1d90@celine>
References: <5.1.1.6.0.20020903102834.00b7ff88@interzone.anexia.co.uk>
 <5.1.0.14.1.20020902094227.021b5bd0@celine>
 <5.1.0.14.1.20020902094227.021b5bd0@celine>
 <5.1.1.6.0.20020903102834.00b7ff88@interzone.anexia.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209031450.g83Eogs17031@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>, carl@anexia.co.uk
Cc: linux-newbie@vger.kernel.org, linux-newbie@hartford-hwp.com

At 10:50 AM 9/3/02 -0400, Haines Brown wrote:
>Carl,
>
> > If i have it right you are just trying to copy everything to /mnt/mirror
> >
> > In which case you could just do:
> >
> >         find / -print | egrep -v "^/mnt/mirror|^/proc" | cpio -pdmuv 
> /mnt/mirror
>
>I get the sense that cpio is a more straightforwared way to do a copy,
>and the script you kindly pass along may well do the job. However, I'd
>like to ask three questions about it.
>
>First, I've often heard of measures taken not to backup /proc, and
>indeed it makes no sense to do so. However, what would be the
>consequence of a restoration from a mirror that copied over old /proc
>info? Would it do any harm?

Depends on the details, but the most likely problem is just waster dosk space.

/proc is a mount point that allows access to pseudo-files that are actually 
kernel internals. If you restore to an active system (one where /proc is 
connected to the kernel), I don't know offhand what will happen ... 
probably a lot of errors during the un'tar'ing (since a lot of this stuff 
is, necessarily, read only) and perhaps changing a few kernel settings (for 
the stuff that can be written, such as the various pseudo-files in 
/prov/sys/net.ipv4). I don't really know, since I've never done a tar 
restore to a running system that included this particular error.

Long ago, I did actually make this mistake when setting up a new system. 
Sine the HD in question wasn't yet  the root filesystem, all that happened 
is that a copy of the old system's kernel internals was written to some 
places line /newdisk/proc . Then when I used the new disk as root, using 
/provc as the mount point hid these entries (the normal effect of using a 
directory as a mount point). Of course, in the bad old days, wasting a 
couple of megs on a 300 MB disk was a big deal; it matters less when one 
measures disk space in GB.


>Second. This script prevents backing up the backup, which seems off
>hand like a way to avoid an infinite recursion. However, such a
>recursion did not actually seem to happen, and I don't know why. That
>is, using tar (tar -C "$1" -cOl . | tar -C "$2" -xpf -), the /proc and
>/mnt/mirror directories in the backup copy appear to be empty. Why
>empty directories?

Because you have the -l option set. This thread started when you asked why 
ALL the mounted filesystems were not saved but showed as empty directories. 
This is, almost surely, the reason why whoever did the script included the 
-l option ... it is the simplest way to avoid copying /proc.

As to recursion ... tar isn't stupid, and the possibiliy of recursion is 
always present. It usually (probably always) knows not to include in a 
tarfile the file it is writing to, even if the filespec for saving 
describes that file. Certainly, tar does not recurse when given this sort 
of command:

         tar -cvf ./somefile.tar ./*

I doubt that removing the -l would introduce recursion problems, but 
doubting isn't the same as knowing, so you do want to watch for it.

I'm deleting your third question because I can't help you there.
[...]


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
