From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Ctrl-Alt-Backspace
Date: Thu, 16 May 2002 15:17:33 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0205161517330C.27213@unix.pa3gcu>
References: <200205161033.g4GAXbU28025@mail.orcon.net.nz>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205161033.g4GAXbU28025@mail.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: cr <cr@orcon.net.nz>, linux-newbie@vger.kernel.org

On Thursday 16 May 2002 11:50, cr wrote:
> In the past, when X-Windows very occasionally siezed, I could just
> hit Ctrl-Alt-Backspace and kill X-windows, leaving me in Linux.   Very
> convenient.
>
> However, since I've got a software-controlled power supply (I think
> that's what's made the difference), Ctrl-Alt-Backspace reboots the
> computer, which is not good.
>
> Is there any alternative command to kill Xwindows, or any way to program
> in a key combination to do this?

One comes to mind presuming you have at lest one text console defined.

ctrl-alt-F7 should bring you into a text console providing of course X has 
not locked up the keyboard.
You could then kill all X processes with something like;
killall X
killall xdm

Or a wild idea of mine would be to define a key combination;
control-center > look and feel > key bindings
Thats for KDE.
I do have my doubts as to that being of any use tho;

>
> cr

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
