From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian Sid startup problems
Date: Fri, 11 Jun 2004 22:08:09 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040611215205.01faf760@celine>
References: <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <Pine.LNX.4.58.0406112327150.1396@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406112327150.1396@debian-emach>
References: <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:36 PM 6/11/2004 -0500, James Miller wrote:
>On Fri, 11 Jun 2004, James Miller wrote:
>
> > PS I can still boot from a 2.4.x kernel on the system - though I'll be
> > without mouse support.  Maybe I should try that?
>
>This is really wierd.  Here I am, booted into a normally-working x
>session, having started the computer with the 2.4.25 kernel.  I don't know
>what to think of this.  I got to a command prompt, as I was getting to
>under the 2.6.5 kernel after taking Ray's advice about renaming
>/etc/rc2.d/S99xdm so it wouldn't boot into graphical mode.  When I logged
>in and issued startx, the window manager fired up normally.  No blank
>screen with "no signal" on it or anything.  Just the same old gui I've
>been using these last few months (and the mouse even works!).  Maybe I'm
>entering the twilight zone or something . . .  Anyway, enough for tonight.
>I'm going to bed on this one.  Maybe tomorrow I'll try this again with the
>2.6.5 kernel.  Maybe I'll upgrade xfree.  Suggestions welcome.

Putting all of this together ... "all" meaning this message and several 
that preceded it ... leaves me suspecting some sort of kernel bug involving 
a conflict between vesafb (yes, this is the framebuffer) and one of the usb 
modules. Or possibly one of the usb modules and some other kernel feature, 
like MTRR, that X uses.

To test this theory, I'd suggest rebooting to a console, disabling 
installation of the various usb modules, rebooting, and seeing if startx 
now works to get X running.

If it does now work, you've found the problem. To get it fixed, you need 
someone with 2.6.x kernel expertise, and that's not me (I still run 2.4.24 
or thereabouts).

If it doesn't now work ... I'm sorry to say that all the information you've 
provided doesn't suggest any other ideas to me. Except checking the logged 
STDERR output, as I previously suggested.

BTW, I can't tell you how to disable installation of the usb modules, 
because Debian installs modules in several different ways, and I don't know 
which of them gets used for the usb stuff.

They might be listed in /etc/modules . If so, comment them out.

They might be installed via init scripts. If so, find their symlinks in 
rc2.d or rcS.d and change them the way you did S99xdm.

They might be loaded some way I'm not thinking of. Check the docs for the 
lackage if neither of my earlier suggestions pans out (and you don't 
already know the answer, of course).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
