From: cr <cr@orcon.net.nz>
Subject: Re: Can't see my drives
Date: Sun, 25 Aug 2002 14:16:09 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020825055150.EB46751BA2@smtp.orcon.net.nz>
References: <5.1.0.14.1.20020823084240.02277630@celine> <5.1.0.14.1.20020824074857.02250780@celine>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020824074857.02250780@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Sunday 25 August 2002 03:05, Ray Olszewski wrote:
> Selected responses only, below.



> Before I set up ide-scsi here, my CD burner worked just fine as a reader in
> ide mode.

That's exactly what I'd expect to be able to do.   

In fact,as I recall it, when I replaced my old 6x CD-ROM (IDE) drive with my 
LG cd-writer  (also IDE), I don't think the system even 'noticed' the 
change....   it all worked exactly as before.

I think I'll try to work back to the original IDE CD-ROM setup, and see how I 
go from there.

[.....]
> >
> >Is this going to happen *every* time I upgrade?   8(
>
> Probably. You'll need to make notes about how you set this up and redo it
> with every full-level (not incremental) upgrade. (Or you could switch to a
> distro that does upgrades more gently, as Debian does ... but I digress.)

Umm OK, this time I *will* take notes.   :)

> [...]
>
> >As a related question, is there anywhere on the Internet a page that
> > explains (in simple language) what the boot-up sequence of Linux is (and
> > XFree86 for that matter) and what files get read in what order?   Man
> > pages are always much too detailed and limited in scope to be easy to
> > follow.
>
> You probably want to know about the init sequence, not the boot-up
> sequence. Booting just involves getting the kernel running and starting the
> init process. The init process (normally, and we can easily neglect the
> exceptions for the moment) is governed by the directives in /etc/inittab.
> Typically, these directives involve a three-step init process:
>
>          1. Init into single-user more and run a script. On my systems, and
> pretty much every Linux system I've ever sern, this is a script called rcS.
> Its location varies a bit; on my systems, the coverning line reads
> "si::sysinit:/etc/init.d/rcS". This script in turn runs other scripts; if
> you understand shell scripting, you can follow the sequence by reading the
> scripts.
>
>          2. Init into normal multi-user mode (governed by a runlevel
> specification). This works the same way as step 1, except init runs a
> different script, again as specified in inittab for the default or chosen
> runlevel. On my systems, it is a line like "l2:2:wait:/etc/init.d/rc 2" --
> which says run the script /etc/init.d/rc and pass to it the argument "2".
>
>          3. Run other processes specified for the chosen or default
> runlevel. Typically these are just the tty processes that allow for console
> logins (look for lines like "1:2345:respawn:/sbin/getty 38400 tty1"), but
> some distros use this step to run an X-based login process like xdm or to
> run consoles on serial ports.

Thanks!   I'll file this and print out a copy for reference.

> I'm not sure if there is a general turorial on the boot/init process, but
> were I looking for one, I'd look through the HowTos at (for example)
> www.linuxdoc.org .

I don't recall seeing one, but I'll check again.

cr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
