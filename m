From: James Miller <jamtat@mailsnare.net>
Subject: Re: no working Mozilla after Sid dist-upgrade: suggestions?
Date: Mon, 26 Jul 2004 12:13:13 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407261112300.1363@debian-emach>
References: <5.1.0.14.1.20040716075506.01f20c68@celine>
 <5.1.0.14.1.20040716075506.01f20c68@celine> <5.1.0.14.1.20040716092314.01f08c58@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040716092314.01f08c58@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

For close to 2 weeks I've been trying to get Mozilla working by apt-get
update(ing) and then dist-upgrade(ing), but to no avail.  Several updates
for both Mozilla and Mozilla Firefox have been made to these packages
during that time, but I was still getting the segmentation fault when
trying to start Mozilla.  Mozilla Firefox worked, but was constantly
crashing (just suddenly vanishing from the screen).  Today, I decided to
have another go at some troubleshooting.  I discovered that I was able to
start Mozilla as root.  Guessing from this that some of the user settings
I had in place were interfering, I tried renaming some relevant-looking
files - e.g., prefs.js - in hopes that it would auto-create some new prefs
files it would be happy with and thereafter run.  That didn't work, so I
simply renamed the whole dir in my user's home dir.  After that, the
browser started working more normally.  I don't recall confronting such a
situation previously, but I think I've only upgraded Mozilla once on this
machine previously.  Can anyone tell me if I should be expecting this sort
of problem when I upgrade the browser?  Also, I've recently read that
Debian no longer considers Mozilla free software.  Could my recent
problems with it be related to this change in the way the
developers/maintainers are viewing it?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
