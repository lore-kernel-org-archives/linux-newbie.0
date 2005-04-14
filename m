From: Ray Olszewski <ray@comarre.com>
Subject: Re: remote admin
Date: Thu, 14 Apr 2005 11:02:28 -0700
Message-ID: <5.1.0.14.1.20050414103139.01f555a8@celine>
References: <200504141040.02011.eric@cisu.net> <Pine.LNX.4.21.0504141835380.1414-100000@hestia>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0504141835380.1414-100000@hestia>
References: <200504141040.02011.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:14 PM 4/14/2005 +0200, J. wrote:
>On Thu, 14 Apr 2005, Eric Bambach wrote:
>
> > Ssh is the de facto standard for remote administration but It lacks the
> > ability to give you a GUI interface.
>
>What ? Search for SSH GUI and google returns +770,000 matches.. ! Other
>than that it can be used to encrypt just about any connection, like for
>example X .
>
> > SSH Is quick and dirty
>
>Send a message to one of the SSH lists with that line in the subject. ;-)
>
> > remote administration and comes standard (or should ) on all Unix
> > variants.  (openssh.com)
> >
> > TightVNC is a rather "unrobust" remote X server but it gets the job 
> done. This
> > will let you connect remotely and get an X GUI session open.
> >
> > If you can afford it, ...........
>
><CUT>
>...
></CUT>
>
>Then take 10min's of your precious time and look at some of the +200
>projects that provide OPEN/FREE remote X administration.
[...]

If you really want people to follow this sort of advice, you might want to 
be a bit more specific about your recommendations.

I tried the Google search you suggest above. I actually got about 667,000 
matches. More important than the lower raw number, though ... the top few 
matches were to a *commerical* product (Techia), a GUI for *managing* sshd 
locally (SecPanel), and what looks like an *abandoned*, incomplete effort 
located at Sourceforge (ssh-gui, last updated June 2000).

I scanned the top 50 Google responses a bit more quickly, and saw a mix of 
secondary references to these 3 apps, mailing-list questions that offered 
no solutions, and references to tunneling VNC over ssh.

So some better guidence to the "+200 projects" you allude to would be 
welcome. I'm having no luck finding any of them in the Debian package 
management system ("apt-cache", that is, on Debian Unstable), using what I 
think of as obvious, beginner-level searching strategies. And your 
suggested Google search didn't prove profitable. So where are they, and are 
there any you can actually recommend to a beginner (this is a list where 
*beginners* ask questions, after all)?

(Just so you know ... I don't do much remote admin any more. When I do 
(did), I usually use(d) ssh-based console sessions. I've occasionally used 
tunneled VNC connections, and even more occasionally tunneled X, but I've 
always found the line speed (cheap ADSL on both ends) too slow to make 
gui-based approaches comfortable for any situation in which a CLI approach 
was a real alternative.)

  

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
