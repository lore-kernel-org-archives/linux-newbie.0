From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Re: Modem Identification
Date: Sun, 15 Dec 2002 09:01:21 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212150901.21290.sotl155360@earthlink.net>
References: <5.1.0.14.1.20021214171540.020e0cb0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021214171540.020e0cb0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Thanks Ray

Actually your response is very close to my intent.

What I am trying to do is identify which port I have a modem which may or may 
not be a win modem connected to. 
It was purchased as a full modem but I sincerely question that it is.

As far as using minicom that is another slight problem there in that for some 
reason I do not have minicom functioning correctly or something resulting in 
that being the next major issue to be resolved since I need minicom for 
another major reason.

Isn't there a command that allows one to "ping" a modem from the command line 
and which returns the modem identification annd type? I seem to recall that 
there is but I can not recall it but again this may be falty network memory.

Thanks
Frank

On Saturday 14 December 2002 20:19, Ray Olszewski wrote:
> At 08:14 PM 12/14/02 -0500, Frank Roberts - SOTL wrote:
> >Hi All
> >
> >Question:
> > >From the command line how does one determine which port a modem is on?
>
> It depends on exactly what you mean. I'm guessing that you intend to refer
> to a situation where you have 2 or more serial ports in a computer, and a
> modem conencted to one of them, but the ports are unlabeled so you dont
> know which one the modem is attached to. In that case, I would use a
> terminal app (such as minicom) to connect to each port, and see which port
> (actuall, its associated /dev/ttyS* entry) gets responses from the modem to
> typical AT commands.
>
> There are many more things you *might* mean, though. So if I've guessed
> wrong (and someone else does not guess right), please post a followup that
> asks the question in a different, more specific form.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
