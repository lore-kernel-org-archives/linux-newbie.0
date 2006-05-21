From: Hal MacArgle <haltec@kvinet.com>
Subject: WVDial PPP setup via manual??
Date: Sun, 21 May 2006 16:05:52 -0400
Message-ID: <20060521200552.GA1337@lnx2.kvinet.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


A Duron 1.3 machine, 512mB RAM and a USR V-Everything V90 modem
running Slackware10.2, 2.4.31 in one partition and Fedora Core 4,
2.6.11 in another; Slack X11/FVWM2 and FC4 X11/Gnome..

Running 'pppsetup' (manual) with Slack and 'internet Wizard' with
FC4, that uses WVDial to configure.. Both use Firefox, and DTE speed
same for both; 115200.. Same BIOS, ISP, connections, etc..

Trying to download the same file my fetch speed averaged less than
2.0 kBs with the FC4 lashup and the more normal, for this site,
3.0kBs using Slack...

Curious; I redid the ppp config on FC4, manually, and got 3.3kBs,
removing WVDial's config completely... I can't image a dialer causing
this unless I missed something.. On the FC4 with WVDial I connected
using the default icon, whereas with Slack I used CLI/ppp-go in a
term window..

It would be more desirable to use the default FC4 scheme if possible
but the lower speed, on our borderline rural link, pretty hard to
take..

Any suggestions?? Fetching files with a GUI system really foreign to
me... <grin> TIA.. (I realize the load on the remote server can enter
into this, so I tried several times back and forth.)

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
