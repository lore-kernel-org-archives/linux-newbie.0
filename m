From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: How do I stop GUI from autoloading?
Date: Wed, 21 May 2003 23:47:13 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAGEGHDBAA.Riley@Williams.Name>
References: <3ECAAB97.2C45DF51@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3ECAAB97.2C45DF51@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

Hi Chuck.

On Red Hat, they are as follows...

	0 = halt
	1 = single user mode
	2 = non-network text mode
	3 = networked text mode
	4 = unused
	5 = X-Windows
	6 = halt

...and either 3 or 5 can be the default.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.


 > -----Original Message-----
 > From: linux-newbie-owner@vger.kernel.org
 > [mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Chuck Gelm
 > Sent: Tuesday, May 20, 2003 11:27 PM
 > To: linux-newbie@vger.kernel.org
 > Subject: Re: How do I stop GUI from autoloading?
 > 
 > 
 > # These are the default runlevels in Slackware:
 > #   0 = halt
 > #   1 = single user mode
 > #   2 = unused (but configured the same as runlevel 3)
 > #   3 = multiuser mode (default Slackware runlevel)
 > #   4 = X11 with KDM/GDM/XDM (session managers)
 > #   5 = unused (but configured the same as runlevel 3)
 > #   6 = reboot
 > 
 > # Default runlevel. (Do not set to 0 or 6)
 > id:3:initdefault:
 > 
 > HTH, Chuck

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.483 / Virus Database: 279 - Release Date: 19-May-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
