From: Ray Olszewski <ray@comarre.com>
Subject: Re: XF86Config problem
Date: Mon, 08 Apr 2002 16:52:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020408235259.00f82598@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: robrice56@netscape.net, linux-newbie@vger.kernel.org

OK. It took a bit of reading through what you sent, but here is the line (in
the error output)  that actually identifies your problem:

(--) SVGA: Mode "640x480" needs hsync freq of 31.46 kHz. Deleted.

Monitor entry reads:

>Section "Monitor"
>   Identifier      "Primary Monitor"
>   VendorName      "Unknown"
>   ModelName       "Unknown"
>   HorizSync       31.5
>   VertRefresh     60
>   Modeline  "640x480"    25.17 640 664 760 800 480 491 493 525
>EndSection

The difference between 31.46 and 31.5 is small but, apparently, real enough
to matter to the X server. 

What to do? First suggestion: move to a newer version of X11 (3.2.2. is VERY
old -- the current versions are 4.1.something and 4.2.something ... for that
matter, Slackware 3.5 itself is pretty old) and see if it helps.

If you want to be brave ... these are the timings I have in my (3.3.6)
XF86Config file for 640x480 @ 31.5 HSync:

    # 640x480 @ 60 Hz, 31.5 kHz hsync
    Modeline "640x480"     25.175 640  664  760  800   480  491  493  525

You might try modifying the clock entry to match what I have and see if it
helps.

You might also tell us where you got the 31.5 Hsync rate if you know as
little about the display as you say you do. More generally, how did you
generate the XF86Config file, and what decisions did you make (and why) when
doing so?


At 07:20 PM 4/8/02 -0400, robrice56@netscape.net wrote:
>
>---------3730e4672a12bf1c3730e4672a12bf1c
>Content-Type: text/plain; charset=iso-8859-1
>Content-Transfer-Encoding: 8bit
>Content-Disposition: inline
>
>the attched file is my XF86Config file with the error mesages from XF86R6
>my computer is a IBM think pad 350c type 2618-poa I have ben all over the
net trying to find info on this computer 
>I have slack 3.5 12 meg ram 16 meg swap a CT-65530 vido controler what the
display is IBM dosen't even know I hope the rest is in the attched file
[details deleted]


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
