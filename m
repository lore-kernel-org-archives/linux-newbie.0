From: root <root@hartford-hwp.com>
Subject: user can't read mail (rmail) in text mode
Date: Tue, 29 Oct 2002 02:53:24 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210290753.g9T7rOH02568@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I'm in a real jam: can't run X server, and so trying to run rmail 
out of emacs in text mode from a command prompt. But I'm having 
trouble with rmail in this situation. 

Fetchmail works (dumps new messages into /var/spool/mail/<username>). 
However, even though I'm logged in as user and run rmail under emacs, 
it says permission denied to access old stored mail (~/RMAIL), but 
nevertheless then proceeds to load it properly. Rmail then works 
normally with old messages. But when I try to access new messages from 
/var/spool/mail/usrname, I get permission denied for /var/spool/mail
/root. I don't know why it tries to read root's mail, and chmod o+r 
username does not help. 

The only way I can read my mail is to read /var/spool/mail/username 
file directly with emacs, which is a pain (partly because for some
reason, in text mode, Ctl-home does not take me to the top of the 
file). 

First question. If I'm logged in as user and user starts emacs and 
then rmail, why does rmail (when run from a command prompt in text 
mode) fail to seek its own incoming mail spool file? Is there any 
way to tell rmail what it's spool file is?

Second. I get hundreds of messages a day, and I'm already overwhelmed 
by the size of user's mail spool file. To what extent can it be edited 
directly (such as by cutting out undesirable messages)?

If I could communicate properly, I could start addressing my basic 
problems.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
