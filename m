From: Hal MacArgle <haltec@iceweb.net>
Subject: Slack8.0 - 2.4.XX - ftpd missing?
Date: Thu, 18 Apr 2002 15:28:28 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020418152828.A172@lnx2.w8mch.ampr.org>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Been running Slackware 8.0 - kernel 2.2.19 /or/ kernel
2.4.5 /or/ kernel 2.4.13 and find I can't FTP that machine via my eth
lashup.

Ping works; telnet works; NSFD works, etc but trying ftp the machine
reports: "Connected to lnx2" then a wait, "421 Service not available,
remote server has closed connection." The opposite direction from the
problem machine to any other machine running Slack 7.1; Slack3.5;
RH6.2, etc - all fine.. It seems obvious, to me, that FTPD is not in
evidence. I looked at the Configure file and see no obvious entries.

I note there is no 'man ftpd' or 'man ftpaccess', like previous
versions, so something must have changed and I can't find it...

I looked thru all the docs including the source package to no avail.

Any suggestions?

Cheers,

    Hal - in Terra Alta, WV,  -  Slackware Linux 8.0   (2.4.13)
    haltec@iceweb.net | w8mch@iceweb.net..A M$ free environment     
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
