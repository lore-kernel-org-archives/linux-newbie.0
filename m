From: Ray Olszewski <ray@comarre.com>
Subject: Re: Strange Mice Behavior
Date: Sat, 29 Mar 2003 20:10:06 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030329195952.01e9a368@celine>
References: <200303300356.h2U3uEM03859@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303300356.h2U3uEM03859@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

At 11:56 AM 3/30/2003 +0800, Peter wrote:
>Since I did not get any reply to my mail below

Given the specificity of your first question (two specific mice, each 
identified by brand but not by model, and problems associated with one 
distro but not another), I'm not surprised that nobody here had 
sufficiently specific knowledge to be of help.

>  I helped myself with putting
>the following 2 lines in /etc/profile:
>
>gpm -k
>gpm -t ps/2 -m /dev/mouse
>
>Now the Kesington mouse works correctly on the console and in X, however the
>Benq mouse which BTW is a wheel mouse still goes crazy in X.

"goes crazy" is not a problem description. I'm guessing you mean that the 
pointer moves erratically on the screen rather than smoothly. (This reading 
is what underpins my second suggestion below.)

>Is there a better way of getting the mice to work? Now I have first to open
>root to make the mouse work and when opening user I get the error message 
>that
>I have no permission.

I can make a couple of suggestions, though they are still not specific to 
the details of your problem.

First, don't run gpm from /etc/profile. This approach tries to restart it 
each time a new user logs in. Only root can run gpm (as you know), and you 
don't even want root rerunning gpm all the time. If you need gpm running, 
do it from an init script.

Second, kill gpm before you startx. Conflicts between the gpm and X mouse 
drivers are old news. Unless one or the other has been tidied up recently, 
they will conflict sometimes, and there is no good way to predict when they 
will and will not play nice together.

  don't know if you can get more specific help than that here. Although 
I've used Kensington trackballs, I've never even heard of Benq mice. At the 
least, to get specific help, you're going to need to describe the specifics 
a bit better ... in each instance, whether gpm is running (and if it is, 
with what options), what X version and server is involved, and what the 
actual symptoms are. Even then, it's uncertain if anyone here will know 
what you need.


>----------
>Hi,
>
>I recently bought a new mouse since the old one is graying. Both ps2 mice
>behave properly under RH7.3 on the console and in X.
>
>In Slackware 8.0 each behaves differently. One, a Benq, functions 
>correctly on
>the console, however, goes crazy in X, which then I have to abort with
>ctrl-alt-backspace.  The other mouse, a Kensington, is the reverse. It does
>not work on the console, yet perfectly in X.
>
>When I have started X with the Kensington mouse in SW8.0 and then change to
>the Benq mouse that one will then work in X.
>
>Is there any explanation and could it be corrected and how?
>
>Thanks & regards
>--


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
