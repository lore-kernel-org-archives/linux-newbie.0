From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian Sid startup problems
Date: Sat, 12 Jun 2004 13:47:20 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406121333170.1825@debian-emach>
References: <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine> <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406121104520.1489@debian-emach> <40CB459C.6050509@gelm.net>
 <Pine.LNX.4.58.0406121307380.1504@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406121307380.1504@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Well, I don't know if I can claim to have resolved my problems or not - I
guess you'll have to be the judge of that.  But the display is back to
working normally with the 2.6.5 kernel and I seem to have usb (at least my
multi-reader) working as well.  So, here's what I've done.

I changed NoS15usbmgr back to S15usbmgr and rebooted the computer into
console mode.  I issues startx, got a very brief blank screen with "no
signal"  which quickly gave way to my normally-working gui.  I guess that
means hotplug is the culprit here (left it commented out as NoS40hotplug
in /etc/rcS.d).  Trying to find out if there were any conflicts between
framebuffer and usb under the 2.6 kernel I googled framebuffer, restricted
by usb, restricted by 2.6.  That gave me this article
http://linux.derkeiler.com/Mailing-Lists/Debian/2003-07/0048.html , which
didn't seem all that relevant.  However information contained at the end
("load usbcore, uhci-hcd, usb-storage" and "mount -t usbfs none
/proc/bus/usb"), I was able to get my multicard reader to show up in
usbview.  I even formatted a flash disk, and successfully mounted and
unmounted one.  The display continues to work normally.  Guessing that
some wierd problems I was having while attempting to toubleshoot all this
were related to a line I earlier inserted into /etc/fstab (the line was
usbdevfs /proc/bus/usb usbdevfs defaults 0 0), I removed that line.  So,
usb seems now to be working, as is the display.  I hate to just kind of
thrash around and take wild stabs like this, but it did get me a few steps
forward (got usb going) in this case.  I'm not quite clear on how to
implement usb more coherently (maybe write a script?), but I suppose I'll
ask more about that later.

Further feedback appreciated.

James

PS  I have yet to uncomment NoS99xdm so that the machine boots straight
into the xdm login window like it used to, but am guessing that will work
fine, since startx from the command line works now.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
