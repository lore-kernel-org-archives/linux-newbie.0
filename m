From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: xterm: copy and paste
Date: Mon, 6 Jan 2003 21:22:45 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03010621224501.24001@unix.pa3gcu>
References: <200301061517.h06FHrtJ032214@hartford-hwp.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200301061517.h06FHrtJ032214@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>, linux-newbie@hartford-hwp.com
Cc: linux-newbie@vger.kernel.org

On Monday 06 January 2003 15:17, Haines Brown wrote:

Haines, first of all you have that dreaded "ReplyToo" problem again.

By hitting my reply to all button i see i get the following headers.
Haines Brown <brownh@hartford-hwp.com>, linux-newbie@hartford-hwp.com
I added a Cc to linux-newbie@vger.kernel.org

> When I upgraded to RH 8.0, I seem to have lost the ability to copy
> data displayed in xterm into a clipboard for pasting, say, into
> emacs.
>
> I need to do this from the keyboard, but mention that a mouse swipe
> does not put the text into the clipboard except within xterm. A Ctl-y
> causes a beep. A Ctl-c just restarts the shell.
>
> Do I now have to do a keybind for xterm to tell it to copy? If so, any
> reason I couldn't use M-w and C-v to copy and paste?
>
> Haines Brown

I have never used your method of ctrl-y or what ever, i have always simply 
used my mouse to copy whatever i wish no matter how big or small to another 
program or xterm or program running in another xterm.

My PS/2 mouse (wheel mouse) allows me to do this in which ever distro i use.

Left button highlights text, goto which ever (program/xterm/program) depress 
the wheel and text is placed into the target, here its as simple as that.

I rather feel what you are asking is the windows way of doing things, my 
mouse is all i need.

Maybe i have misunderstood you, if so i am all ears.

O in case you need it here is how i configure my wheel mouse, which has one 
left and right button and a wheel in the middle, the wheel can be depressed 
to form a 3rd button.

Section "InputDevice"
        Identifier  "Mouse1"
        Driver      "mouse"
        Option       "Corepointer"
        Option      "Device" "/dev/psaux"
        Option      "Protocol" "IMPS/2"
        Option       "Buttons" "5"
        Option      "Emulate3Buttons" "off"
        Option      "ZAxisMapping" "4 5"
EndSection

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
