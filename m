From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: Re: Linux install error
Date: Sun, 27 Jul 2003 11:26:34 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <304c2b3304ad10.304ad10304c2b3@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

----- Original Message -----
From: Michael Scottaline <nbhs2@i-2000.com>
> On Sat, 26 Jul 2003 22:33:49 -0400
> Anshuman Singh Rawat <asr245@nyu.edu> insightfully noted:
> 
> >Hi,
> >I am trying to install RHL7.3 on my machine (WinXP is already 
> there in it).
> =============================
> And what might "my machine" be???  Your not giving the folks on 
> the list much
> info to go on, despite doing a good job of relaying the 
> appropriate error
> messages.  With more info, someone here *might* be able to help.
> Mike
> --Muhammad Ali
> 

The machine is a laptop with a intel celeron 1.2Ghz processor in it.

The error message was -

Running anaconda - please wait...

Probing for videao card: VESA driver(generic)
Probing for Monitor type: Unable to probe
Probing for Mouse type: Generic - 3 Button mouse(PS/2)

Attempting to start framebuffer based  Server
Waiting for Xserver to start... log located in /tmp/X.log
1..2..3..4..5 Xserver started successfully
Traceback (Innermost last)
    File "/usr/bin/anaconda", line 487, in ?
        from splashscreen import splashScreenShow
    File "/usr/bin/anaconda/splashscreen.py", line 21, in ?
        from gtk import *
    File "/usr/lib/python1.5/site-packages/gtk.py", line 22, in ?
        from _gtk
ImportError: /usr/lib/libgtk-1.2.so.0:invalid ELF header
install exited abnormally.
sending termination signals...done
sending kill signals...done


I had used the same set of CD's to install linux earlier on the same machine. A week ago i formatted my hard-disk and tried to reinstall but it didn;t work. 

Any idea what the problem mite be?

-Anshuman


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
