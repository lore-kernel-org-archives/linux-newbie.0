From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian Sid startup problems
Date: Sat, 12 Jun 2004 11:20:04 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406121104520.1489@debian-emach>
References: <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine> <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611215205.01faf760@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040611215205.01faf760@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

This is all a bit beyond me, Ray.  But, taking your advice again, I looked
in /etc/modules - nothing there referring to usb.  Then, I looked in
/etc/rc2.d: there, I found S15usbmgr which I changed to NoS15usbmgr.
Rebooted with the 2.6.5 kernel, issued startx - same system hang requiring
a telnet session to reboot the machine.  Next, I looked in rcS.d.
Nothing about usb in there, but I found something relating to another
package I recently installed - hotplug.  So, I changed S40hotplug to
NoS40hotplug.  Rebooted, issued startx and - WALLA! - normal X and gui
startup!  I'm not quite sure where to go from here, apart from doing some
more testing to make sure the hotplug thing is the culprit (changing
NoS15usbmgr back to S15usbmgr).  I looked at the xfree log in /var/log
that you mentioned, but could not identify any significant problem areas -
not that my xfree log interpretation skills are much to speak of.
Anyway, while I do a bit more experimentation, let me just ask what you
think of upgrading X on this system to the latest 4.3?  I'd like to update
it anyway.  Do you think it holds any potential for resolving this
problem, or it could possibly interfere with any further troubleshooting?
Similarly, a 2.6.6 kernel is now available for Sid.  While I'm not too
wild about loading a new kernel (I run vmware and so will have to compile
new modules for it if I upgrade the kernel), I would consider it if it
held some potential for resolving the current display problem.  Any advice
on that?  Thanks so much for your input: at least I have a vague idea now
of the problem's nature.

James

On Fri, 11 Jun 2004, Ray Olszewski wrote:

> At 11:36 PM 6/11/2004 -0500, James Miller wrote:
> >On Fri, 11 Jun 2004, James Miller wrote:
> >
> > > PS I can still boot from a 2.4.x kernel on the system - though I'll be
> > > without mouse support.  Maybe I should try that?
> >
> >This is really wierd.  Here I am, booted into a normally-working x
> >session, having started the computer with the 2.4.25 kernel.  I don't know
<snip>
>
> Putting all of this together ... "all" meaning this message and several
> that preceded it ... leaves me suspecting some sort of kernel bug involving
> a conflict between vesafb (yes, this is the framebuffer) and one of the usb
> modules. Or possibly one of the usb modules and some other kernel feature,
> like MTRR, that X uses.
>
> To test this theory, I'd suggest rebooting to a console, disabling
> installation of the various usb modules, rebooting, and seeing if startx
> now works to get X running.
>
> If it does now work, you've found the problem. To get it fixed, you need
> someone with 2.6.x kernel expertise, and that's not me (I still run 2.4.24
> or thereabouts).
>
> If it doesn't now work ... I'm sorry to say that all the information you've
> provided doesn't suggest any other ideas to me. Except checking the logged
> STDERR output, as I previously suggested.
>
> BTW, I can't tell you how to disable installation of the usb modules,
> because Debian installs modules in several different ways, and I don't know
> which of them gets used for the usb stuff.
>
> They might be listed in /etc/modules . If so, comment them out.
>
> They might be installed via init scripts. If so, find their symlinks in
> rc2.d or rcS.d and change them the way you did S99xdm.
>
> They might be loaded some way I'm not thinking of. Check the docs for the
> lackage if neither of my earlier suggestions pans out (and you don't
> already know the answer, of course).
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
