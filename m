From: "Jamie Risk" <jamie_risk@yahoo.ca>
Subject: Telnet servers ...
Date: Tue, 7 Jan 2003 14:09:21 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <avf8iq$omc$1@main.gmane.org>
Reply-To: "Jamie Risk" <jamie_risk@yahoo.ca>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I downloaded, compiled and am now using (via xinetd) the telnet daemon
from GNU's Inetutils. In RH distributions, I noticed the daemon takes on
the name "/sbin/in.telnetd" (or something very similar) whereas the
inetutils
telnet daemon takes on the name "/usr/libexec/telnetd".

Two questions:
 * Is there a difference between the two daemons?
and, a little more GNU install specific...
* What does the /usr/libexec directory typically hold?
    I thought after accepting the default "./configure" outputs and running
    "make && make install", the daemons would be placed in /sbin or
/usr/sbin.

- Jamie



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
