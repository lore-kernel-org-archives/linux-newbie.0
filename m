From: JD <jd@sjcentral.net>
Subject: Re: Strange shutdown problem with KDE2.2.2.
Date: Mon, 15 Apr 2002 22:56:12 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0204152254570.28074-100000@enigma.sjcentral.net>
References: <3CBB3B28.74AA68F0@pacificnet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3CBB3B28.74AA68F0@pacificnet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ralph Gesler <rgesler@pacificnet.net>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

hmm, strange question, you're not using a TFT monitor are you? they have a
habit of displaying an image a bit like burning paper when there is a fast
mode switch, e.g. when a PC is shutting down. In which case, this event
would be intermittent, which it appears to be.

JD

On Mon, 15 Apr 2002, Ralph Gesler wrote:

> Ray Olszewski wrote:
> >
> > At 07:13 PM 4/14/02 +0000, Richard Adams wrote:
> > >On Sunday 14 April 2002 13:02, Ola Theander wrote:
> > >> Dear subscribers.
> > >>
> > >> I'm running a SuSE 7.3 Professional Linux installation with KDE 2.2.2 on my
> > >> Dell Inspiron 8000. Unfortunately I have a problem when I'm shutting down
> > >> KDE somtimes the shutdown result in some very strange graphical effect, it
> > >> looks pretty much like a sheet of papper burning into ashes. After that the
> > >> computer locks and I have to turn of the power. The problem occurs pretty
> > >> unprovoked, I could have runned a normal KDE session and when I turn of the
> > >> KDE the problem occurs.
> > >>
> > >> Any help on this matter would be greatly appciciated.
> > >
> > >You say locks, have you tryed ctrl-alt-backspace to escape from X.??
> > >If you have a network, can you ping the (locked)-machine from another host.?
> > >And forall what kernel do you have running.??
> >
> > The symption as described doesn't suggest anything to me, but, like Richard,
> > I wonder how thoroughly "locked" the computer is. Beyond his question:
> >
> >         can you CRTL-ALT-F* to a command-line vt (assuming
> >                 you have some running)?
> >
> >         can you establish a telnet or ssh connection (assuming
> >                 you have the relevant servers running)? [This may
> >                 be the most important one, since if you can do a
> >                 remote connection, you can find out all the usual
> >                 things about the state of the host.]
> >
> >         can you still connect to any other services you have running
> >                 (e.g., SMTP, DNS, HTTP, ident ... I don't really know
> >                 what you use the host for so these are wild guesses)?
> >
> >         does the host still respond to pings (I guess Richard already
> >                 asked this one)?
> >
> > After you reboot, do the logs contain any useful information from KDE or
> > from X itself?
> >
> > How much memory does the system have? (Actual RAM and swap)
> >
> I have no answer to this problem (it has happened to me several time),
> but I can provide some additional information. Hopefully someone will be
> able to suggest where to look the next time this occurs.  I am running
> SuSE 7.2 with a 2.4.4 kernel and KDE 2.2.1.  Note that as I rember I
> also saw this happen a couple of times with a 2.2.x kernel and an
> earlier version of KDE.
>
> * When this event occurs the local keyboard and mouse is locked.
> Therefore       X can not be terminated by cont+alt+backspace nor can a
> switch to              another terminal.
>
> * I can login via ssh from another syster and execute commands.
> Before           anyone asks, I have killed all processes, I think,
> associated with KDE         and X. However, the keyboard, mouse and
> screen on the effected system          remain locked.  After su to root
> I have tried halting the system, but          only a partial halt is
> made.  By this I mean a system going down               message is
> received at the log in terminal and network connection is           lost
> and the locked system never reaches run level 0.  After a
> manual reset of the system fschk is run on all partitions during
> reboot        so that it appears the shutdown process occurs prion to
> unmounting.
>
> I have not been able to find anything in the logs indicating any problem
> detected by KDE, X or the kernel. My guess at this time is some locking
> process has occured, but I have no idea where to start looking..Therfore
> it is not clear where this problem lies .ie kernel, X or KDE.
>
> Hopefully someone will have some suggestions of where to look, what
> debug funtions to use, or ? that I can do the next time this occurs so
> that a meaningful bug report can be made to the developers.  Since this
> happens  rarely, it may be awhile before I can provide any further
> information other than what I have forgotten to mention.
>
> Ralph Gesler
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
