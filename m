From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: How do I stop GUI from autoloading?
Date: Tue, 20 May 2003 18:26:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3ECAAB97.2C45DF51@gelm.net>
References: <5.1.0.14.1.20030519141159.01f205c8@celine>
	 <3EC92B60.1000406@bcgreen.com>
	 <5.1.0.14.1.20030519141159.01f205c8@celine> <5.1.0.14.1.20030519230639.01f88a80@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

# These are the default runlevels in Slackware:
#   0 = halt
#   1 = single user mode
#   2 = unused (but configured the same as runlevel 3)
#   3 = multiuser mode (default Slackware runlevel)
#   4 = X11 with KDM/GDM/XDM (session managers)
#   5 = unused (but configured the same as runlevel 3)
#   6 = reboot

# Default runlevel. (Do not set to 0 or 6)
id:3:initdefault:

HTH, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
