From: James Miller <jamtat@mailsnare.net>
Subject: Re: font display problems after chmod
Date: Wed, 8 Sep 2004 19:13:51 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0409081748360.1371@debian-emach>
References: <5.1.0.14.1.20040908141216.01f3fa48@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040908141216.01f3fa48@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 8 Sep 2004, Ray Olszewski wrote:

> First, font settings: I checked my reliable Debian-Sid workstation (that
> is, the host I do not use for experimentation or development, just for
> chores). Every font I checked on it -- the ones in various
> /usr/X11R6/lib/X11/fonts/* directories, and the ones in /usr/share/fonts/*
> directories -- is either mode 644 or mode 444, owned by root, group root.
> Every subdirectory is mode 755. Since this host is about as stock a
> Debian-Sid system as you can get, I suggest you rely on its settings as
> correct. In any case, they match the usual settings for non-executables
> that all users need access to.
>
> You might want to be sure you fixed *all* the fonts, though.

Hello Ray.  Thanks for interjecting.  I spot-checked fonts again and found
a subdirectory (under /usr/share/fonts/) owned by my user as were all the
fonts within it.  I changed them all to be owned by root.  It doesn't seem
to have corrected the problem: firing up xpdf to look at a file still
results in a blank document - albeit one with the correct number of pages.
Displaying with an invisible font would be the way to describe it, I
suppose.  My further spot-check has revealed that all fonts seem to be
mode 644, owned by root, group root.  All directories/subdirs from
/usr/share/fonts/ and /usr/X11R6/lib/X11/fonts/ on down seem to be mode
755, owned by root, group root.  None of the fonts seem to be mode 444 -
likely since I changed their mode en masse earlier.  Could that be causing
this sort of problem?

> Second, your actual problems: Since you are reporting problems with
> "ps2pdf" and Ghostscript, not just Mozilla and Opera, I don't see what
> leads you to "flaky maintainership" as the source of the problem. Unless, I
> suppose, you think the font packages are being maintained poorly. Me, I'd
> be more inclined to suspect a dependency problem.

Fonts were working fine - nothing unexpected or unusual - prior to running
Mozilla through strace and determining the segfault to be caused by a font
permissions problem.  After I tried "correcting" what I thought was my
newbie error by changing font modes/permissions is where all problems
cropped up.  From this I deduced that, had the program not segfaulted
because of a font permissions problem, I would not have been led to
correct something that was not really even amiss (mozilla-browser /
mozilla-firefox were amiss - segfaulting where they shouldn't - not my
fonts).  That's the chain of logic that leads me to suspect flaky
maintainership as the ultimate source of my current problems.  I'd be
happy to be proved wrong though - especially if it means being able to
view pdf's again or getting Opera to use more normal-looking fonts

> I can't find a Debian-Sid package for ps2pdf, so for that one, please check
> what package the app comes from (with "dpkg -S" followed by the FQN of the
> app). Is is perhaps part of the xpdf package or one of the xpdf-* packages
> in its dependencies list ... if so, the xpdf-reader package lists gsfonts
> as a dependency (see discussion of ghostscript below).

I'm not sure what "FQN" means.  But issuing "dpkg -S ps2pdf" results in
the following output:

me@mymachine:~$ dpkg -S ps2pdf
gs-common: /usr/share/man/de/man1/ps2pdf.1.gz
xprt-common:
/usr/share/Xprint/xserver/C/print/models/PS2PDFspooldir-GS/ps2pdf_spooltodir.sh
gs-common: /usr/bin/ps2pdfwr
gs-common: /usr/bin/ps2pdf12
gs-common: /usr/bin/ps2pdf13
gs-common: /usr/bin/ps2pdf14
gs-common: /usr/share/man/man1/ps2pdf13.1.gz
gs-common: /usr/bin/ps2pdf
gs-common: /usr/share/man/de/man1/ps2pdf13.1.gz
gs-common: /usr/share/man/man1/ps2pdfwr.1.gz
gs-common: /usr/share/man/man1/ps2pdf.1.gz
gs-common: /usr/share/man/man1/ps2pdf12.1.gz
gs-common: /usr/share/man/de/man1/ps2pdf12.1.gz

Does that help?

> Nor can I find a Debian-Sid package (at least not an *official* one) for
> Opera, though in this case, I suspect there is not one, since I believe
> Opera's license is not DFSG compatible. I did find a few unofficial Opera
> packages, none listing ANY fonts dependencies (but since they are
> unofficial, I would not trust them as much as official-package dependency
> lists).

I added Opera's repository to my sources.list.  But, given that Opera was
displaying normal-looking fonts previous to my attempts to "fix" my
system's fonts to suit Mozilla's odd behavior, do you think this could be
an Opera-specific problem?

> Not myself being a user of Mozilla, I can't give you any real advice there.
> I'm not even *sure* what specific packages you are referring to
> (mozilla-browser and mozilla-firefox, I'd imagine), or how recently you did
> an update/upgrade (or dist-upgrade) ... all things that matter in context.

mozilla-browser and mozilla-firefox. apt-get update(d) and apt-get
dist-upgrade(d) yesterday.  I've been doing that every week or so for the
last month or two, apart from the last 10 days while I was away on
vacation.

> Closing thought: As I recall, your problems started when you made some
> changes "by hand" (that is, outside the package manager) to your Debian-Sid
> system. Bypassing the package manager is always risky, but unless you are
> an extremely dedicated DebHead, it is occasionally necessary. The lesson
> here is not to avoid such changes completely, but to make careful, detailed
> notes when you do them, so you are not left trying to remember what you did
> so you can undo it.I imagine a similar rule applies to other
> package-management systems too.

Actually, the problems started when I began doing apt-get dist-upgrade
rather than discreetly apt-get install(ing) specific programs I wanted
when there was a new release.  Doing that got me a buggy X display, a
broken browser (mozilla 1.6 was working fine: 1.7 has never worked
normally, despite several upgrades) and a loss of network functionality.
I keep hoping X will return to normalcy, but it hasn't yet: I get patches
of black in colored console windows and some jumbling of lines - e.g.,
with mc.  I can live with that.  I've gotten network functionality
somewhat restored by creating a script that brings up the network
interface (loads the modules) when I issue it from the CLI.  Both of these
inconveniences I can live with until determining how/whether to fix them.
The fonts problem has now taken top priority since, as I mentioned, I have
pdf's I need to read.  I don't think I have installed any programs without
using apt.  I do have some unofficial repositories in my sources.list
though - maybe 3.  Opera and evolution-exchange (or something like that)
are the only 2 unofficial packages I've installed, so far as I can recall.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
