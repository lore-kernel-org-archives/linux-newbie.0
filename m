From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian Sid startup problems
Date: Fri, 11 Jun 2004 19:07:22 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040611185654.01f818e0@celine>
References: <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <Pine.LNX.4.58.0406112029320.2201@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406112029320.2201@debian-emach>
References: <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:36 PM 6/11/2004 -0500, James Miller wrote:
>On Fri, 11 Jun 2004, Ray Olszewski wrote:
>
> > (Another option is to see if you can telnet or ssh to the system after it
> > boots/inits but apparently "hangs". This could work if the problem is just
> > an unusually nasty console error, but not if it is a kernel problem. Also,
> > I don't know if your system is on a LAN and runs the needed daemons for
> > these connections.)
>
>I was able to telnet into the hung system.  It reacted very sluggishly,
>which indicated to me there was a heavy processing load.  I fired up Top,
>which showed XFree86 taking 98+% of CPU.  I had trouble killing it with
>Top.  I finally issued "reboot" and the system eventually went down.

Hmmm ... sound slike X is unable to complete its initialization. But that's 
just a guess, and I can't even guess *ahy* this might be happening. The 
added questions I asked for in my last message (which I probably sent after 
you sent this one but before I received it) may help you pin this down. 
I'll wait for a response to that message before I try to suggest anything more.

>In case it seems like the solution might be to upgrade/reinstall the
>xserver: I can't quite figure out what Debian is doing about the fork in
>the X project.  Are they sticking with XFree, or going with X.org?  I
>tried looking for X packages in hopes of determining something about this,
>but it didn't resolve much (no X11R7 packages, or whatever they're calling
>the new release.  sorry, but I just can't recall the name I searched under
>off the top of my head, but I did get the name from a reliable source).

I haven't followed this myself so cannot help you ... I cannot even confirm 
that there *is* a fork in X ... beyond noting that the Debian package is 
named xserver-xfree86, which implies it at least is staying with 
xfree86.org's version. For more, you might check the Debian Website 
(www.debian.org) yourself.

[old stuff deleted]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
