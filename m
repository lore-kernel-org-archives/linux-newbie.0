From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: partitioning drive
Date: Tue, 23 Mar 2004 22:10:53 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403232210.53732.pa3gcu@zeelandnet.nl>
References: <20040323130248.GA10357@panix.com> <200403231539.55433.pa3gcu@zeelandnet.nl> <20040323180912.GC25879@panix.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040323180912.GC25879@panix.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rei Shinozuka <shino@panix.com>
Cc: linux-newbie@vger.kernel.org

On Tuesday 23 March 2004 19:09, Rei Shinozuka wrote:
> i AM an old-timer (administered my first unix system 20 years ago!)
> i find multiple partitions eaiser to back up, easier to ensure that root
> never fills up, fscks run faster, have the flexibility to build
> more than one version of Linux if it so choose somewhere doewn the
> road.

Ok then considering unix dates back to 1970 and was given the name by Brian 
Kernighan and that unix as such only got a name in 1973 when Dennis Ritchie 
invented C, i guess you must have worked for Bell Labs back then or a 
development group composed of at least the above 2 named persons.
Anyway, Unix is AFAIK 24 years old i am 53 (for what its worth) and claim to 
have used most operting systems out there for some or little lenth of time 
which is why i choose to say what i going to.

Anyway, if you have so much Unix experiance ( you did say you are an 
old-timer) why i ask should you need to ask such a  trivial question.

>
> the disk in question is 200GB, the / slice  looks like it has only 7 GB
> on it currently.

I did say use 
fdisk -l /dev/hda
Then you would know just HOW much is used, looks like is as many say "not an 
option".

Ok then you have plenty of space to create your wanted partitions, however 
before doing so, you said;

"i find multiple partitions eaiser to back up, easier to ensure that root
never fills up, fscks run faster, have the flexibility to build more than one 
version of Linux if it so choose somewhere doewn the road."

Why are partitions easier to backup, you dont backup partitions you backup 
directorys/files, or at least i do and seeing that most backup software that 
is out there does that also i though i would ask..
You can of course backup mountpoints as such, but its still a directory 
period.

fdisk runs at the same speed no matter how big the partition is, if one has 
multiple partitions all created at the same time and considering the fact 
that they all get mounted at bootime then fsck will check ALL the partitions 
at the same time (as default it will) unless one uses tune2fs to change 
things, but i guess you know that with all that unix experiance..
So your theory does not make sence, unless as i mentioned one changes the 
defaults with tune2fs.

Anyway use reiserfs then fsck is not an option and certanly NOT a hinderance, 
a system which was simply switched off without umounting a reiserfs 
filesystem will startup in zippo sec's, even quicker than XP with NTFS 
period.
Even if problems occur there is no comparision between fsck checking an
ext2/3 system and resierfs.

Having said that, you with the 20 years unix experiance will also know that 
system uptimes are fantastic, so if one reboots a machine once in a while say 
after 400+ days then 5 minutes fsck is not really an issue if you have ext2 
or ext3.
To overcome that one use reiserfs for the reasons mentioned above which 
disprove your theroy.

 /root will fill up after any amount of time, you made no mention of /var 
where log files are kept,  /usr where programs go, /usr/src where the linux 
source belongs, one as you will no doubt want to have multiple kernsl and 
multiple kernels means multi bytes as one kernelsource is 240Mb after a 
compile.
 /usr/local/src where one should do his own thing. Unless they are on another 
partition then /root will fill up period.

Anyway, if you require letter to letter help say so, but i am sure that you 
with those 20 years of unix experiance can figure it all  out without our 
humbel help.

Use fdisk to create more partitions, 'man fdisk' will help, when in fdisk use 
the famous "?" to ask questions.
Or beforehand;
man fdisk

man mkfs
will help you in creating a filesystem be it ext2 ext3 or whatever.

man mount
for mounting those partitions you created,

man mkdir
for creating your mountpoints.

google.com/linux for a search engine to see if others have asked before and to 
see the answers they got.

Now i may well have my facts wrong here, but;
Are you Rei Shinozuka who created an icon for TkMan,?
Did you ask in another mail here in this list dated Date: Sun, 18 Jan 2004 
10:29:20 -0800 about 
"hardware advice for a PC moron"
If i had 20 years experiance with unix systems i would certanly not call or 
even insinuate that i was a Moron.
http://www.mail-archive.com/linux-newbie@vger.kernel.org/msg04781.html

After all that i hope this helps.

> -rei
>
> On Mar23 15:39, pa3gcu wrote:
> > On Tuesday 23 March 2004 14:02, Rei Shinozuka wrote:
> > > i was just delivered a lovely preinstalled system.
> > >
> > > [root@tuxedo shino]# uname -a
> > > Linux tuxedo 2.4.22-1.2115.nptl #1 Wed Oct 29 15:31:21 EST 2003 i686
> > > athlon i386 GNU/Linux
> > >
> > > the only
> > > problem is that it has only one data partition.
> >
> > I cant reallt call it a problem but here goes.
> >
> > There is absolutly nothing wrong in having one data partition, its a
> > question of personal taste
> >
> > > what i'd really like is 5-6 partitions something like:
> >
> > You already have /boot and /swap which is really all you need.
> > Other may well argue that partitions for /var /home /usr/local/src so on
> > and so on may well be nesassary because thats the way it used to be on
> > some distro's, however times change disks get bigger situations change,
> > this situation certainly has changed as disk size is thesedays (under
> > normal curcumstancies) large enough.
> >
> > Now i am presuming your disk has been fully used, if that is so then you
> > dont have any room to create new partitions, you can resize the biggest
> > partition however it is not 100% safe to do so, (thats what they say, i
> > have never tryed with linux partitions), data loss cannot be ruled out,
> > altho it is considered safe to do such things caution and backups are a
> > must.
> >
> > Now if you have a second disk you can partion it to suit your needs, all
> > i am saying is if it works why break it. A second disk elininates
> > repartitioning problems and data loss.
> >
> > > /
> > > /home
> > > /local
> > > /data
> > > /boot2
> > > /swap
> > >
> > > what's my best best to make this happen?  fips?    fdisk?
> > > disk druid?  something on the fedora install disks?
> >
> > None of the above unless you have some unpartitioned room on the disk in
> > question.
> > AFAIK fips is for FAT partitions (msdos)
> > fdisk is only for creating new (when there is room) and deleting old
> > partitions.
> > disk-druid (AFAIK) idem dito.
> >
> > > this is what it looks like now.
> > >
> > > [root@tuxedo shino]# df -m
> > > Filesystem           1M-blocks      Used Available Use% Mounted on
> > > /dev/hda3               190140      7085    173397   4% /
> > > /dev/hda1                   99         7        88   7% /boot
> > > none                       505         0       505   0% /dev/shm
> >
> > You have 3 partitions, we cant see if you have any spare room without the
> > output of fdisk
> >
> > fdisk -l /dev/hda
> >
> > > thanks so kindly in advance!
> > >
> > > -rei

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
