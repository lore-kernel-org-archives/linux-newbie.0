From: Ray Olszewski <ray@comarre.com>
Subject: Re: continuing (pdf) font frustrations
Date: Fri, 08 Oct 2004 11:05:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041008103518.01f22280@celine>
References: <Pine.LNX.4.58.0410081017310.1527@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410081017310.1527@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:09 PM 10/8/2004 -0500, James Miller wrote:
>Sorry to beat a dead horse over these font problems, but it's really
>bothering me and interfering with my work.  I've posted on this before,
>but the issue remains unresolved.  Previously I complained about a couple
>of apps as having some font problems: browsers (Mozilla and Opera) and pdf
>viewers (Xpdf and GV).  Well, I need to reduce the field in this post:
>all X apps display fonts just fine so far as I can tell - except for the
>pdf viewers.  My problem now focuses on an inability to view certain pdf
>files.  What I mean by "inability to view" is that the program opens a
>file, but where text should be in the file there is nothing - just
>white/blank space.  That's what Xpdf does.  GV does the same, but at least
>gives an error message.

OK, James. Fair enough. But let's then try to pin things down a bit more. 
For now, let's stay with xpdf for tests.

1. Just to eliminate  possible rookie error ... do you know that the 
"certain" .pdf files are themselves good? Can you read them on Windows 
using Acrobat, or could you previously read it on this system? You've 
almost surely checked this, but your problem has gotten so messy that I 
don't want to skip past even "obvious" questions. (If you have a small one, 
consider sending it to me off-list, and I'll make sure I can display it here.)

2. How have you been starting xpdf? Try starting it through an xterm, so 
you can either see or redirect STDOUT and STDERR ... see if xpdf is telling 
you anything about the problem that way.

3. Check for a dependency problem. The easiest way is to remove, then 
install the package, that is ...

         apt-get remove xpdf
         apt-get install xpdf

 From what you wrote below, it appears you already tried his. Oh well.

