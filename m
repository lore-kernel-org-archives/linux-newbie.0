From: Alan Womack <arwbackup@worldnet.att.net>
Subject: problem with login
Date: Wed, 26 Jun 2002 05:35:07 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020626123504.KPIR19902.mtiwmhc22.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

Is there a way to check the results of each PAM module's result from the 

/etc/pam.d/system-auth

and

/etc/pam.d/login

configuration files?

I'm struggling with an in ability to log in while I get my ldap authentication going, but I don't know which layer is failing.  The secure log isn't much assistance.

Jun 26 04:44:35 Webby sshd[21842]: PAM rejected by account configuration[10]: User not known to the underlying authentication module
Jun 26 04:44:35 Webby sshd[21842]: Failed password for Alan from 192.168.0.1 port 1991
Jun 26 04:44:40 Webby last message repeated 7 times
Jun 26 04:44:40 Webby sshd[21842]: Disconnecting: Too many authentication failures for Alan
Jun 26 04:59:59 Webby sshd[21929]: PAM rejected by account configuration[10]: User not known to the underlying authentication module
Jun 26 04:59:59 Webby sshd[21929]: Failed password for Alan from 192.168.0.1 port 1992
Jun 26 05:00:03 Webby sshd[21929]: PAM rejected by account configuration[10]: User not known to the underlying authentication module
Jun 26 05:00:03 Webby sshd[21929]: Failed password for Alan from 192.168.0.1 port 1992
Jun 26 05:00:05 Webby last message repeated 6 times
Jun 26 05:00:05 Webby sshd[21929]: Disconnecting: Too many authentication failures for Alan



Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
