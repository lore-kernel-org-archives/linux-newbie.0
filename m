From: whitnl73@juno.com
Subject: Re: Minicom and Modem
Date: Sun, 2 Feb 2003 22:30:24 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030202.223939.8.0.whitnl73@juno.com>
References: <03020220113803.19519@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <03020220113803.19519@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: sotl155360@earthlink.net, linux-newbie@vger.kernel.org

On Sun, 2 Feb 2003, pa3gcu wrote:

> On Sunday 02 February 2003 17:52, Frank Robers _ SOTL wrote:
>
> > Please I don't want to get into the configuration of a Sweitzer system (the
> > system being controlled) on this list. Suffice it to say that it is not
> > Linux nor MS.
>
> Sorry i was under the impresstion that both machines were linux.
>
> >
> > I only want to configure Minicom under linux in the format in which I
> > previously had it before I lost the Minicom installation instructions.
>
> Simply start as root, minicom and use -s
> minicom -s
> change the port setting to /dev/ttyS0 (i belive you said com1)
> make sure the speed is correct and it should work.
>
Right.  The two programs at either end of a null modem cable must agree
beforehand exactly what speed the line is to run at, otherwise neither
will see what the other is sending.  If you get parity, data bits,or
stop bits wrong, you should at least see garbage.  Oh, windows tends not
to work the control lines according to RS-232, so you might need to set
minicom to ignore Carrier Detect, by default I think it expects carrier
detect to be on if something is at the other end, otherwise it shows a
status of Offline and waits.  stty(1) or termios(3) setting would be
clocal/CLOCAL, sorry I don't remember the minicom setting and don't have
minicom installed just now.  Hardware flow control might not work right
with a windows program either; null modem cables made for windows tend
not to have those lines even present.  You might need to turn off
hardware flow control in minicom.
> >
> > What I would appreciate knowing is if I issue the commands you suggest will
> > that change the operation of Kppp such that I can not then connect to the
> > Internet.
>
> Yes it possably would, disregard what i said about /dev/modem.
>
> >
> >
> > Thanks
> > Frank
>
>
Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
