From: "Puneet B" <puneetb@bonbon.net>
Subject: RE: Cannot login as non-root user
Date: Tue, 15 Jul 2003 16:48:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CHEKJPMKMAELJLFIBCPLKEDFCAAA.puneetb@bonbon.net>
References: <20030715.162201.505.419099@webmail10.lax.untd.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030715.162201.505.419099@webmail10.lax.untd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> On my brother's computer, running Slackware 9.0, we have just recently
> begun experiencing problems signing in as non-root users, either from
> normal login, su, su -, or ssh.  After entering username & password,
> login prints the error "Cannot execute /bin/bash: Permission denied"
> and returns to login prompt. Su & su - from root prints the same error,
> "Cannot execute /bin/bash: Permission denied" and returns to the root
> shell.  Ssh gives "/bin/bash: Permission denied" and connection lost.
> Root can sign in with no problems at all.
> 
> The first thing I did was check the pemissions on /bin/bash, and it
> is executable for everyone: -rwxr-xr-x.  We've also un/reinstalled
> the bash package (we've tried the bash packages from both the
> slackware-9.0 and slackware-current distributions; bash-2.05b-i386-2
> and bash-2.05b-i486-3), with no change.  I've also removed & readded
> the user accounts in /etc/passwd & /etc/shadow, both with vipw and
> userdel/useradd; again with no result.
> 
> We started experiencing this quite suddenly, while we were trying to
> get X setup with 3d acceleration for my brothers ATI Radeon 9500 Pro
> (which is still not working, anyone here have experience?), and I am
> have no idea what started the login problems, because obviously X has
> nothing to do with login, and we really weren't doing anything else.

Check the permissions of / and /bin. These might be set to 700. Could also
be an issue with library permissions (see this:
http://www.linuxgazette.com/issue52/okopnik.html)

Puneet


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
