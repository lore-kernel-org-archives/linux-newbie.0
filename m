From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: Ctrl-Alt-Backspace
Date: Thu, 16 May 2002 16:04:31 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0205161547290.2777-100000@orthanc.lemmerling.net>
References: <200205161033.g4GAXbU28025@mail.orcon.net.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205161033.g4GAXbU28025@mail.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 16 May 2002, cr wrote:

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

a "man XFree86" outputs:
Ctrl+Alt+Backspace
Immediately kills the server -- no questions asked.  This can be disabled
with the DontZap XF86Config(5x) file option.

If this doesn't help you, there still should be the Ctrl-Alt-F1 (F1-F6
default) keystroke... You'll have to logon then and you could kill
X-windows with kill (first do "ps xa" to see what Proces ID X has) or
"killall X". You may have to add the "-9" option to kill or killall.


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
