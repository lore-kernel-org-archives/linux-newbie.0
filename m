From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: keeping legitimate users out of public_html
Date: Mon, 20 Sep 2004 06:59:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <414EE247.2090602@bcgreen.com>
References: <5.1.0.14.1.20040915100132.01f29c78@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040915100132.01f29c78@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org, wstanard@palmertrinity.org

You can do this in one of two ways using SIMPLE unix file access:

One is to do what was listed below: Find the group of the apache
process, and permit the public_html directory to be read only
by the apache group.

chgrp httpd public_html
chmod 760  public_html

(you need to be root {or a member of group public_html) to do the chgrp
call (but not the chmod command).

if you want to prevent ONLY the students from accessing the public_html
directory, then you can create a group 'students', and add all of the
student accounts into the group students. Then change the public_html
directory to be group students, and mode 706  (readable by everybody
BUT group students).

To initially set the group of all the students, you can go:

for sid in `cat student_uid_list` ; do usermod -G students $sid ; done
chgrp students public_html
chmod 706 public_html

Your last choice would be to use ACL (access control lists).
about the only nice thinga about the acl method is that it
doesn't require you to bo root. The nasty thing is that acl's
aren't well integrated into the UNIX world, and I personally
dislike using them when I don't have to -- but they do work.

HOWEVER:  you first have to mount the filesystem with ACL's avalable
change the mount options for /home (presuming that it is a separate
filesystem) or / to include 'acl'

On a live system, you can remount to include acl capaability:

mount -o remount,acl /home

You can then permit the directory none others, and
readonly to group apache:

setfacl -m sother::-,u:apache:r-x /tmp/xxx

the nice things about ACLs is that -- once you mount the filesyatem
with ACLs enabled, you don't have to be root to give specific groups
and/or users access.. however when you do an 'ls -l' it'll only hint
at the existence of ACL's by printing a '+' sfter the permissions section

-rw-r-x---+ 1 samuel samuel 0 Sep 20 06:30 public_html

You need to use getfacl to get the full permissions info.

If students are a member of a group, then you can permit
them no access in a similar way with ACLs ..

setfacl group:students:--- public_html


or you can explicitly  permit specific students no access:

for name in `cat student_list` ; do setfacl user:$name:- public_html ; done


Ray Olszewski wrote:
> At 08:15 AM 9/15/2004 -0400, William Stanard wrote:
> 
>> I help students manage a school intranet website on a machine running Red
>> Hat 2.4.18-14 and Apache 2.0.40.
>>
>> How do I keep my student users with accounts on the machine from being
>> able to access, via Putty, /home/bobo/public_html, the directory in which
>> I keep all of the content for the site, including tests and quizzes 
>> for my
>> students' online use?
>>
>>  I can password protect, using .htaccess, specific directories from
>> "unauthorized" access, but I would like to provide similar protection for
>> the /home/bobo/public_html/Prog/tests directory.  If I change permissions
>> via chmod, however, then Apache will not be able to serve the pages to 
>> the
>> intranet.
> 
> 
> This is actually a tricky problem, taking you into one of the blurry 
> areas of Unix/Linux permissions. One way to solve it: first check what 
> userid apache is running under and what groups that userid is part of. 
> Then make the relevant files and directories mode 640 (or 750, depending 
> on the specifics ... possibly even 660 or 770 if you have cgi scripts 
> that need to write to files or create new files), associating them with 
> a group that the apache userid is in but the students are not in. That 
> should do the job for you.
> 
> Doing this may require you to change the userid that apache runs under. 
> And I am assuming in this (a) that you are "bobo"; (b) the students do 
> not have root access to the host. If assumption (b) is wrong, then there 
> is no way to accomplish what you want that I know of (since root access 
> is, by definition, never "unauthorized"). If assumption (a) is wrong, 
> the general idea I'm suggesting should still work, but you will have to 
> adjust some details, depending on what the userid "bobo" actually is.

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
