From: James Miller <jamtat@mailandnews.com>
Subject: RE: more X problems
Date: Wed, 13 Nov 2002 14:55:01 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0211131447020.21708-100000@localhost.localdomain>
References: <5.1.0.14.1.20021113114914.0218ccf0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021113114914.0218ccf0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On 13 Nov 2002, Ray Olszewski wrote:
> This could be any of several things ... especially with an unsupported card 
> .... but the most likely is that you have told the X server to use a refresh 
> rate (an hsync or vsync ... apparently the variable names these days are 
> HorizSync and VertRefresh) that your monitor will not support. Double check 
> your values, or switch to more conservative ones.
> 
> Also, what default screen size and bit depth are you using? (Check the X 
> error log, or redirect X's STDERR to a file, for example with 
> "startx >xerrors.txt 2>&1".)  Try making 640x480, 8-bit color the first 
> choice, as really old monitors may not support anything better (but rarely 
> will fail to support it).
> 

I tried several - 4, 8 and 16 bit. I tried 640x480 like you suggested at 8 
and 4 bit, but no luck. Other than the h and v sync values I found on the 
'net for this monitor, I've tried 31.5 at 640x480 with 50-70. Still no 
display.

> Do you have access to the system from anything othet than the console? (For 
> example, can you ssh or telnet in, or do you have a serial display 
> connected?) 

No. Sorry.

When the screen is "dark", if you press CTRL-ALT-F2, do you get 
> a console login back? (This will work for some monitors with sync problems, 
> but not all ... you may need to power-cycle the monitor after you press the 
> key combination ... and I don't know that even that will work reliably.)
> 

No. I tried ctrl-alt-f2 - which I know in other Linuxes I've used takes 
one to a console. That didn't work. Just continues to sit there blank. I 
eventually hit ctrl-alt-del, which reboots the system.

The saga continues . . .

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
