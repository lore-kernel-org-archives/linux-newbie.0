From: dyeu@tulane.edu
Subject: Error message on bootup (USB)
Date: Fri,  2 Aug 2002 09:34:02 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1028298842.3d4a985a5d418@webmail.tulane.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Just recently I compiled my kernel for the first time (really not as
tough as it seems), but now I get an error message when the computer
starts up:

Mounting USB filesystem: mount: mount point /proc/bus/usb does not exist

Nevertheless, my USB mouse works fine, and there doesn't seem to be a
problem at all.  Poking around in /etc showed this in rc.sysinit:

action $"Mounting USB filesystem: "  mount -t usbdevfs usbdevfs /proc/bus/usb

So in conclusion, did I simply forget to include something during the
make config?  Is it safe to remove the above line from rc.sysinit, or 
should I go back and recompile?  Any advice would be appreciated.

Dave.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
