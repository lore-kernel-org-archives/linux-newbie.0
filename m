From: "J." <mailing-lists@xs4all.nl>
Subject: Re: 2 questions: 1. ssh permissions to 777 and 2. recursively change
 all directories/files to 777
Date: Fri, 10 Dec 2004 14:48:21 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0412101401001.4138-100000@hestia>
References: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 9 Dec 2004, Eve Atley wrote:
 
> First question...
> We have people SSHing into our Linux box from overseas (India to US, company
> access only). But files that are uploaded from these people become read-only
> to anyone else accessing them. We *require* that they be readable/writable
> by this side of the pond (US). How can I set this to occur? 

What distribution of linux are u using ? How are the files
transferred, scp, ftp or ... ?

Enforcing userwide policy's is done thru the basic's of your os and a
multiuser os like linux has several basic systemtools available for
these tasks. These are normal sysadmin tasks.

I see some cronscripts are mentioned here, personally I think that this is
suppressing symptoms instead of good solid admin basic user-right
management.

Every file created on your system is created with a basic set of rights or
better: `the file creation mode mask'.

The `file creation mode mask' is determined either by the sysadmin who
can set the `mask' for all users which can be alterd later on by the
program creating the file on the system !BUT! only if this program has the
available rights to do so.

The sys-admin has several options to enforce userwide policy's.

What you need to find out is: 
1. What program is creating the files ? 
2. What rights has this program ? 
3. Finally what rights do the programs need accessing these newly created
   files?

After you have answerd those questions you can make a decision as a
sysadmin how to enforce readability on those files. 

In general there are Two choices.
1. By either allowing the `file creating' programs to set theire own
   masks. For this the programs need their own filecreation set of
   rights.
2. Enforce system-wide rights by adding users to a specific `/etc/group'
   of users or by setting a systemwide umask.
   [there are more options for this last one, but for the clarity of this
    email I will keep it simple, I am not writing a book here..]

For example programs creating their own mask: 
in samba look at the `create mask = ' or `directory mask = '
directives. 
In the bash shell the `umask' command.
For apache the `umask' directive.
Note that programs creating their own mask's, can also mean that users are
allowed changing that mask again as 't pleases them. That can not be
desirable.. bla.. ;-)

Final:
Setting all files per default to world-readable is !NOT! a good policy,
because the whole world can read them and not only the users of your
system or network.

For more info look at the manual pages of your specific programs or
system example.. man group, man newgrp, man login, man bash etc, etc..

Sorry for my suggestion: But... Buy a good basic linux sysadmin
book. Solid user-right management is the fundamental of a stable secure
linux system and allows you to exercise control over almost every aspect
of user privacy. hehehe..

Greetz..

J.

> Otherwise, this
> method of transferring files will *not* work for us, and perhaps someone can
> point me to another solution.
 
> Second question...
> How can I recursively set all files/directories to 777?
> Chmod -R 777 *.* ... Didn't seem to hit everything.
> Thanks!
> 
> -Eve
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

Friday, December 10 14:01:00



--
http://www.rdrs.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
