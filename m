From: James Miller <jamtat@mailsnare.net>
Subject: Re: continuing (pdf) font frustrations
Date: Fri, 8 Oct 2004 14:12:46 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410081331320.1527@debian-emach>
References: <5.1.0.14.1.20041008103518.01f22280@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041008103518.01f22280@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 8 Oct 2004, Ray Olszewski wrote:

Thanks for your response, Ray.

> 1. Just to eliminate  possible rookie error ... do you know that the
> "certain" .pdf files are themselves good? Can you read them on Windows
> using Acrobat, or could you previously read it on this system? You've
> almost surely checked this, but your problem has gotten so messy that I
> don't want to skip past even "obvious" questions. (If you have a small one,
> consider sending it to me off-list, and I'll make sure I can display it here.)

The files (the text within them) were previously readable, whereas now
only the graphics portions of them are visible.  I've selected two for
testing: one is a webpage I printed to file (.ps) then used ps2pdf to
convert to a pdf.  The other is a city bus map I downloaded that was
created eslewhere: neither show any text where they used to - only blank
space around or within the graphics.  I've just checked them using
Acroread under Win (VMware install of Win 98) and they both display
normally there: all text appears and is legible.  On Debian, I get only
graphics but no text.  I'll send you the smaller of the two offlist (the
webpage I printed to .ps file, then converted to pdf) so you can check it
as well:  the other one is fairly large - nearly 1 MB.

> 2. How have you been starting xpdf? Try starting it through an xterm, so
> you can either see or redirect STDOUT and STDERR ... see if xpdf is telling
> you anything about the problem that way.

Been starting it via the menu Debian gives.  When I start it from an xterm
and open a problematic file, I get the following in STDOUT (in the
terminal, right?):

me@mycomputer:~$ xpdf
Error: Couldn't create a font for 'Times-Roman'
Error: Couldn't create a font for 'Times-Roman'
Error: Couldn't create a font for 'Times-Roman'
Error: Couldn't create a font for 'Times-Roman'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica-Bold'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica-Bold'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica-Bold'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Times-Bold'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Times-Bold'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'
Error: Couldn't create a font for 'Helvetica'


> 3. Check for a dependency problem. The easiest way is to remove, then
> install the package, that is ...
>
>          apt-get remove xpdf
>          apt-get install xpdf
>
>  From what you wrote below, it appears you already tried his. Oh well.

Yep, tried that.  Except I'm using Synaptic now, so I did it through the
gui.

> 4. Is there anything that systematically distinguishes the "certain" .pdf
> files that have problem from others that, presumably, do not? Might you be
> missing some specific font that they need, for example? The gv output you
> wrote below seems to suggest this, in that the error comes from "findfont".
> (I don't use gs here, so I'm not familiar with the form of its error
> output, leving me to guess that
> "Helvetica   Font   Helvetica   362928   Helvetica" *might* be the missing
> font. See what "fc-list" tells you.

I'm guessing it's a missing font problem, yes.  I don't see Helvetica in
the list fc-list produces, and "fc-list |grep Helvetica" does not return
any results.  Could that be the problem?  Helvetica is definitely
available and useable in OpenOffice.org, but I don't see it listed in
Abiword's font menu.

> 5. Or there might be some lost "mapping" between a font you do have and
> Helvetica. (I say this because I don't have a Helvetica on my system
> either, and I can't find a .deb that provides a true Helvetica.) Check that
> you have tthe full Nimbus font set, for example (that appears to be what
> xpdf and gs want to use for Helvetica):
>
>          waverly:/proc# fc-list  |grep Nimbus |grep Sans
>          Nimbus Sans L:style=Regular Italic
>          Nimbus Sans L Condensed:style=Regular
>          Nimbus Sans L:style=Bold
>          Nimbus Sans L Condensed:style=Regular Italic
>          Nimbus Sans L:style=Regular
>          Nimbus Sans L:style=Bold Italic
>          Nimbus Sans L Condensed:style=Bold
>          Nimbus Sans L Condensed:style=Bold Italic

I get

Nimbus Sans L:style=Regular Italic
Nimbus Sans L:style=Bold
Nimbus Sans L:style=Regular
Nimbus Sans L:style=Bold Condensed
Nimbus Sans L:style=Bold Italic
Nimbus Sans L:style=Regular Condensed Italic
Nimbus Sans L:style=Regular Condensed
Nimbus Sans L:style=Bold Condensed Italic

> Also make sure you have the deforma symlinks to these fonts present:
>
>          waverly:/proc# find / -name *imbus*
>          /var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-ReguItal.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusMonL-Bold.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldCond.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-MediItal.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-Medi.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusSanL-Regu.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldItal.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusSanL-Bold.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguCond.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusMonL-BoldObli.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusMonL-ReguObli.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguCondItal.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldCondItal.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-Regu.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguItal.pfb
>          /var/lib/defoma/fontconfig.d/N/NimbusMonL-Regu.pfb
>
> (These are all symlinks to various actual fonts
> in  /usr/share/fonts/type1/gsfonts/ )

Here's what I get doing "find / -name *Nimbus*":

/var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-ReguItal.pfb
/var/lib/defoma/fontconfig.d/N/NimbusMonL-Bold.pfb
/var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldCond.pfb
/var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-MediItal.pfb
/var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-Medi.pfb
/var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldItal.pfb
/var/lib/defoma/fontconfig.d/N/NimbusSanL-Regu.pfb
/var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguCond.pfb
/var/lib/defoma/fontconfig.d/N/NimbusSanL-Bold.pfb
/var/lib/defoma/fontconfig.d/N/NimbusMonL-BoldObli.pfb
/var/lib/defoma/fontconfig.d/N/NimbusMonL-ReguObli.pfb
/var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguCondItal.pfb
/var/lib/defoma/fontconfig.d/N/NimbusSanL-BoldCondItal.pfb
/var/lib/defoma/fontconfig.d/N/NimbusRomNo9L-Regu.pfb
/var/lib/defoma/fontconfig.d/N/NimbusSanL-ReguItal.pfb
/var/lib/defoma/fontconfig.d/N/NimbusMonL-Regu.pfb

> 6. With respect to defoma and its kin, did you ever "blindly choose"
> something other than the recommended default? Debian is not really idiot
> proof, but its default choices are pretty good.

It's quite possible.  My policy is to accept the defaults, but sometimes I
think: "what the heck, why not try an alternative? Maybe I'll learn
something" (all this time the good angel on my right shoulder is saying
"you'll hose your system, bub.  Be wise, and stick with convetion")  But
again I understand so poorly what Defoma and Pango are and do that it
wasn't really a conscious decision, so I have no clear recollection.
Sorry - I know that doesn't help.

Again, thanks.

James

(Rest of previous content deleted)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
