From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Tkdesk Segmentation Fault
Date: Sun, 10 Nov 2002 12:22:50 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021110122250.A25979@neutrino.particles.org>
References: <20021108.225110.134684296.0.lawson_whitney@juno.com> <200211100424.gAA4OMQ02428@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211100424.gAA4OMQ02428@philonline.com>; from pfheiss@philonline.com on Sun, Nov 10, 2002 at 12:24:22PM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

On Sun, Nov 10, 2002 at 12:24:22PM +0800, Peter wrote:
> -#1  0x4007502a in _XOpenLC () from /usr/X11R6/lib/libX11.so.6
> -#2  0x400746f9 in XOpenIM () from /usr/X11R6/lib/libX11.so.6
> -#3  0x08079c09 in OpenIM ()
> -#4  0x080783e6 in GetScreen ()
> -#5  0x0807823b in CreateTopLevelWindow ()
> -#6  0x0807891c in TkCreateMainWindow ()
> -#7  0x08089544 in TkCreateFrame ()
> -#8  0x0807a185 in Initialize ()
> -#9  0x08079d4c in Tk_Init ()
> -#10 0x0804c921 in Tcl_AppInit ()
> -#11 0x080768a0 in Tk_Main ()
> -#12 0x0804c8ec in main ()
> (gdb) 

Just a guess. Your X libs are incompatible with your Tcl/Tk.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
