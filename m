From: Ray Olszewski <ray@comarre.com>
Subject: Re: font display problems after chmod
Date: Wed, 08 Sep 2004 15:17:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040908141216.01f3fa48@celine>
References: <Pine.LNX.4.58.0409081458260.1371@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0409081458260.1371@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:32 PM 9/8/2004 -0500, James Miller wrote:
>Ok.  It's finally time to confront this problem and attempt to resolve it.
>I've been sort of limping along with improperly displaying fonts for some
>time now, but now some pdf documents I really need to view are displaying
>with invisible text.  I need to finally figure out what is causing this
>font wierdness on this Debian Sid system and try to fix it.  First,
>symptoms: when I use Opera browser, it displays with really wierd fonts
>(e.g., something meant to look like hand written scrawl).  Previously, it
>displayed with more normal-looking fonts.  When I try to view pdf
>documents, they can appear as largely blank pages, except where, for
>example, an underline occurs.  This refers to the program xpdf.  ps2pdf
>has been failing for me as well, with output like the following:
>
>me@mymachine:~$ ps2pdf pentateu.ps pentateu.pdf
>Error: /invalidfont in findfont
>Operand stack:
>    F0   Times-Roman   Font   Times-Roman   272297   Times-Roman
>--nostringval--   Courier   NimbusMonL-Regu   (NimbusMonL-Regu)
>NimbusMonL-Regu   (NimbusMonL-Regu)   NimbusMonL-Regu
>Execution stack:
>    %interp_exit   .runexec2   --nostringval--   --nostringval--
>--nostringval--   2   %stopped_push   --nostringval--   --nostringval--
>--nostringval--   false   1   %stopped_push   1   3   %oparray_pop   1   3
>%oparray_pop   1   3   %oparray_pop   1   3   %oparray_pop   .runexec2
>--nostringval--   --nostringval--   --nostringval--   2   %stopped_push
>--nostringval--   --nostringval--   2   3   %oparray_pop   3   3
>%oparray_pop   --nostringval--   --nostringval--   --nostringval--
>--nostringval--   --nostringval--   false   1   %stopped_push   6   4
>%oparray_pop   --nostringval--   --nostringval--   --nostringval--   5
>-1   1   --nostringval--   %for_neg_int_continue   --nostringval--
>--nostringval--
>Dictionary stack:
>    --dict:1050/1123(ro)(G)--   --dict:0/20(G)--   --dict:72/200(L)--
>--dict:17/17(ro)(G)--   --dict:1050/1123(ro)(G)--
>Current allocation mode is local
>Last OS error: 2
>Current file position is 2801
>GPL Ghostscript 8.01: Unrecoverable error, exit code 1
>
>When I try to open a pdf file with GV, I get the following:
>
>GPL Ghostscript 8.01: Unrecoverable error, exit code 1
>Error: /invalidfont in findfont
>Operand stack:
>    --dict:7/7(L)--   F1   20   --dict:9/9(L)--   --dict:9/9(L)--
>TimesNewRomanPSMT   --dict:15/15(L)--   Times-Roman   Times-Roman   Font
>Times-Roman   397215   Times-Roman   --nostringval--   Courier
>NimbusMonL-Regu   (NimbusMonL-Regu)   NimbusMonL-Regu   (NimbusMonL-Regu)
>NimbusMonL-Regu
>Execution stack:
>    %interp_exit   .runexec2   --nostringval--   --nostringval--
>--nostringval--   2   %stopped_push   --nostringval--   --nostringval--
>--nostrin
>
>Here's where I believe the source of the problem lies.  Some time ago, I
>was having trouble getting Mozilla browser and Firefox to run on this
>machine after apt-get dist-upgrad(ing).  Basically, each would segfault.
>Someone advised me to run the programs through strace to see where the
>problem lay ("strace mozilla" at the command line).  Doing so revealed
>that the segfault occurred after a certain font could not be loaded.  In
>good newbie fashion, I decided that some fonts I had imported into the
>system had not had their permissions set corrrectly - i.e., that the
>mozilla problem was traceable to newbie error.  Since I had way too many
>fonts to examine manually for permissions I decided I should "correct"
>them en masse by cd'ing to their directory and issuing "chmod 644 * -r",
>then issuing "chown root * -r" (I may have recounted those commands
>slightly wrong: I did this some weeks ago and would have to execute the
>steps all over again to recall precisely).  I got these settings by
>examining fonts at random and determining that most of them were set to
>644 and owned by root.  Running those commands had an adverse effect at
>first since the subdirectories' permissions also got changed to 644, but
>changing them back to 755 largely took care of that.  But it was after
>this, as I recall, that the wierd fonts began to display in Opera and I
>began to get blank documents when opening pdf's using xpdf.
>
>Let me ask: does it seem modifying font permissions and ownership as I've
>done could be the source of these font display problems?  If so, what are
>the correct font permissions and ownership, and how should I go about
>modifying them?  Input will be much appreciated: this problem must finally
>be confronted and resolved for this machine to fulfill my needs.
>
>Thanks, James
>
>PS  I've learned a harsh lesson about Mozilla under Sid, it seems.
>Someone from the Debian users list advised me to avoid these packages,
>since they are plagued with problems.  Another observed that a program
>should not segfault on font problems.  The first-mentioned fellow advised
>me to use downloads directly from Mozilla and avoid the Debian packages.
>Much as I want to avoid by-passing the package management system, it seems
>like it may come to this: I simply must have a useable graphical browser
>on this system.  Seems like my assumption of newbie error was wrong in
>this case, and that my problems were actually caused by flaky
>maintainership.

