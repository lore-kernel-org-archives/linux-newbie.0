From: "ymc014" <ymc014@ymc.mitsumi.co.jp>
Subject: Re: sound card problem
Date: Tue, 24 May 2005 13:02:31 +0800
Message-ID: <01b001c5601d$cb56d230$4a071aac@autocadmachine1>
References: <00a701c54610$9932c6f0$4a071aac@autocadmachine1> <426709C9.6090507@comarre.com> <014d01c54627$2d1de550$4a071aac@autocadmachine1> <426728CD.60402@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Hello,

    I'm sorry it took me long to reply back.The reason is that the solutions
given generate more questions than answers for me(how do I type the *exact*
commands where?,the instructions given by Eric Bambach to press CTRL-ALT-F1
did help but I was not used to seeing $ in my command prompt)and rather than
posting countless questions,what I did was bought myself a book(linux for
dummies w/ a fedora core1 on it)familiarize the commands then go to the ALSA
website.
    For those interested this is how I did it(under fedora core1):
     1. Go to www.alsa-project.org download section and download
these:alsa-driver,alsa-lib package,alsa-utils package(the latest the
better).
     2. Go to the soundcard matrix section(click Soundcard at the top beside
         Download)choose the manufacturer(in my case Creative Labs) at the
         bottom portion,click go.
     3. Go to your respective soundcard model(in my case,SoundBlaster Audigy
LS),under
         Driver & Docs column click the details(in my case ca0106).
     4. The details gave all the necessary instructions just follow them,it
works for me.(If you are
          having a difficulty in the command line better try googling for
tutorials first before
          proceeding,I could not help here since I bought a book,you could
too but it will cost you)
          Then test(using xine or xmms).
     5. Here's one thing more,every time you start fedora the default
setting for the sound card is
         mute,you could add these lines to /etc/modules.conf to
automatically save levels at shut
         down:
                   post-install snd-card-0 /usr/sbin/alsactl restore
>/dev/null 2>&1 || :
                   pre-remove snd-card-0 /usr/sbin/alsactl store >/dev/null
2>&1 || :

I did tried the RPMs but it did not work for me(Maybe I missed up something,
if you would like to try, go to http://freshrpms.net to download the RPMs)

So there,thanks to Ray & Eric and others who gave time to answer my
questions,I appreciate
it very much.


----- Original Message -----
From: "Ray Olszewski" <ray@comarre.com>
To: "linux-newbie" <linux-newbie@vger.kernel.org>
Sent: Thursday, April 21, 2005 12:15 PM
Subject: Re: sound card problem


> Yeah, I pretty much read you as a first-timer from your earlier message.
> That's why I gave you the *exact* commands you need to type in to get
> the relevant information. All you need to do is type what I wrote and
> look at (or send us) the output. But see below; you probably do not
> actually have to go through all of that now.
>
> >
> > I have a fairly new sytem:
> >       Soundcard: It says here in the box,Creative SoundBlaster Audigy LS
> >                         Asian Edition

> Ah, that explains the problem. The Creative Website that you probably
> found says, in part --
>
> "Some OEM cards and the latest retail boards (such as the Dell CT0200
> and the Audigy LS) will not work with the drivers included in most Linux
> distributions. For those cards, try the latest code from ALSA or
> purchase a driver from 4FrontTechnologies."
>
> Use the Red Hat Package Manager utilities (rpm-find, I think) to find
> the alsa package (its name will probably be something like


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
