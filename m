From: "Eve Atley" <eatley@wowcorp.com>
Subject: ssh setup: user 'locked out' daily
Date: Thu, 19 Aug 2004 11:13:22 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPCEDJDDAA.eatley@wowcorp.com>
References: <20040223225259.GA11316@sevoog.kriation.com>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040223225259.GA11316@sevoog.kriation.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


We have SSH running on our Linux Redhat 9 server. I set up new users to dump
them upon initial login to a common directory using the following command:
	useradd -M -d /home/shared username -p password
	passwd username (for some reason, -p password doesn't work?)

On a daily basis, they are locked out. /var/log/secure indicates the
following:
	fatal: monitor_read: unsupported request: 24
	PAM rejected by account configuration[13]: User account has expired

/var/log indicates the following:
Aug 19 10:38:15 wow-rtr sshd(pam_unix)[19144]: account emon has expired
(failed to change password)

They log in with winscp3 (graphical client) using sftp.

- Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
