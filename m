From: Dominic L Hilsbos <dhilsboslfs@sbcglobal.net>
Subject: Re: Setting permissions in a public folder
Date: Sat, 21 Feb 2004 00:57:17 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4036F33D.3050801@sbcglobal.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Ok, as I understand it you have a (set) of folders:

/home/shared/backup/<user-name>/, where <user-name> is the (Linux?) user 
name of the person you want to be able to connect to these, correct?  
These folders (even though /home/shared/backup/ is owned and write able 
only to root) are owned and read/write able by their own users, correct?
If that is the case your smb.conf entry 'should' look like this, I think 
:-):

[backup]
                  comment = Backup Folder
                  path = /home/shared/backup/%u/   # %u expands to 
<user-name> (the Linux user that samba generated from
                                                                       
            # the login information it was given)
                  browsable = no                                     # 
this makes it so the share isn't listed with the SMB browse servers
                  read only = no                                       
# this allows people to write to this share (note: only a user that has 
Linux
                                                                        
           # permissions to write to the directory will actually be 
able to)

I don't 'think' you need the host allow option, or maybe set it as such:

                  host allow = ALL

which will allow the users to connect to the share from any machine, as 
long as they authenticate correctly.

You certainly DO NOT want the guest ok, or guest only, options, that's 
basically saying: allow ONLY the guest account (however that is setup) 
to access this share (BTW, samba will use it's status as a root running 
program to over-ride the read/write permissions a share to allow this).

I haven't tried this kind of thing, and I'd recommend testing it before 
deploying it.

For more information I would recommend (the quite complete) "Using 
Samba," especially Chapter 6, which, incidentally, is available as part 
of the source tarball.  Download the newest version of the sources for 
www.samba.org, untar it, then go into the docs/htmldocs/ussing_samba/ 
directory and start reading :).

Eve Atley wrote:

>Michael et. al,
>
>Regarding yesterday's problem I am having with restricting user folders to
>each user under a public folder, I am still having questions about setting
>this one up. These are NOT the user folders automatically created in the
>HOME directory.
>
>The config in my smb.conf file for the directory in question:
>[backup]
>        comment = Backup Folder
>        path = /home/shared/backup
>        read only = No
>        guest only = Yes
>        guest ok = Yes
>        force group = +backup
>        hosts allow = 192.168.10.
>
>I'm looking for the correct config. Without the hosts allow (haven't tried
>it with), I am able to connect correctly via a Unix command line, but not
>through the Windows share, so it appears to be a Samba problem.
>
>- Eve

-- 

Dominic L Hilsbos

"Peace can not be kept by force.  It can only be achieved through understanding"
Albert Einstein

Linux registered user: 283861		http://counter.li.org/
LFS 5.0 ID:12136			http://linuxfromscratch.org/cgi-bin/lfscounter.cgi
Linux-Mandrake 9.2
Windows XP




-- 

Dominic L Hilsbos

"Peace can not be kept by force.  It can only be achieved through understanding"
Albert Einstein

Linux registered user: 283861		http://counter.li.org/
LFS 5.0 ID:12136			http://linuxfromscratch.org/cgi-bin/lfscounter.cgi
Linux-Mandrake 9.2
Windows XP


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
