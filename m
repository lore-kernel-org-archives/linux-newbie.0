From: "J." <mailing-lists@xs4all.nl>
Subject: RE: Simple script to set permissions on folders daily - write  
 script and cron it?
Date: Tue, 29 Mar 2005 21:27:24 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0503292045450.1414-100000@hestia>
References: <5.1.0.14.1.20050329100112.01f914f8@celine>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050329100112.01f914f8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 29 Mar 2005, Ray Olszewski wrote:

> At 07:02 PM 3/29/2005 +0200, J. wrote:
> >On Tue, 29 Mar 2005, Mike Turcotte wrote:
> >
> > > That would be great if someone knew and could tell us how to set default
> > > permissions on a specific directory.
> >
> >In the case if the directory is NOT a mount point:
> >This is done either from the command-line with `chmod' or if you want this
> >as a default, create a startup script in your /etc/init.d/
> >directory and make sure it's executed at the right run-level.
> >[depends on your GNU/Linux distro]. That way everytime your
> >system starts-up the directory is set to the right permissions.
> >
> >If the directory is a mountpoint, umount and remount it with the
> >permissions. /etc/fstab
> >
> >If you use samba, php, apache or any other deamon program to access your
> >files set the file mask permissions in those programs correctly. And make
> >sure the user & group settings under which these programs run on your
> >system have the right permissions todo so.
> [...]
> 
> J --
> 
> While everythig you've written here is quite correct, I think you 
> misunderstood Mike's question. He's looking, I believe, for the same thing 
> Eve is ... a way to cause all files written to a particular directory, no 
> matter by whom, to have some particular mode ("default permissions") that 
> is defined independently of the account doing the creation (so the 
> bash-based umask won't serve his purpose). In effect, he wants to set a 
> default umask not for a user but for a directory.

If that's the case I have mis-understood the question indeed. But.. then
there is something wrong in her approach to this problem because it's a
user-access problem, not a directory problem.

> I have never run across any way to do this directly in Linux (or Unix). 

The problem is that the directory needs constant monitoring if it's
accessed. That can be done from C by a lock. But it's not to be done like
that from the default system toolset.. That is.. However what can be done
is to use the directory as a mountpoint. That way you can mount it with
specific rights.

> If 
> the files are all being created (or transferred) via some specific program, 
> there *might* be a way to set a default umask for that program (as samba 
> does, for example ... do you know if any ftp and scp servers offer this 
> capability? wu-ftpd lists a -u switch, but I don't see anything for stock 
> sshd, which seems to use the uid's umask). But that's still different from 
> the directory itself.

Before answering this. Ask the question: Is the program which creates the
files running in as a subshell ? Like Ftp.. If so than there are 2
options. The program config... Or.. systemwide shell config. That's why
for example chroot is such an issue with ftp, ssh.. accounts.

Anyway. 
Proftpd does `umask' .
Umask			022
apache does umask.. 
umask                   007

The problem with ssh and umask:
The secure shell client needs to do several things before running the
connection on a remote host. One is to set a default umask of 022, which
makes the files writable by the owner only, but world readable. Because
the modes are not set explicitly, this provides a basic default set of
permissions of the files. In addition, the secure shell client needs to
set an effictive UID because it runs as root [suid bit is on] when
executed. The secure shell uses an effective UID bit for executing
commands on the remote host, as opposed to the real uid, which is defined
on the local host. Next the secure shell client has to read the confi
files. The first config file it reads are the user config files... And
then the system-wide files are read. When a connection is opened to the
remote host the only time the secure shell client needs root privileges is
for rhosts authentication. But the SUID bit is ..NOT.. set for scp and
sftp for example.. 

Now... I would go for a good solid shell umask and a chroot if I had
non-family members accessing my system thru ssh.. ;-) 
[not mafia here b.t.w ;-)] 

> Eve's proposed approach ... the cron script ... may seem a bit clunky at 
> first glance, but I suspect it really is the best solution for her, and 
> perhaps for Mike and anyone else who needs this capability.

Sorry, but I still can't understand why the files don't have the right
permissions right from the beginning ? 
One: startup script
Two: program config

If she has several users with a
passwd to her system, and she only want's them to access the two
directorys she could very easy make the two users share their
homedirectorys and then set the umask value for those two users.

That way you will always have a buffer inbetween the people from the
outside and the inside of the Ehmm.. `world' ;-)

Or use symlinks to a target directory somewhere else with the correct
Sticky bit rights. Possibilities enough without creating CPU cycles.

> Or am I missing something? I always feel on safer ground when explaining 
> how something *can* be done then when I say something *cannot* be done. 
> Still, something "no way" really is the correct answer.

I am not quite to sure about me here anymore either..
B.t.w. 
Thankx for all that keyboard typing.... ;-) 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
