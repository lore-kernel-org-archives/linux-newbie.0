From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Delete /home/shared Samba directory; need better SSH  solution!
Date: Thu, 10 Feb 2005 15:38:39 -0500
Message-ID: <008f01c50fb0$825c6080$260aa8c0@lanadmin>
References: <5.1.0.14.1.20050209092740.02f55340@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <5.1.0.14.1.20050209092740.02f55340@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org


Thanks. Your advice makes sense, but allow me to give a bit more detail of
the current setup.

1. Those users for whom I do have an account set up (example: gagan) have
their own username/password. 
2. FTP and Telnet has been disabled, so SSH is the only way they can access
our US server currently.
3. Those users, ie. gagan, that have a username/password, are currently
placed into the groups for which they have access (ie. marketing) and that
particular directory is owned by root with file group set to itself (ie.
marketing). 
4. Each directory is set to 770, with owner/group having r/w/x bit set.

Now, you wrote:

	3. For the files and directories you want these folks to have write
access 
	to, make them mode 664 or 774 as appropriate, chgrp them to india,
and let 
	them rely on group- rather than user-level access. Set these users'
umasks 
	so files they upload have appropriate permissions.

1. Based on this setup, would I still chgrp the directories to India?
2. I am not sure how to set umasks, but once I figure that out, I would then
set it directly on the user?

The question seems to have mutated; I appreciate your explanation of SSH as
a method by which to transmit securely over an insecure medium rather than
offering any true security of the machine itself. In rethinking this
strategy, I think assigning each user his/her own secure password needs to
be the norm, and when users ssh into the system they will just have to
navigate to the shared directory on their own. Any other suggestions are
appreciated.

Thanks,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
