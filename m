From: Ray Olszewski <ray@comarre.com>
Subject: Re: How can I expand the window size of a telnet session?
Date: Thu, 19 Dec 2002 08:40:36 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021219083029.020b4840@celine>
References: <atsoff$m76$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <atsoff$m76$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:27 AM 12/19/02 -0500, Jamie Risk wrote:
>I've given up getting an XTerm session from my windows X
>client working, and really all I want is large text window session.

"X client"? X is a server; client applications use it. And I'm assuming 
below that "windows" refers to some version of Microsoft Windows.

>So, how can I expand the window size of telnet session beyond
>the anaemic dimensions of 80x25?

Window size (in the form of characters per line and lines on the screen) is 
information that the terminal-emulator client (or the actual terminal, but 
that's pretty much ancient history) passes on to the server. Since your 
client is running on Windows, this is really a Windows question, save for 
the Linux advice that you use a client that supports larger window sizes.

As to Windows client selection ... I no longer do telnet sessions, but 
Putty communicates window resizing smoothly for ssh sessions (all I need to 
do is drag the window to a larger size), so it probably does the same for 
telnets. TerraTerm was clunkier in this respect (and many others), which is 
why I no longer use it. Beefore I switched to ssh, I did use a terminal app 
that also resized nicely for telnets, but I forget its name. No doubt a 
search of a Windows freeware/shareware archive like TUCOWS will turn up 
some other choices.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
