From: Ray Olszewski <ray@comarre.com>
Subject: Re: Cannot login as non-root user
Date: Tue, 15 Jul 2003 19:25:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030715191243.01fcece8@celine>
References: <20030715.162201.505.419099@webmail10.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030715.162201.505.419099@webmail10.lax.untd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

See below.

At 11:21 PM 7/15/2003 +0000, beolach@juno.com wrote:

>On my brother's computer, running Slackware 9.0, we have just recently
>begun experiencing problems signing in as non-root users, either from
>normal login, su, su -, or ssh.  After entering username & password,
>login prints the error "Cannot execute /bin/bash: Permission denied"
>and returns to login prompt. Su & su - from root prints the same error,
>"Cannot execute /bin/bash: Permission denied" and returns to the root
>shell.  Ssh gives "/bin/bash: Permission denied" and connection lost.
>Root can sign in with no problems at all.
>
>The first thing I did was check the pemissions on /bin/bash, and it
>is executable for everyone: -rwxr-xr-x.  We've also un/reinstalled
>the bash package (we've tried the bash packages from both the
>slackware-9.0 and slackware-current distributions; bash-2.05b-i386-2
>and bash-2.05b-i486-3), with no change.  I've also removed & readded
>the user accounts in /etc/passwd & /etc/shadow, both with vipw and
>userdel/useradd; again with no result.
>
>We started experiencing this quite suddenly, while we were trying to
>get X setup with 3d acceleration for my brothers ATI Radeon 9500 Pro
>(which is still not working, anyone here have experience?), and I am
>have no idea what started the login problems, because obviously X has
>nothing to do with login, and we really weren't doing anything else.
>
>Any help resolving this is greatly appreciated,
>Conway S. Smith

Basic questions:

1. What is root's shell? Is it /bin/bash or /bin/sh? (If the latter, is 
/bin/sh a symlink to /bin/bash? It usually is but might not be in your case.)

2. What are permissions on /bin? They should be 755 (rwxr-xr-x).

3. This feels like a long shot, but might there be a permissions problem 
with one of the shared libraries bash uses? Check your system with "ldd 
/bin/bash". Mine shows these libraries involved:

         autovcr@kuryakin:~$ ldd /bin/bash
                         libncurses.so.5 => /lib/libncurses.so.5 (0x40018000)
                         libdl.so.2 => /lib/libdl.so.2 (0x40055000)
                         libc.so.6 => /lib/libc.so.6 (0x40058000)
                         /lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)

4. Another long shot: how full is /var ? /tmp ? / ? Might bash be unable to 
create a log or scratch file, or login a wtmp entry, as an ordinary user 
that it can as root (since root can use reserved areas of filesystems)?

5. And another: might some filesystem be mounted read only?

6. This sounds very non-Linux, but ... have you rebooted? It's just barely 
possible that some kernel pointer got corrupted somehow and you need to 
reload a fresh kernel to get the permissions read properly.

If none of this gets you anywhere, and no one else comes up with something 
better, next time tell us in more detail waht you have been doing to get X 
working. Just editing XF86Config-4? Or fiddlign with other parts of the 
system too?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
