From: Ray Olszewski <ray@comarre.com>
Subject: RE: stopping diald
Date: Mon, 10 Mar 2003 08:57:18 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030310084927.01e7ade0@celine>
References: <5.1.0.14.1.20030309081846.01e7aab8@celine>
 <Pine.LNX.4.53.0303081157280.18544@homenet>
 <5.1.0.14.1.20030309081846.01e7aab8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0303092110290.18544@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Replies inline.

At 09:29 PM 3/9/2003 -0600, James Miller wrote:
>On Sun, 9 Mar 2003, Ray Olszewski wrote:
>Thanks for this detailed response, Ray.
> >
> > diald is a dialing daemon that uses pppd to maintain a persistent, or an
> > on-demand, connection to a dial-up ISP. I thought its functionality had
> > been superseded by pppd itself being capable of supporting persistent and
> > on-demand connections ... but I haven't used dialup in several years now,
> > so my memory may be fooling me.
> >
>You may be right about diald having been superseded. I've done a bit of
>research on pppd in the past and seemed to be recalling that it is
>capable of on-demand connection to the ISP - i.e., that it can await
>requests for the 'net and then dial the connection, whether these requests
>originate from the localhost or somewhere on a LAN. I used diald at the
>recommendation of someone else, who seemed to think it would be what I'd
>need for my small home network. He proposed it as a way that would
>allow the machine that will act as the gateway to watch for internet
>connection requests from the network and dial the connection. Perhaps he
>was a bit outdated, and should have suggested that pppd can now serve these
>sorts of functions?

Well ... you would do better to get advice from someone who is actually 
*using* dialup (I use DSL these days). I do know that specialized routing 
distros (like LEAF - leaf.sourceforge.net) are able to use pppd without 
diald to support on-demand connections through a Linux-based router. But I 
was also surprised to see that duald is being maintained -- the last Debian 
update to is was about a year ago, much more recent than I'd have guessed.

> > In any case, diald probably runs as root because it is started by an init
> > script, such as the one that starts networking (since the original poster
> > does not mention what Linux distro he is using, I won't try to guess the
> > name or path of the script). It is probably set up intentionally to prevent
> > ordinary users from disabling it.
> >
> > Without knowing more about the poster's setup, I don't know what the best
> > workaround is. I suspect it is to allow his ordinary-user account either to
> > stop diald entirely, or to close its current connection (I can't tell which
> > of these two things he is actually trying to do)  via sudo ... which I
> > imagine can be added to his "Icewm toolbar".
> >
>This setup involves a machine that will act as a gateway that runs a new,
>somewhat modified Debian version called "Libranet." There is one other,
>and may be as many as 2 more machines on the LAN that will need to connect
>to the 'net via this computer. Getting something like diald working - or
>just pppd, if it will do the job - is a preliminary step, mainly
>calculated to buy me time as I try to digest the much more difficult (and
>more fundamental) problem of ipchains.

I do not understand the juxtapositioning here. ipchains (or the newer 
iptables, for 2.4.x kernels) is a useful tool for firewalling. But it does 
not bring interfaces up and down, so it will in no way substitute for the 
functionality of pppd or diald in that respect.

>I've got the howto for it, but it's
>got this newbie's brains quite taxed. I'll doubtless be posting some
>questions on that related topic in the not-too-distant future. I do want
>the user to be able to break the connection to the 'net as you suggest,
>and not necessarily stop diald. I wasn't sure there was a difference, but your
>post makes it clear that there is. Thanks.

"user" is ill-defined here (because there are multiple hosts involved). It 
should be easy to write a script or program that will let a user who is 
logged into the gateway host bring doen the ppp connection to the ISP. It 
is vastly more difficult -- I was tempted to say "impossible", but that's 
an overstatement -- to create a way for a user on a different host to bring 
the pppd connection down.

> > A closing thought ... if I am right about diald being superseded by pppd
> > itself, then the orniginal poster *may* be trying to connect to the
> > Internet using a very old version of Linux. This is not a good idea, for
> > security reasons, and I'd encourage him to update to the current version of
> > his preferred distro.
> >
>The distro is new, and has the latest Woody security updates. Probably no
>big worries there. I think I just got some rather dated advice on how to
>set up demand dialing.

OK. Good.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
