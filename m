From: Ray Olszewski <ray@comarre.com>
Subject: Re: security
Date: Tue, 17 Feb 2004 11:00:22 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040217104451.02019510@celine>
References: <40325596.6090805@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40325596.6090805@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:55 AM 2/17/2004 -0800, dave wrote:
>I've been runing Mandrake for a couple of years and I'm still having 
>problems with groups. This is the procedure for making a group and sharing 
>a subdirectory that I use.  Can someone tell me where I'm screwing 
>up?  Thanks in advance
>
>Make a folder:   mkdir /home/everyone
>make group: groupadd everyone
>add users gpasswd -a dave everyone
>add users gpasswd -a laura everyone
>change the group for the folder chgrp -R everyone /home/everyone
>add write for group everyone chmod g+r /home/everyone
>When I'm done with this I still can not make a folder in /home/everyone 
>logged on as dave.

This step looks wrong:

         chmod g+r /home/everyone

Don't you want this to read

         chmod g+w /home/everyone
or
         chmod g+rw /home/everyone

since making a "folder" (a subdirectory in Linuxspeak) requires writing to 
the directory, not reading it?

Anyway, see what "ls -l /home |grep everyone" reports about permissions for 
/home/everyone . Even if I've got the chmod options wrong, you want to have 
the directory writable by its group ... so make sure the permissions are 
something like drwxrwxr-x.  "chmod 775 /home/everyone" should produce this.

If that's not the problem, take a look behind the curtain of the commands 
you're trying to see what is actually wrong (though the rest of the 
commands you report look OK to me). Look at (or show us) this:

         the entry in /etc/groups for "everyone"
         the output of "ls -l /home | grep everyone"
         the actual error response when userid dave executes these commands
                 touch /home/everyone/sometestfile
                 mkdir /home/everyone/somedirectoryname
                 (or some equivalent commands ... but show both the
                 exact commands and the exact errors)

Also mention if there is anything unusual about what you are doing ... for 
example, if an NFS or SMB mount is involved, or if you log in as someone 
else then su to dave, or ... you get the idea.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
