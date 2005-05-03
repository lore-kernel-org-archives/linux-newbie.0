From: Peter <heisspf@skyinet.net>
Subject: Re: HTML files not open in MC
Date: Tue, 3 May 2005 13:39:15 +0800
Message-ID: <20050503133915.0e56ebe7@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I solved the problem. My ~/.mc/bindings was apparently for the old version of
mc. Copying /usr/share/mc/mc.ext to ~/.mc/bindings and making the necessary
corrections makes diilo and lynx pop-up in split seconds again.

# html
regex/\.([Hh]tml?|HTML?|stm?)$
        Open=if test -n "dillo" && test -n "$DISPLAY"; then (dillo
file://%d/%p &) >/dev/null 2>&1; else lynx %f 2>/dev/null || lynx -force_html
%f; fi        View=%view{ascii} lynx -dump -force_html %f

Ergo, if you upgrade upgrade the settings as well.

Peter H. <heisspf@skyinet.net> wrote:

> In the file manager program "mc" version 4.6.0 html files will not open 
> anymore when clicked on. Neither in X nor in console mode. In the latter
> lynx should come into play.
> 
> My settings in ~/.mc/bindings are:
> 
> ## html                                                                     
> regex/\.([Hh]tml?|HTML?|stm?)$                                              
> Open=if echo "%d/%p" | grep ^ftp; then $viewer %d/%p; else $viewer 
> file:%p; fi                                                                 
    
>         Open=if [ x$DISPLAY = x:0.0 ]; then dillo file:%f; else lynx %f ; fi
>         View=%view{ascii} lynx -dump -force_html %f;                        
>         Run with AppletViewer=appletviewer %f                               
>         View with lynx=lynx file://%f
> 
> With this I get the error:
> /tmp/mc-heisspf/mcexty1yKKb: line 2: file:Exotismus.html: command not found
> 
> and the file /tmp/mc-heisspf/mcexty1yKKb is:
> ##! /bin/sh                                                                 
    
> if echo "/home/peter/HTMLs/Exotismus.html" | grep ^ftp; then $viewer 
> /home/peter
> /HTMLs/Exotismus.html; else $viewer file:Exotismus.html; fi
> 
> I had the problem before with dillo when I upgraded to 8.4. this was solved 
> adding "file:" in the line "then dillo file:%f", however, lynx always worked
> in the console.
> 
> Now if I remove "file:" in the line "..else $viewer %p; fi" I get the error:
> ./Exotismus.html: Permission denied
> 
> and the /tmp/mc-heisspf/* reads:
> if echo "/home/peter/HTMLs/Exotismus.html" | grep ^ftp; then $viewer 
> /home/peter/HTMLs/Exotismus.html; else $viewer Exotismus.html; fi
> 
> Lynx still does not come up on the console and I get the error message: 
> Permission denied.
> 
> It seems in the else statement the $viewer does not get anymore the path
> where the file is based.
> 
> So I added %d/ to "else $viewer %p" in .mc/bindings and I get Permission 
> denied, adding file:%d/%p I get command not found. In the /tmp/mc-heissp/*
> in  the else statement $viewer has then the correct directory path either
> with or  w/o file:.
> 
> How to resolve?
> 
> Thanks & regards
> -- 
> Peter
> 


-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
