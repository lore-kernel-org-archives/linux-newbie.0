From: Ray Olszewski <ray@comarre.com>
Subject: RE: Delete /home/shared Samba directory; need better SSH 
  solution!
Date: Thu, 10 Feb 2005 13:44:55 -0800
Message-ID: <5.1.0.14.1.20050210133240.01f6cb28@celine>
References: <5.1.0.14.1.20050209092740.02f55340@celine> <008f01c50fb0$825c6080$260aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <008f01c50fb0$825c6080$260aa8c0@lanadmin>
References: <5.1.0.14.1.20050209092740.02f55340@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: eatley@wowcorp.com, linux-newbie@vger.kernel.org

At 03:38 PM 2/10/2005 -0500, Eve Atley wrote:

>Thanks. Your advice makes sense, but allow me to give a bit more detail of
>the current setup.
>
>1. Those users for whom I do have an account set up (example: gagan) have
>their own username/password.
>2. FTP and Telnet has been disabled, so SSH is the only way they can access
>our US server currently.

I figured this (does anybody run telnet any more? at least not on systems 
that connect to public networks, I hope ... I still use it occasionally on 
isolated, benchtop setups to communicate between a workstation and an 
embedded system, but even then only because the embedded system vendor only 
offers telnet access), but I tend to err on the side of giving too much 
info, not too little ... so I was mentioning that just in case.

>3. Those users, ie. gagan, that have a username/password, are currently
>placed into the groups for which they have access (ie. marketing) and that
>particular directory is owned by root with file group set to itself (ie.
>marketing).
>4. Each directory is set to 770, with owner/group having r/w/x bit set.
>
>Now, you wrote:
>
>         3. For the files and directories you want these folks to have write
>access
>         to, make them mode 664 or 774 as appropriate, chgrp them to india,
>and let
>         them rely on group- rather than user-level access. Set these users'
>umasks
>         so files they upload have appropriate permissions.
>
>1. Based on this setup, would I still chgrp the directories to India?

That was only an example, and it was kind of based on the notion that the 
users in question really needed only access to the shared directory you had 
mentioned. If that is a misreading of your needs, then my suggestion was 
bad (or at least incomplete) advice.

More generally, you use the file /etc/groups to associate users with groups 
(a user can be in many groups this way in addition to his or her "home" 
group as listed in /etc/passwd) and use that mechanism in whatever way is 
appropriate to the details of your setup.

>2. I am not sure how to set umasks, but once I figure that out, I would then
>set it directly on the user?

Yes. Exacylt how to set this depends on how you set other attributes for a 
user. For example, if your system use /etc/profile for standard user 
characteristics, and /home/<userid>//profile for user-specific settings, 
you could set the umask in one of these places. "man umask" should give you 
a page on the C function, but that includes the info on how to interpret 
umask values (it's pretty obvious, just the inverse of mode ... e.g., a 
umask of 022 sets the default mode to 755) .

>The question seems to have mutated; I appreciate your explanation of SSH as
>a method by which to transmit securely over an insecure medium rather than
>offering any true security of the machine itself. In rethinking this
>strategy, I think assigning each user his/her own secure password needs to
>be the norm, and when users ssh into the system they will just have to
>navigate to the shared directory on their own. Any other suggestions are
>appreciated.

I've never tried this, but maybe .bashrc could include a command to switch 
the user to the shared directory immediately on login?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
