From: James Miller <jamtat@mailsnare.net>
Subject: font display problems after chmod
Date: Wed, 8 Sep 2004 15:32:24 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0409081458260.1371@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Ok.  It's finally time to confront this problem and attempt to resolve it.
I've been sort of limping along with improperly displaying fonts for some
time now, but now some pdf documents I really need to view are displaying
with invisible text.  I need to finally figure out what is causing this
font wierdness on this Debian Sid system and try to fix it.  First,
symptoms: when I use Opera browser, it displays with really wierd fonts
(e.g., something meant to look like hand written scrawl).  Previously, it
displayed with more normal-looking fonts.  When I try to view pdf
documents, they can appear as largely blank pages, except where, for
example, an underline occurs.  This refers to the program xpdf.  ps2pdf
has been failing for me as well, with output like the following:

me@mymachine:~$ ps2pdf pentateu.ps pentateu.pdf
Error: /invalidfont in findfont
Operand stack:
   F0   Times-Roman   Font   Times-Roman   272297   Times-Roman
--nostringval--   Courier   NimbusMonL-Regu   (NimbusMonL-Regu)
NimbusMonL-Regu   (NimbusMonL-Regu)   NimbusMonL-Regu
Execution stack:
   %interp_exit   .runexec2   --nostringval--   --nostringval--
--nostringval--   2   %stopped_push   --nostringval--   --nostringval--
--nostringval--   false   1   %stopped_push   1   3   %oparray_pop   1   3
%oparray_pop   1   3   %oparray_pop   1   3   %oparray_pop   .runexec2
--nostringval--   --nostringval--   --nostringval--   2   %stopped_push
--nostringval--   --nostringval--   2   3   %oparray_pop   3   3
%oparray_pop   --nostringval--   --nostringval--   --nostringval--
--nostringval--   --nostringval--   false   1   %stopped_push   6   4
%oparray_pop   --nostringval--   --nostringval--   --nostringval--   5
-1   1   --nostringval--   %for_neg_int_continue   --nostringval--
--nostringval--
Dictionary stack:
   --dict:1050/1123(ro)(G)--   --dict:0/20(G)--   --dict:72/200(L)--
--dict:17/17(ro)(G)--   --dict:1050/1123(ro)(G)--
Current allocation mode is local
Last OS error: 2
Current file position is 2801
GPL Ghostscript 8.01: Unrecoverable error, exit code 1

When I try to open a pdf file with GV, I get the following:

GPL Ghostscript 8.01: Unrecoverable error, exit code 1
Error: /invalidfont in findfont
Operand stack:
   --dict:7/7(L)--   F1   20   --dict:9/9(L)--   --dict:9/9(L)--
TimesNewRomanPSMT   --dict:15/15(L)--   Times-Roman   Times-Roman   Font
Times-Roman   397215   Times-Roman   --nostringval--   Courier
NimbusMonL-Regu   (NimbusMonL-Regu)   NimbusMonL-Regu   (NimbusMonL-Regu)
NimbusMonL-Regu
Execution stack:
   %interp_exit   .runexec2   --nostringval--   --nostringval--
--nostringval--   2   %stopped_push   --nostringval--   --nostringval--
--nostrin

Here's where I believe the source of the problem lies.  Some time ago, I
was having trouble getting Mozilla browser and Firefox to run on this
machine after apt-get dist-upgrad(ing).  Basically, each would segfault.
Someone advised me to run the programs through strace to see where the
problem lay ("strace mozilla" at the command line).  Doing so revealed
that the segfault occurred after a certain font could not be loaded.  In
good newbie fashion, I decided that some fonts I had imported into the
system had not had their permissions set corrrectly - i.e., that the
mozilla problem was traceable to newbie error.  Since I had way too many
fonts to examine manually for permissions I decided I should "correct"
them en masse by cd'ing to their directory and issuing "chmod 644 * -r",
then issuing "chown root * -r" (I may have recounted those commands
slightly wrong: I did this some weeks ago and would have to execute the
steps all over again to recall precisely).  I got these settings by
examining fonts at random and determining that most of them were set to
644 and owned by root.  Running those commands had an adverse effect at
first since the subdirectories' permissions also got changed to 644, but
changing them back to 755 largely took care of that.  But it was after
this, as I recall, that the wierd fonts began to display in Opera and I
began to get blank documents when opening pdf's using xpdf.

Let me ask: does it seem modifying font permissions and ownership as I've
done could be the source of these font display problems?  If so, what are
the correct font permissions and ownership, and how should I go about
modifying them?  Input will be much appreciated: this problem must finally
be confronted and resolved for this machine to fulfill my needs.

Thanks, James

PS  I've learned a harsh lesson about Mozilla under Sid, it seems.
Someone from the Debian users list advised me to avoid these packages,
since they are plagued with problems.  Another observed that a program
should not segfault on font problems.  The first-mentioned fellow advised
me to use downloads directly from Mozilla and avoid the Debian packages.
Much as I want to avoid by-passing the package management system, it seems
like it may come to this: I simply must have a useable graphical browser
on this system.  Seems like my assumption of newbie error was wrong in
this case, and that my problems were actually caused by flaky
maintainership.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
