From: James Miller <jamtat@mailsnare.net>
Subject: Re: mouse not writing to device file.....
Date: Fri, 13 Feb 2004 09:32:30 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402130918480.13970@debian-emach>
References: <5.1.0.14.1.20040212091018.01f91780@celine>
 <5.1.0.14.1.20040212202502.01faeaa0@celine> <Pine.LNX.4.58.0402130706310.13970@debian-emach>
 <402C9638.60704@sancharnet.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <402C9638.60704@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 13 Feb 2004, joy wrote:

> James Miller wrote:
>
>  >option, each time I would boot using that kernel, I would not be able to
>  >control the mouse in X.  The cursor would appear on the screen, but moving
>  >the mouse would have no effect on it.  I did get error messages though -
>  >something to the effect of "pointing device not found"  (don't recall
>  >precisely, since my resolution was to put the matter on the back burner
>  >
>  >
> No no no, after checking out the speed of the 2.6, with KDE loading in
> quarte the time,how did you ever get the heart to go back?

I don't use that bloated monstrosity of a desktop :) (fluxbox is my choice
of late), so the difference was not as immediately noticeable.  In fact, I
spent enough time trying to figure out why such a simple thing as a mouse
wouldn't work using this kernel, that any speed advantages that might have
been there were entirely lost.  I never really even got to use my usual
desktop since, once I logged in, all I could really do was
ctrl-alt-backspace to get back to a command prompt where I could actually
interact with the computer.

> I suggest you do the same as  I did -- check the config .If yours too is
> a USB mouse, then with the HID support built in or as a module
> the mouse will still use psaux. Also disable support for anything called
> APIC in the kernel.
> according to NVIDIA 's  helpfile this affects performance on the X
> server (mine used to hang every 3.5 (approx.,) minutes)

No, not a USB mouse.  Mine's just a plain old ps2 - nothing fancy.  I'll
keep the APIC thing in mind for whenever I'll be able to get back again to
troubleshooting the problem.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
