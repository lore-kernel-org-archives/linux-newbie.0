From: Ray Olszewski <ray@comarre.com>
Subject: RE: Simple script to set permissions on folders daily - write 
  script and cron it?
Date: Tue, 29 Mar 2005 10:20:56 -0800
Message-ID: <5.1.0.14.1.20050329100112.01f914f8@celine>
References: <C6FD667B200BDF4F964C1BA77B796CE20F5E4E@cnbmail2.city.north-bay.on.ca> <Pine.LNX.4.21.0503291853430.1276-100000@hestia>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0503291853430.1276-100000@hestia>
References: <C6FD667B200BDF4F964C1BA77B796CE20F5E4E@cnbmail2.city.north-bay.on.ca>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:02 PM 3/29/2005 +0200, J. wrote:
>On Tue, 29 Mar 2005, Mike Turcotte wrote:
>
> > That would be great if someone knew and could tell us how to set default
> > permissions on a specific directory.
>
>In the case if the directory is NOT a mount point:
>This is done either from the command-line with `chmod' or if you want this
>as a default, create a startup script in your /etc/init.d/
>directory and make sure it's executed at the right run-level.
>[depends on your GNU/Linux distro]. That way everytime your
>system starts-up the directory is set to the right permissions.
>
>If the directory is a mountpoint, umount and remount it with the
>permissions. /etc/fstab
>
>If you use samba, php, apache or any other deamon program to access your
>files set the file mask permissions in those programs correctly. And make
>sure the user & group settings under which these programs run on your
>system have the right permissions todo so.
[...]

J --

While everythig you've written here is quite correct, I think you 
misunderstood Mike's question. He's looking, I believe, for the same thing 
Eve is ... a way to cause all files written to a particular directory, no 
matter by whom, to have some particular mode ("default permissions") that 
is defined independently of the account doing the creation (so the 
bash-based umask won't serve his purpose). In effect, he wants to set a 
default umask not for a user but for a directory.

I have never run across any way to do this directly in Linux (or Unix). If 
the files are all being created (or transferred) via some specific program, 
there *might* be a way to set a default umask for that program (as samba 
does, for example ... do you know if any ftp and scp servers offer this 
capability? wu-ftpd lists a -u switch, but I don't see anything for stock 
sshd, which seems to use the uid's umask). But that's still different from 
the directory itself.

Eve's proposed approach ... the cron script ... may seem a bit clunky at 
first glance, but I suspect it really is the best solution for her, and 
perhaps for Mike and anyone else who needs this capability.

Or am I missing something? I always feel on safer ground when explaining 
how something *can* be done then when I say something *cannot* be done. 
Still, something "no way" really is the correct answer.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
