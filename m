From: John Kelly (bilbo) <bilbo@waitrose.com>
Subject: Re: Linux install error
Date: Sun, 27 Jul 2003 19:22:14 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030727181857.NZIS21249.mta01-svc.ntlworld.com@there>
References: <304c2b3304ad10.304ad10304c2b3@homemail.nyu.edu>
Reply-To: bilbo@waitrose.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <304c2b3304ad10.304ad10304c2b3@homemail.nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Anshuman Singh Rawat <asr245@nyu.edu>, linux-newbie@vger.kernel.org

On Sunday 27 July 2003 4:26 pm, Anshuman Singh Rawat wrote:
> ----- Original Message -----
> From: Michael Scottaline <nbhs2@i-2000.com>
>
> > On Sat, 26 Jul 2003 22:33:49 -0400
> >
> > Anshuman Singh Rawat <asr245@nyu.edu> insightfully noted:
> > >Hi,
> > >I am trying to install RHL7.3 on my machine (WinXP is already
> >
> > there in it).
> > =============================
> > And what might "my machine" be???  Your not giving the folks on
> > the list much
> > info to go on, despite doing a good job of relaying the
> > appropriate error
> > messages.  With more info, someone here *might* be able to help.
> > Mike
> > --Muhammad Ali
>
> The machine is a laptop with a intel celeron 1.2Ghz processor in it.
>
> The error message was -
>
> Running anaconda - please wait...
>
> Probing for videao card: VESA driver(generic)
> Probing for Monitor type: Unable to probe
> Probing for Mouse type: Generic - 3 Button mouse(PS/2)
>
> Attempting to start framebuffer based  Server
> Waiting for Xserver to start... log located in /tmp/X.log
> 1..2..3..4..5 Xserver started successfully
> Traceback (Innermost last)
>     File "/usr/bin/anaconda", line 487, in ?
>         from splashscreen import splashScreenShow
>     File "/usr/bin/anaconda/splashscreen.py", line 21, in ?
>         from gtk import *
>     File "/usr/lib/python1.5/site-packages/gtk.py", line 22, in ?
>         from _gtk
> ImportError: /usr/lib/libgtk-1.2.so.0:invalid ELF header
> install exited abnormally.
> sending termination signals...done
> sending kill signals...done
>
>
> I had used the same set of CD's to install linux earlier on the same
> machine. A week ago i formatted my hard-disk and tried to reinstall but it
> didn;t work.
>
> Any idea what the problem mite be?
>
> -Anshuman
Hi,
Firstly it seems a bit strange that you installed Linux on the same machine 
from the same CDs earlier and while it worked then, it fails now. 
My first guess would be that the CD is damaged. The install is complaining 
about a corrupt header in the gtk library. Maybe the CD is scratched/damaged.

If I were in this situation, I would try a text only install just to see if 
it works. 

If it stil fails, get another disc.

Hope this helps.

regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
