From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: How to hide . folders (resolved)
Date: Tue, 10 Aug 2004 14:16:22 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPGEJMDCAA.eatley@wowcorp.com>
References: <41147088.9050803@bcgreen.com>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41147088.9050803@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Stephen Samuel <samuel@bcgreen.com>
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>


Just wanted to update folks on my solution to this problem of wanting to
hide all but necessary folders to users logging in via an SSH GUI!

What got me started in the right direction was sorting out permissions and
finding out more about the sticky bit.

What eventually fixed my issue for this situation was adding a user like so:
	useradd -M -d /home/shared/ [username] -p [password]

The scenario in this case was to dump a user upon login to a particular
directory, but NOT create any extraneous folders. -M eliminates the need for
all those folders to be created in the first place. -d starts them out in
the folder I request (in this case /home/shared). It appears to create a
bash-history only, but I really don't mind if someone accidentally deletes
this one, since these are logins from a GUI.

Thanks to all,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
