From: James Miller <jamtat@mailsnare.net>
Subject: insmod at system startup - where?
Date: Tue, 20 May 2003 14:40:02 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0305201426560.959@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

I would like to make my Debianish distro do an insmod on startup and am
wondering what init file I need to edit.  Here's more on what I understand
I'm doing (not to be confused with what I really may be doing, not
understanding it).  I found a way to make a PDA sync utility that was
written to sync through a serial cable sync through a USB port.  From
the command line I wrote (as instructed): insmod usbserial vendor=0x0XXX
product=0x0XXXX.  I think that loads a module that somehow convinces the
computer that it should treat a USB connection as a serial port.  A firm
grasp of that issue may not be all that pertinent, since, whatever it
does or doesn't do, it worked: I got my PDA syncing through the USB port.
I think that, in order to ease things a bit, I'd like to have this
presumed module load at system startup.  Under standard Debian (assuming
my distro - Libranet - is fairly Debian-compliant), what file would one
edit with the insmod command in order for the system to do this
serial/USB switcheroo on startup?  Any clarifications on muddled
conceptualizations of what I'm doing are welcomed and appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
