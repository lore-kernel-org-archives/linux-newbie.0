From: Ray Olszewski <ray@comarre.com>
Subject: Re: path locations
Date: Sat, 12 Jul 2003 20:02:44 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030712195144.02087a90@celine>
References: <200307121952.17152.sotl155360@earthlink.net>
 <200307121947.50580.sotl155360@earthlink.net>
 <200307121952.17152.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1058062916.2056.8.camel@goldfinger.orbdesigns.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>

See below.

At 10:21 PM 7/12/2003 -0400, Brian P. Bilbrey wrote:
>On Sat, 2003-07-12 at 19:52, Frank Roberts - SOTL wrote:
> > Hi All
> >
> > I know that part of the path statement is located in /home/<user/.bashrc
> > and part is located in /root/.bashrc but I believe that there is another
> > system location for another part of the path statement.
>
>Yep. When you login as ~user, you get ~user's path spec from ~/.bashrc,
>that's true for the root user, too. That is, when you login as 'frank',
>you never, ever source /root/bashrc.
>
>The system wide basis path is often (but not always) found in
>/etc/profile.
>
> > I would appreciate it if some knowledgable person would enlightenment me as
> > to the location of this third part.
>
>So, just to flog a dead horse, there is no third part. There is
>/etc/profile, which is the basis, then any additional pathing should be
>added through something like a
>
>export PATH=$PATH:/opt/foo:/usr/bar
>
>in ~/.bashrc, whether a normal or superuser.


It's actually just a bit more tangled than this, Brian.

At the systemwide level, you have:

/etc/profile, the standard for sh and any sh-compatible shell (e.g., bash).

/etc/bash.bashrc, another standard for bash.

/etc/login.defs is actually used by login, not bash, but it can do some 
bash-like things.

At the user (which Brian currectly associates with ~, not <) level, you have

~/.profile, the user-specific analog to /etc/profile
~/.bash_profile, an alternate name that may replace the above
~/.bashrc, the user-specifci analog to /etc/bash.bashrc

The files in /root are red herrings, in that they are simply the 
user-specific file for userid root.

The exact details of how this stuff works, and the exact names used for the 
files, vary a bit from one distro to another, so you'll have to check the 
docs specific to your setup to get it right. An additional complication is 
that which of these files runs when a shell is opened depends on whether 
the shell is the result of a login, an su, an su -, or a #!/bin/bash header 
in a shell script.

It's messy.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
