From: Ray Olszewski <ray@comarre.com>
Subject: Re: stopping diald
Date: Sun, 09 Mar 2003 08:29:03 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030309081846.01e7aab8@celine>
References: <Pine.LNX.4.53.0303081157280.18544@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030309.104108.8.1.whitnl73@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I didn't reply to this initially because I hoped someone who is more 
current on dial-up would.

diald is a dialing daemon that uses pppd to maintain a persistent, or an 
on-demand, connection to a dial-up ISP. I thought its functionality had 
been superseded by pppd itself being capable of supporting persistent and 
on-demand connections ... but I haven't used dialup in several years now, 
so my memory may be fooling me.

In any case, diald probably runs as root because it is started by an init 
script, such as the one that starts networking (since the original poster 
does not mention what Linux distro he is using, I won't try to guess the 
name or path of the script). It is probably set up intentionally to prevent 
ordinary users from disabling it.

Without knowing more about the poster's setup, I don't know what the best 
workaround is. I suspect it is to allow his ordinary-user account either to 
stop diald entirely, or to close its current connection (I can't tell which 
of these two things he is actually trying to do)  via sudo ... which I 
imagine can be added to his "Icewm toolbar".

A closing thought ... if I am right about diald being superseded by pppd 
itself, then the orniginal poster *may* be trying to connect to the 
Internet using a very old version of Linux. This is not a good idea, for 
security reasons, and I'd encourage him to update to the current version of 
his preferred distro.

At 10:40 AM 3/9/2003 -0500, whitnl73@juno.com wrote:
>On Sat, 8 Mar 2003, James Miller wrote:
>
> > Newbie question:
> >
> > I've started experimenting with diald, since I'm planning on setting up a
> > small network from which more than one computer will be needing to access
> > the 'net. Diald works fine, in terms of connecting to the provider. My
> > question is about stopping the process. So far, I've been able to stop
> > diald only by opening a console and su'ing and issuing "poff." Trying to
> > run poff from a console as user results in the message "/usr/bin/poff:
> > /bin/kill failed. None stopped". I believe that this is because the
> > process is owned by root, as ps axu shows. I need a more elegant and less
> > restrictive process for stopping the diald connection than having to open
> > a console, su, then issue "poff." Can someone please suggest alternative
> > methods? Eventually, I plan on adding a poff item to my Icewm toolbar. But
> > understanding various ways to stop the process is prerequisite to that (I
> > know how to edit the toolbar config file, and have some understanding of
> > how the entries should look).
> >
> > Thanks for any help.
> >
> > James
> > -
>I don't know what diald is exactly - just a wrapper for pppd?  pppd
>itself doesn't _have_ to run as root, it's just that the user that runs
>it needs permission to read and write the modem device it is to use --
>pppd is normally installed as suid root -- and the user that runs it may
>stop it.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