First, font settings: I checked my reliable Debian-Sid workstation (that 
is, the host I do not use for experimentation or development, just for 
chores). Every font I checked on it -- the ones in various 
/usr/X11R6/lib/X11/fonts/* directories, and the ones in /usr/share/fonts/* 
directories -- is either mode 644 or mode 444, owned by root, group root. 
Every subdirectory is mode 755. Since this host is about as stock a 
Debian-Sid system as you can get, I suggest you rely on its settings as 
correct. In any case, they match the usual settings for non-executables 
that all users need access to.

You might want to be sure you fixed *all* the fonts, though.

Second, your actual problems: Since you are reporting problems with 
"ps2pdf" and Ghostscript, not just Mozilla and Opera, I don't see what 
leads you to "flaky maintainership" as the source of the problem. Unless, I 
suppose, you think the font packages are being maintained poorly. Me, I'd 
be more inclined to suspect a dependency problem.

I can't find a Debian-Sid package for ps2pdf, so for that one, please check 
what package the app comes from (with "dpkg -S" followed by the FQN of the 
app). Is is perhaps part of the xpdf package or one of the xpdf-* packages 
in its dependencies list ... if so, the xpdf-reader package lists gsfonts 
as a dependency (see discussion of ghostscript below).

Nor can I find a Debian-Sid package (at least not an *official* one) for 
Opera, though in this case, I suspect there is not one, since I believe 
Opera's license is not DFSG compatible. I did find a few unofficial Opera 
packages, none listing ANY fonts dependencies (but since they are 
unofficial, I would not trust them as much as official-package dependency 
lists).

The Ghostview (gv, *not* "GV") package depends on gs (Ghostscript), which 
is now in package gs-gpl.  gs-gpl, lists a dependency on gsfonts; you might 
want to verify that it is installed, and, if it is, that its fonts are 
correctly mode'd. (The other 2 Ghostscript packages, gs-esp and gs-afpl, 
appear to have the same dependency.) You might also need the current 
version of gsfonts-x11 installed; I couldn't be certain from the info 
"apt-cache show" reports.

Not myself being a user of Mozilla, I can't give you any real advice there. 
I'm not even *sure* what specific packages you are referring to 
(mozilla-browser and mozilla-firefox, I'd imagine), or how recently you did 
an update/upgrade (or dist-upgrade) ... all things that matter in context.

One place to check with all of these apps is libfreetype6. This is the core 
font-management library, and you might want to verify that you have the 
current version installed. You might also check on fontconfig and 
libfontconfig1.

As to the "advice" that ...

>Another observed that a program
>should not segfault on font problems.

... yeah, right. And planes should take off and land on time, too. The only 
segfaults you refer to are with Mozilla (the gv and ps2pdf problems are 
errors but not segfaults), and you don't include the details for those (and 
if you did previously, I don't remember them). A segfault here might 
indicate poor error-handling code in the app, but not a loss of 
functionality if the font were available. Ideally, you'd expect all errors 
to be trapped in a fully-functional program ... but few applications meet 
this ideal.

Closing thought: As I recall, your problems started when you made some 
changes "by hand" (that is, outside the package manager) to your Debian-Sid 
system. Bypassing the package manager is always risky, but unless you are 
an extremely dedicated DebHead, it is occasionally necessary. The lesson 
here is not to avoid such changes completely, but to make careful, detailed 
notes when you do them, so you are not left trying to remember what you did 
so you can undo it.I imagine a similar rule applies to other 
package-management systems too.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