4. Is there anything that systematically distinguishes the "certain" .pdf 
files that have problem from others that, presumably, do not? Might you be 
missing some specific font that they need, for example? The gv output you 
wrote below seems to suggest this, in that the error comes from "findfont". 
(I don't use gs here, so I'm not familiar with the form of its error 
output, leving me to guess that 
"Helvetica   Font   Helvetica   362928   Helvetica" *might* be the missing 
font. See what "fc-list" tells you.

5. Or there might be some lost "mapping" between a font you do have and 
Helvetica. (I say this because I don't have a Helvetica on my system 
either, and I can't find a .deb that provides a true Helvetica.) Check that 
you have tthe full Nimbus font set, for example (that appears to be what 
xpdf and gs want to use for Helvetica):

         waverly:/proc# fc-list  |grep Nimbus |grep Sans
         Nimbus Sans L:style=Regular Italic
         Nimbus Sans L Condensed:style=Regular
         Nimbus Sans L:style=Bold
         Nimbus Sans L Condensed:style=Regular Italic
         Nimbus Sans L:style=Regular
         Nimbus Sans L:style=Bold Italic
         Nimbus Sans L Condensed:style=Bold
         Nimbus Sans L Condensed:style=Bold Italic

Also make sure you have the deforma symlinks to these fonts present:

         waverly:/proc# find / -name *imbus*
         /var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-ReguItal.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusMonL-Bold.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldCond.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-MediItal.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-Medi.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusSanL-Regu.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldItal.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusSanL-Bold.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguCond.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusMonL-BoldObli.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusMonL-ReguObli.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguCondItal.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldCondItal.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-Regu.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguItal.pfb
         /var/lib/defoma/fontconfig.d/N/NimbusMonL-Regu.pfb

(These are all symlinks to various actual fonts 
in  /usr/share/fonts/type1/gsfonts/ )

6. With respect to defoma and its kin, did you ever "blindly choose" 
something other than the recommended default? Debian is not really idiot 
proof, but its default choices are pretty good.

>  I cannot really say what precipitated this
>problem: it could be some chmod-ing I did in some font directories
>recently, could be the result of switching to an apt-get dist-upgrade
>system administration policy I recently adopted for this Debian Sid system
>(had been selectively upgrading apps previously) - I just can't say with
>any certainty.  This surely won't help you help me, but I just have to be
>up front about that.  With dist-upgrade'ing I've gotten dialogues about
>defoma and pango and other font programs/options that I do not understand,
>so I blindly choose.  I suppose changing one of those options from the way
>I initially set up the system could be utlimately at the root of the
>problem.  But the problem is here and needs to be resolved.  As means to
>addressing the problem, I've tried the following: ckecking font files and
>dirs for proper permissions setting (they seem to be fine), uninstalling
>and reinstalling Xpdf (and related progs), GV and reinstalled gsfonts.
>These measures did not help: the problem of blank pdf's or blank portions
>persists.  I need to mention that not all pdf documents are affected: some
>show the text as normal.  But others do not.  Also relevant: ps2pdf no
>longer works, but exits with error messages.  Here is the error message I
>get from GV:
>
>---------------------------------------------------------
>  Error: /invalidfontESP Ghostscript 7.07.1: Unrecoverable error, exit
>code 1
>  in findfont
>Operand stack:
>    --dict:8/8(L)--   F12   1   --dict:8/8(L)--   --dict:8/8(L)--
>--dict:10/10(L)--   Helvetica-Narrow   Font   Helvetica-Narrow   487763
>Helvetica-Narrow   --nostringval--   Helvetica-Narrow
>NimbusSanL-ReguCond   (NimbusSanL-ReguCond)   NimbusSanL-ReguCond
>(NimbusSanL-ReguCond)   NimbusSanL-ReguCond
>Execution stack:
>    %interp_exit   .runexec2   --nostringval--   --nostringval--
>--nostringval--   2   %stopped_push   --nostringval--   --nostringval--
>--nostringval--   false   1   %stopped_push   1   3   %oparray_pop   1
>3   %oparray_pop   1   3   %oparray_pop   .runexec2   --nostringval--
>--nostringval--   --nostringval--   2   %stopped_push   --nostringval--
>--nostringval--   --nostringval--   --nostringval--   %array_continue
>--nostringval--   false   1   %stopped_push   --nostringval--
>%loop_continue   --nostringval--   --nostringval--   --nostringval--
>--nostringval--   7   9   %oparray_pop   8   9   %oparray_pop
>--nostringval--   --nostringval--   --nostringval--   --nostringval--
>--nostringval--   false   1   %stopped_push   11   10   %oparray_pop
>--nostringval--   --nostringval--   --nostringval--   5   -1   1
>--nostringval--   %for_neg_int_continue   --nostringval--
>--nostringval--
>Dictionary stack:
>    --dict:1055/1417(ro)(G)--   --dict:0/20(G)--   --dict:73/200(L)--
>--dict:97/127(ro)(G)--   --dict:229/230(ro)(G)--   --dict:20/24(L)--
>--dict:4/6(L)--   --dict:20/31(L)--   --dict:10/13(L)--
>--dict:17/17(ro)(G)--   --dict:1055/1417(ro)(G)--
>Current allocation mode is local
>Last OS error: 2
>--------------------------------------------------------------
>
> >From ps2pdf, I get the following error:
>
>-------------------------------------------------------------
>Error: /invalidfont in findfont
>Operand stack:
>    HeadFont   Helvetica   Font   Helvetica   362928   Helvetica
>--nostringval--   Courier   NimbusMonL-Regu   (NimbusMonL-Regu)
>NimbusMonL-Regu   (NimbusMonL-Regu)   NimbusMonL-Regu
>Execution stack:
>    %interp_exit   .runexec2   --nostringval--   --nostringval--
>--nostringval--   2   %stopped_push   --nostringval--   --nostringval--
>--nostringval--   false   1   %stopped_push   1   3   %oparray_pop   1   3
>%oparray_pop   1   3   %oparray_pop   .runexec2   --nostringval--
>--nostringval--   --nostringval--   2   %stopped_push   --nostringval--
>--nostringval--   2   3   %oparray_pop   3   3   %oparray_pop
>--nostringval--   --nostringval--   --nostringval--   --nostringval--
>--nostringval--   false   1   %stopped_push   6   4   %oparray_pop
>--nostringval--   --nostringval--   --nostringval--   5   -1   1
>--nostringval--   %for_neg_int_continue   --nostringval--
>--nostringval--
>Dictionary stack:
>    --dict:1055/1417(ro)(G)--   --dict:0/20(G)--   --dict:82/200(L)--
>--dict:17/17(ro)(G)--   --dict:1055/1417(ro)(G)--
>Current allocation mode is local
>Last OS error: 2
>Current file position is 6259
>--------------------------------------------------------------
>
>The beginning of each - "Error: /invalidfont in findfont" - seems relevant
>to me.  Doesn't this mean that, since it can't find or use one or more
>fonts, that the program is aborting?  What can I do to check that these
>fonts are present and are fine?  I can use Helvetica and Courier under
>OOo, for example.  Nimbus does not show up as an option there, though.
>In Abiword nimbus fonts of various sorts show up in the font selection
>menu, but trying to select one of them for use causes the program to crash
>(summarily disappear from the screen).  Maybe this is where the problem
>lies?  Please, any ideas on addressing or resolving this problem will be
>appreciated.
>
>Thanks for any input on this.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
