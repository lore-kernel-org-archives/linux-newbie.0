From: "Arthur Othieno" <a_othieno@hotmail.com>
Subject: Re: Can't see my drives
Date: Sun, 25 Aug 2002 20:53:39 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <OE532m9lHiu3fQtYdVz00016e0b@hotmail.com>
References: <5.1.0.14.1.20020823084240.02277630@celine> <5.1.0.14.1.20020822075404.0226b2d0@celine> <5.1.0.14.1.20020823084240.02277630@celine> <5.1.0.14.1.20020824074857.02250780@celine>
Reply-To: "Arthur Othieno" <a_othieno@hotmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: cr@orcon.net.nz, Linux Newbie Mailing List <linux-newbie@vger.kernel.org>, Ray Olszewski <ray@comarre.com>


----- Original Message -----
From: "Ray Olszewski" <ray@comarre.com>
To: <cr@orcon.net.nz>; <linux-newbie@vger.kernel.org>
Sent: Saturday, August 24, 2002 4:05 PM
Subject: Re: Can't see my drives


> Selected responses only, below.
>
> At 08:27 PM 8/24/02 +1200, cr wrote:
> >[...]
> > > Then see if you can mount an iso9660 CD successfully.
> >[...]
> >and, as  su root, I got:
> >"mount:  wrong fs type, bad option, bad superblock on /dev/cdrom,
> >or too many mounted filesystems
> >(could this be the IDE device where you in fact use
> >ide-scsi so that sr0 or sda or so is needed?)"
>
> Hmmm ... well, as we previously discussed, you do need to use ide-scsi
> anyway (for burning). But I'm surprised that you can't use it as a reader
> dieectly in IDE mode. Unless perhaps you have the ide-scsi stuff partly
> installed, just not working right. Perhaps Riley's comment that you need
to
> switch scsi device names is on target?
>
> Before I set up ide-scsi here, my CD burner worked just fine as a reader
in
> ide mode.
>
> [...]
> > > Finally, I note that your CD device is a CD writer. To use it as a
> > > *writer*, you do need to implement ide-scsi emulation.  So I'd guess
that
> > > that was how you had it set up when it worked before (in which case,
> > > /dev/scd0 would be the right device to use when accessing it) ... but
that
> > > in doing the upgrade, you lostr that emulation.
> >
> >I remember now, and I'd say you're exactly right!
> >
> >Is this going to happen *every* time I upgrade?   8(
>
> Probably. You'll need to make notes about how you set this up and redo it
> with every full-level (not incremental) upgrade. (Or you could switch to a
> distro that does upgrades more gently, as Debian does ... but I digress.)
>
> [...]
> >As a related question, is there anywhere on the Internet a page that
explains
> >(in simple language) what the boot-up sequence of Linux is (and XFree86
for
> >that matter) and what files get read in what order?   Man pages are
always
> >much too detailed and limited in scope to be easy to follow.

There is a HOWTO that describes the Linux 'boot-up sequence' dubbed
"From-Power-Up-To-Bash-Prompt HOWTO".
"The UNIX and Internet Fundamentals HOWTO" may also be useful. Get them all
at http://www.tldp.org/docs.html#howto

> You probably want to know about the init sequence, not the boot-up
> sequence. Booting just involves getting the kernel running and starting
the
> init process. The init process (normally, and we can easily neglect the
> exceptions for the moment) is governed by the directives in /etc/inittab.
> Typically, these directives involve a three-step init process:

Before initialising any scripts, init looks for a line in inittab that
defines it's default runlevel. This
should be something like: "id:5:initdefault:" in your case. It then runs an
initialisation script...

>          1. Init into single-user more and run a script. On my systems,
and
> pretty much every Linux system I've ever sern, this is a script called
rcS.
> Its location varies a bit; on my systems, the coverning line reads
> "si::sysinit:/etc/init.d/rcS". This script in turn runs other scripts; if
> you understand shell scripting, you can follow the sequence by reading the
> scripts.

On RedHat, the initialisation script is actually /etc/rc.d/rc.sysinit, so
you will have a line simillar to 'si::sysinit:/etc/rc.d/rc.sysinit' in your
inittab file...

>          2. Init into normal multi-user mode (governed by a runlevel
> specification). This works the same way as step 1, except init runs a
> different script, again as specified in inittab for the default or chosen
> runlevel. On my systems, it is a line like "l2:2:wait:/etc/init.d/rc 2" --
> which says run the script /etc/init.d/rc and pass to it the argument "2".
>
>          3. Run other processes specified for the chosen or default
> runlevel. Typically these are just the tty processes that allow for
console
> logins (look for lines like "1:2345:respawn:/sbin/getty 38400 tty1"), but
> some distros use this step to run an X-based login process like xdm or to
> run consoles on serial ports.

Redhat runs mingetty instead which is a minimal getty for consoles, so you
might see a few lines like:
"l:2345:respawn:/sbin/mingetty tty1"

The last line in inittab reads "x:5:respawn:/etc/X11/prefdm -nodaemon", this
is actually a shell script
that runs xdm on tty7 in most cases

> I'm not sure if there is a general turorial on the boot/init process, but
> were I looking for one, I'd look through the HowTos at (for example)
> www.linuxdoc.org .

The HOWTOs recommended above should do the trick ;-)

Sorry about the attention-to-detail (if I may say) on RedHat Ray, I'm just
trying to make
CR feel at home with his box ;-)

--Arthur--

> --
> -------------------------------------------"Never tell me the
odds!"--------
> Ray Olszewski -- Han Solo
> Palo Alto, California, USA   ray@comarre.com
> --------------------------------------------------------------------------
-----
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
