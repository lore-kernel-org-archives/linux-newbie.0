From: James Miller <jamtat@mailsnare.net>
Subject: Re: hard lockup help - OO the culprit?
Date: Wed, 17 Mar 2004 14:23:21 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0403171414560.1041@debian-emach>
References: <5.1.0.14.1.20040317104830.01f86028@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040317104830.01f86028@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 17 Mar 2004, Ray Olszewski wrote:

> At 10:56 AM 3/17/2004 -0600, James Miller wrote:
> >Hello.  I've recently been having a problem with hard system lockups when
> >using OpenOffice 1.1.  This is a Debian Sid system, running the 2.4.24
<snip>
> At least for the first pass, you've done everything right (everything I can
> think of, anyway).
>
> It sounds like either a kernel problem (improbable; even Sid kernels are
> quite stable) or one of the usual hardware problems (CPU overheating, bad
> RAM, bad swap) that present, if you had a STDERR device visible, as a
> kernel OOPs ... this guess based on the system not responding to ping (even
> a halt'ed system will, often, respond to pings).
>
> Next step -- since you have remote login capability, open a telnet or ssh
> session before trouble starts and run "top". Of, if your screen is large
> enough, do this in an xterm that is visible onscreen when OpenOffice is
> running. Either way, you should get to see the info "top" reports about the
> system right at the point of failure -- CPU utilization, RAM and swap use,
> the few highest-CPU-use processes, etc. Also you'll see (a long shot here)
> if, just barely possible, an established remote connection remains active
> after the crash.
>
> I'm assuming that you're using the .deb packages for OpenOffice. If you
> installed it outside of Debian, please mention that next time.
>
> Also mention next time if you are using any non-standard kernel modules
> (including X-related ones, like X-server-related framebuffers) ... my
> comment about kernel stability applies to the actual kernel code, not
> add-in modules.

Thanks for your input, Ray.  This happens so unpredictably that I'd end up
leaving Top open in that telnet session for perhaps a good long time.  But
I may try that anyway.  OpenOffice is a .deb - installed using apt-get
install openoffice.org.  I think all X stuff is just the standard things
that come when you run tasksel and select to load Xwindows.  I do run
vmware on this machine though, and it needed to create its own networking
modules and "virtual router" (I'm a little hazy on how its virtual
networking stuff operates).  I think those are the only non-standard
modules.  Sound relevant?

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
