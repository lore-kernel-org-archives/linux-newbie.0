From: chuck gelm <chuck@gelm.net>
Subject: Re: Debian Sid startup problems
Date: Sat, 12 Jun 2004 14:04:12 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40CB459C.6050509@gelm.net>
References: <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611183923.01fc9dc0@celine> <Pine.LNX.4.58.0406112102240.2201@debian-emach> <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611215205.01faf760@celine> <Pine.LNX.4.58.0406121104520.1489@debian-emach>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406121104520.1489@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:
> This is all a bit beyond me, Ray.  But, taking your advice again, I looked
> in /etc/modules - nothing there referring to usb.  Then, I looked in
> /etc/rc2.d: there, I found S15usbmgr which I changed to NoS15usbmgr.
> Rebooted with the 2.6.5 kernel, issued startx - same system hang requiring
> a telnet session to reboot the machine.  Next, I looked in rcS.d.
> Nothing about usb in there, but I found something relating to another
> package I recently installed - hotplug.  So, I changed S40hotplug to
> NoS40hotplug.  Rebooted, issued startx and - WALLA! - normal X and gui
> startup!  I'm not quite sure where to go from here, apart from doing some
> more testing to make sure the hotplug thing is the culprit (changing
> NoS15usbmgr back to S15usbmgr).  I looked at the xfree log in /var/log
> that you mentioned, but could not identify any significant problem areas -
> not that my xfree log interpretation skills are much to speak of.
> Anyway, while I do a bit more experimentation, let me just ask what you
> think of upgrading X on this system to the latest 4.3?  I'd like to update
> it anyway.  Do you think it holds any potential for resolving this
> problem, or it could possibly interfere with any further troubleshooting?
> Similarly, a 2.6.6 kernel is now available for Sid.  While I'm not too
> wild about loading a new kernel (I run vmware and so will have to compile
> new modules for it if I upgrade the kernel), I would consider it if it
> held some potential for resolving the current display problem.  Any advice
> on that?  Thanks so much for your input: at least I have a vague idea now
> of the problem's nature.
> 
> James

  Hi, James et allia:

  I am wondering if that ATI video card is in hotplug's default 
blacklist.  ???

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
