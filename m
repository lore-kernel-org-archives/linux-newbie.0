From: "Jesse" <jlc@msdlg.com>
Subject: Linux Startup Issues
Date: Wed, 5 Jul 2006 16:36:44 -0400
Message-ID: <000801c6a072$bb16b020$6900a8c0@ANCHORMAN>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"; reply-type="original"
To: linux-newbie@vger.kernel.org

I am running Debian Linux, and every time I have to reboot, it tries to 
start the Gnome graphical interface. There's always an error, "I cannot 
start the X server (your graphical interface). It is likely that it is not 
set up correctly. Would you like to view the server output to diagnose the 
problem?". When I say yes, it appears that the problem is "no screens 
found". I tried editing the XF86Config-4 file, but I have no idea what to 
look for, or what to change. I also tried running the XFreeConfig program, 
but while testing, it gets to a certain video mode, and freezes up.

I tried an "apt-get install XFree86", but it tells me that it can't find 
XFree86.

Any idea what I need to do to get this fixed?

Thanks,

Jesse

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
