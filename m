From: JD <jd@sjcentral.net>
Subject: RE: Strange shutdown problem with KDE2.2.2.
Date: Tue, 16 Apr 2002 17:48:59 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0204161748060.3706-100000@enigma.sjcentral.net>
References: <FC79D1F4C922D511983400104BC3038801955D@DELL1>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <FC79D1F4C922D511983400104BC3038801955D@DELL1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ola Theander <ola.theander@connective.se>
Cc: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

yep that's a tft mode switching problem, i had that same problem on this
TFT.

it's to do with the way KDE passes graphical state back to the console i
think, what X server are you using and with what graphics chipset?

JD

On Tue, 16 Apr 2002, Ola Theander wrote:

> Hi Richard.
>
> I'm currently running kernel 2.4.18 and I've tried the SuSE 7.3 Professional
> original kernel, which is 2.4.10 too, with the same result. The KDE version
> is 2.2.2.
>
> Earlier I posted a reply where I suggested that the sound config. could have
> something to do with the problem but that probably isn't the case since I've
> had the problem again after I've turned of the sound in KDE. The idea came
> from a posting I've found regarding shutdown problems in RedHat 6.2 where
> the symptoms was just like the one I have.
>
> I have a TFT monitor on the laptop on which the problem occur.
>
> To be more precise about what's going on. I have my KDE configured to exit
> to the command shell when I log off. Sometimes, when I quit KDE to return to
> the command shell, the computer locks and the screen behaves very peculiar.
> The effect is this. First the upper 2/3 of the screen turns beige and the
> lower 1/3 turns black (beige is my KDE background color). After that there
> is some kind of fading effect that looks like burning paper until the screen
> is completely beige. After that the computer is frozen, at least regarding
> the mouse and keyboard. This course of events takes about 1-2 seconds.
>
> Which are the logs that I should examine to find relevant data?
>
> Kind regards, Ola Theander
>
> > -----Original Message-----
> > From: Richard Adams [mailto:pa3gcu@zeelandnet.nl]
> > Sent: den 16 april 2002 17:48
> > To: Ralph Gesler; JD
> > Cc: linux-newbie@vger.kernel.org
> > Subject: Re: Strange shutdown problem with KDE2.2.2.
> >
> >
> > On Tuesday 16 April 2002 15:26, Ralph Gesler wrote:
> > > JD wrote:
> > > > hmm, strange question, you're not using a TFT monitor are
> > you? they
> > > > have a habit of displaying an image a bit like burning paper when
> > > > there is a fast mode switch, e.g. when a PC is shutting down. In
> > > > which case, this event would be intermittent, which it appears to
> > > > be.
> > >
> > > First, in direct reply to yor question: no I am not running a TFT
> > > monitor. Secondly, I apologise for not being totaly clear
> > in my first
> > > post. I do remember seeing the same symptons occur as
> > described by the
> > > origional poster, Ola Theander ie. on shutdown of KDE.
> > However, I was
> > > trying to indicate that the same problem has occured at
> > other times.
> > > The point that I did not make clear was that this occurs when
> > > switching between vt's ie from, for example, tty1 back to
> > an already
> > > running X on tty7 (F7).
> >
> > I cant remember if a kernel version was mentioned, i do
> > remember quite a
> > while back seeing the same problems that JD mentioned, the
> > problem then was
> > the kernel not KDE, i am NOT saying its the kernel that is at
> > fault here, all
> > i am saying is something smells very much like a problem i
> > have encountered
> > before, if i remember correctly it was around kernel
> > 2.2.14/15/16 cant quite
> > remember.
> >
> > I conversed with Alan Cox at the time, if one does not know
> > who he is, he is
> > a kernel developer and a video spesialist. Folks that have
> > installed Redhat
> > will have seen that mugshot accsociated with "kernel
> > development" thats Alan
> > Cox.
> >
> > So i wonder which kernel version is being used by the
> > orgiganal question
> > asker, forgive me if it was mentioned i no longer have the
> > mail to look.
> >
> > >
> > > Ralhp Gesler
> >
> > --
> > Regards Richard
> > pa3gcu@zeelandnet.nl
> > http://people.zeelandnet.nl/pa3gcu/
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe
> > linux-newbie" in the body of a message to
> > majordomo@vger.kernel.org More majordomo info at
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
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
