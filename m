From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: connecting to the X-desktop with vnc
Date: Mon, 6 Nov 2006 21:17:03 -0500 (EST)
Message-ID: <Pine.LNX.4.64.0611062108060.28741@localhost>
Reply-To: karthikv@Alum.Dartmouth.ORG
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Newbie List <linux-newbie@vger.kernel.org>

I installed the vnc suite of tools (both on the remote server, as well as 
the local client) where both machines run ubuntu-linux. I started the 
vncserver on the server using vncserver which gives:

$ vncserver

New 'bombur:1 (karthik)' desktop is bombur:1

Starting applications specified in /home/karthik/.vnc/xstartup
Log file is /home/karthik/.vnc/bombur:1.log

I am able to connect from the client side using:
$ vncviewer bombur:1

This however opens up an xterm and is not the desktop that is running on 
bombur. I want to see the X-desktop that is running on the server. How do 
I go about doing this?

Both client and server run xorg as the Xserver. Please let me know if more 
information is needed to help (such as kernels/xorg versions/vnc versions 
running on client/server).


Thanks in advance,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
