From: caszonyi@rdslink.ro
Subject: Re: longstanding Linux irritants: suggested solutions?
Date: Tue, 13 Apr 2004 02:28:10 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0404130223580.449@grinch.ro>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0404121355350.673@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 12 Apr 2004, James Miller wrote:

> The next irritant I've encountered has to do with mice and the 2.6.4
> kernel.  I have a pretty much standard ps2 mouse (a trackballish type
> thing but definitely with a ps2 plug).  This mouse works fine with the 2.4
> kernels I've tried it with thus far: I've loaded 3 or 4 different 2.4.x
> kernels over the last few months and never had any problems.  However,
> when I tried to use a 2.6.x kernel - up to and including the latest 2.6.4
> kernel - the mouse does not work.  In other words, I try to move the
> cursor and it won't move: it simply stays stuck in the middle of the
> screen regardless of what I move on the physical mouse.  These kernels are
> the stock Debian Sid ones, btw - I did *not* compile them myself (ok, go
> ahead and subtract geek points . . . see if I care).  In other words, when
> I want to try a new kernel I do apt-get install
> kernel-image-whatever.ver-686.  Then I do the necessary tweaking of lilo
> and symlinks in /boot and so forth.  The machine boots fine by this means,
> btw.  I just can't use the mouse with the 2.6.x kernels when it gets to
> the gui stage, for some strange reason.  I looked over
> /var/log/XFree86.0.log and, to my untrained eye, the following message
> toward the end of that file seems like it could apply:
>
> (**) Option "Protocol" "PS/2"
> (**) Configured Mouse: Protocol: "PS/2"
> (**) Configured Mouse: Core Pointer
> (**) Option "Device" "/dev/gpmdata"
> (==) Configured Mouse: Buttons: 3
> (**) Option "Protocol" "PS/2"
> (**) Generic Mouse: Protocol: "PS/2"
> (**) Generic Mouse: always reports core events
> (**) Option "Device" "/dev/input/mice"
> (EE) xf86OpenSerial: Cannot open device /dev/input/mice
>         No such device.
> (EE) Generic Mouse: cannot open input device
> (EE) PreInit failed for input device "Generic Mouse"
> (II) UnloadModule: "mouse"
> (II) XINPUT: Adding extended input device "Configured Mouse" (type: MOUSE)
>
> Could anyone offer suggestions for how to resolve this mouse problem so I
> can finally begin using the 2.6.4 kernel?  Thanks for input on this.
>


replace /dev/gpmdata with /dev/psaux i guess



--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
