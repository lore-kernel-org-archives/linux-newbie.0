From: "J." <mailing-lists@xs4all.nl>
Subject: RE: Simple script to set permissions on folders daily - write script
 and cron it?
Date: Tue, 29 Mar 2005 18:51:20 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0503291807440.1276-100000@hestia>
References: <002f01c53477$9c88c9d0$580aa8c0@lanadmin>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002f01c53477$9c88c9d0$580aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 29 Mar 2005, Eve Atley wrote:

> That is my issue as well; Ray and others, I hadn't implemented umask because
> it still appears Greek to me. 

Eve I think ray's answer was very good. I think you have to look a bit
more at how permissions work, and what happends when someone
log's in [or program logins in] . I know it's a bit akward these
permission bit's and bytes in the umask forrest.

That is because it requires a fundemental understanding of
nr. systems. Like octal, binary. Yes.. yuk.. Learning curve steep, but it
makes or breakes your system, take it from me...

The Fundemental questions:
1. What & Who is creating the files on your system ?
2. What & Who needs to access them ?

If you know that, you solved half your problem. Now you can pick the best
approach.

As for umask:

New files are created with a default access mode to automatically set the
permision levels. [umask] .

When new files are created, the protection bits are set according to the
users default setting. Like ray said . The default is established using
the umask command in some sort of startup script either bash or
another shell. `man umask' or `umask --help'

If you are the sys-admin of your system then you can set the default umask
value for all users, not just your self. 

There are also programs which can set their own permission bits. Like
for example in samba:
 create mask = 0700
 directory mask = 0700
 browseable = No

Or ssh shell..
....etc..

That's why you need to know what, and who's creating the files and who
want's to access them..

> I'm not against use umask; 

It's not if you are against it or not. You will have to use it.. No matter
what. 

> I just didn't 'get it' upon reading stuff
> online. A link or two pointing to 'Umask for Idiots' would be great!

Again, that's because the Nr.'s dont make any sense. And I can't blame you
for that.

http:/www.google.com/linux 

search for octal, umask....

> Thanks,
> Eve
> 
> 
> P.S. For additional info, my setup is something like this:
> Directories 'accounting' and 'hr' are created.
> Groups 'accounting' and 'hr' are active in the system.
> Users have been assigned to accounting and hr group.
> Directories are then locked to those users with access to accounting or hr,
> respectively.
> Accounting and HR are currently set up as 
> drwxrwx--T accounting
> drwxrwx--T hr

The program they use to access these files, does that program run under
?? which user/group ?? My best guess is, Fix that, and you fixed your
problem.. 

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
