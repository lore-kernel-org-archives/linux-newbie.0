From: lawson_whitney@juno.com
Subject: Re: XF86Config problem
Date: Mon, 8 Apr 2002 20:12:00 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020408.201310.134669216.0.lawson_whitney@juno.com>
References: <3730BAFF.2A1295B4.0349D98D@netscape.net>
Mime-Version: 1.0
In-Reply-To: <3730BAFF.2A1295B4.0349D98D@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: robrice56@netscape.net, lawson_whitney@juno.com
Cc: linux-newbie@vger.kernel.org

On Mon, 8 Apr 2002 robrice56@netscape.net wrote:

>
> ---------3730e4672a12bf1c3730e4672a12bf1c
> Content-Type: text/plain; charset=iso-8859-1
> Content-Transfer-Encoding: 8bit
> Content-Disposition: inline
>
> the attched file is my XF86Config file with the error mesages from XF86R6
> my computer is a IBM think pad 350c type 2618-poa I have ben all over the net trying to find info on this computer
> I have slack 3.5 12 meg ram 16 meg swap a CT-65530 vido controler what the display is IBM dosen't even know I hope the rest is in the attched file
>
What is a poa?  Never mind.  This thing is a laptop, right?  With an LCD
display?
>
> Section "Monitor"
>    Identifier      "Primary Monitor"
>    VendorName      "Unknown"
>    ModelName       "Unknown"
>    HorizSync       31.5

You said the monitor ^^^^ can only sync at this rate...

This is likely not true, but if you lie to the X server it will act as
if it believes you and not risk harming the hardware.
Why are you using the hsync spec for a VGA (note no S) CRT monitor?

> Start of startx output

> (--) SVGA: Mode "640x480" needs hsync freq of 31.46 kHz. Deleted.

The X server replies that your only mode needs to sync at 31.46

The rest after this is fallout.

I have only limited experience with these things, but in a pinch I can
use my Packard Hell 386 with 4mb as a super-slow X terminal.  I don't
think LCD displays actually sync at all, and they don't seem to care
what hsync is required, so I guess you can just specify a looser hsync
range in the monitor section and maybe that will work better.

   HorizSync       30-40

Or something like that.

Lawson
---oof---




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
