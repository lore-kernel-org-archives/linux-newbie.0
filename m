From: "linda w." <linux-newbie@tlinx.org>
Subject: reading links in proc - permission denied
Date: Thu, 5 Jun 2003 12:29:36 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <008501c32b98$cc7503f0$1403a8c0@sc.tlinx.org>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm misunderstanding something about links in proc.

I thought 'ps', 'top' et al used /proc to display processes, command lines,
etc.

Since neither ps nor top are suid root, they are running with my uid
permissions.

However, if I do "ls -l" on /proc/<number>/exe, I get a

"ls: cannot read symbolic link /proc/16714/exe: Permission denied"

message.

Now the process is owned by 'named', but the entries in diriectory are
owned by root (is that right/logical?), thus:

# ll /proc/16714
total 0
dr-xr-xr-x    3 named    named           0 Jun  4 11:39 ./
dr-xr-xr-x   95 root     root            0 May 30 15:38 ../
-r--r--r--    1 root     root            0 Jun  4 11:39 cmdline
-r--r--r--    1 root     root            0 Jun  4 11:39 cpu
lrwxrwxrwx    1 root     root            0 Jun  4 11:39 cwd -> /var/named/
-r--------    1 root     root            0 Jun  4 11:39 environ
lrwxrwxrwx    1 root     root            0 Jun  4 11:39 exe ->
/usr/sbin/named*
dr-x------    2 root     root            0 Jun  4 11:39 fd/
-r--r--r--    1 root     root            0 Jun  4 11:39 maps
-rw-------    1 root     root            0 Jun  4 11:39 mem
-r--r--r--    1 root     root            0 Jun  4 11:39 mounts
lrwxrwxrwx    1 root     root            0 Jun  4 11:39 root -> //
-r--r--r--    1 root     root            0 Jun  4 11:39 stat
-r--r--r--    1 root     root            0 Jun  4 11:39 statm
-r--r--r--    1 root     root            0 Jun  4 11:39 status
---
	Purely from a 'cleanliness' standpoint, is the environment owned by
the user-id, or is it a common piece of public, kernel (root) owned data?

	From observation of other /proc entries, it appears that 'named' has
some unique features in that it is started as root, but then reverts to
uid/gid named sometime after startup.  Should some (or all) of the UID's
in proc change ownership to the new UID or are they still considered to
be owned by the old UID?  (Would seem a bit inconsistent -- I wonder if
it could be security exploitable? -- like if a user process was able to
setuid root, would  anything be left in the environment owned by the
original unpriviledged user that could be changed from another running
process, changing things like PATH for the currently running root
process....naw...I'm sure that's plugged...and it's only inconsistent
with root doing setuid to non-root....hmmmm :-/).



	But, here's the part that is bugging me.  Running as user 'foo',
I can't read that link -- yet the permissions say rxw for group and other.
So why am I getting the *permission error*?  The binary it is pointing to
/usr/sbin/named is also publicly readable, so that can't be the problem.

	So why can't I follow the link of 'exe' to see what image the process
is executing?  Programs like 'ps' and 'top' seem to not have this
difficulty.

	I'm sure it's some silly misconfiguration on my part, but I guess I want
to know how I got here.  This isn't my beautiful kernel, it's not my beautiful
/proc...(etc...).

	I'm running a xfs-patched kernel, V2.4.20/SMP.

Thanks for any insights...I'm trying to write a simple script looking for
a running process (by looking at what 'exe' is pointing to).  I would
find it kludgey to achieve the objective by running 'ps' and doing
appropriate filtering.

-linda


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
