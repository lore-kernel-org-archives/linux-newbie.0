From: Kurt Sys <Kurt.Sys@rug.ac.be>
Subject: Re: safety/permissions
Date: Thu, 20 Mar 2003 17:51:09 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1048179069.3e79f17dc1984@mail.rug.ac.be>
References: <5.1.0.14.1.20030317070035.01e74608@celine> <5.1.0.14.1.20030317070035.01e74608@celine> <5.1.0.14.1.20030318075020.01e7ffc0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030318075020.01e7ffc0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Eello again,

I tried to make my homework as good as possible. I reinstalled 'everything', so
all permissions are now default values, except the ones in my homedir. I was
able to solve some (other) problems with qmail. Now, I can send mail using
qmail. I can receive mail whenever I send a message from my machine to my
machine (so local mail delivery is ok).
I can not send a message from 'outside' (so I send from my webmail to my 'local'
mailbox kurt@ksys.rug.ac.be) nor can I receive any messages present on a
mail-server (allserv.rug.ac.be, which is not mine). 
If I send a message from my webmail (I consider this as 'mailing from another
machine) to my local address, it's not delivered and I do not get an error
message (yet, i.e. after a few hours). So, apparently, it tries to write to
'somewhere', but it doesn't work. I can't find anything in my log-files.
If I 'fetchmail' my mail from the webserver (so, the 'allerv.rug.ac.be'), it
fetches that mail, but it doesn't deliver the mail. I know it fetches the mail
since it is removed from the server if I don't set the 'keep'-value (which keeps
the mail on the server).

So, my mail cannot be delivered if it comes from 'outside'. Permissions are all
'default' values, except the ones in my homedir. Now, I see nothing special
about these (and very 'open'):
755 for /home/kurt 
755 for /home/kurt/.mydata (where mail-files and 'inbox' is, after it is taken
from /var/mail/kurt)
755 for /home/kurt/.mydata/inbox (file with my mail)
600 for /home/kurt/.fetchmailrc

Kurt



Quoting Ray Olszewski <ray@comarre.com>:

[...]
> >  Maybe it's the permissions of the /var/mail
> >(/var/spool/mail)? They are set, for my mail-spool-file 'kurt':
> >-rw-rw----   1 kurt mail         0 Feb 17 21:39
> 
> This is the standard mode for a user mail file so should not *itself* cause 
> problems. (It might interact with some *other* change you made to cause a 
> problem, though.) The directory that contains it (/var/mail) should be
> 
> drwxrwsr-x    2 root     mail         4096 Mar 18 07:47 mail
>
> This is also the first mention you have made of a problem with fetchmail, 
> or incoming mail in general  ... your prior message discussed only failing 
> to *send* mail with qmail, and then you indicated that qmail-inject did add 
> the message to the queue ... so you might want to describe how you are 
> using fetchmail and if your logs report any messages from fetchmail about 
> problems getting mail.
> 
[...]
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
