From: Ray Olszewski <ray@comarre.com>
Subject: Re: Simple script to set permissions on folders daily - write
  script and cron it?
Date: Mon, 28 Mar 2005 13:35:31 -0800
Message-ID: <5.1.0.14.1.20050328131004.01f6a620@celine>
References: <570AB64E31B69C44BFC5A097E5F3EEA501745826@ausx2kmpc116.aus.amer.dell.com> <00f401c533d9$68f0ab90$580aa8c0@lanadmin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00f401c533d9$68f0ab90$580aa8c0@lanadmin>
References: <570AB64E31B69C44BFC5A097E5F3EEA501745826@ausx2kmpc116.aus.amer.dell.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:02 PM 3/28/2005 -0500, Eve Atley wrote:

>Hello! I want to write a very simple script that once daily (via cron) will
>set permissions to 777. This is to override any permissions set on files
>uploaded by other people, so everyone who already has access to the group
>will have rwx access to the file(s).
>
>So I'm double-checking if the best route is to create my script, then run it
>in cron as necessary. Or is there another way I should be handling it?
>
>Here's the script:
>
>#!/bin/sh
>#set_permissions: simple routine to set permissions of directories to be
>#accessible by everyone who already has specific group access.
>#
>#written by EMM - 3/28/2005
>       cd /home/shared/hr/
>         chmod 777 -R *
>         cd /home/shared/public
>         chmod 777 -R *
>#put an exception here for /scans and /cd however
>#????
>         cd /home/shared/accounting
>         chmod 777 -R *
>Fi
>
>Thanks much,
>Eve

Eve --

I'm not quite sure what you mean by "has access to the group" ... 
specifically, what the "group" is. In normal Unix/Linux terminology, user 
accounts (userids) are associated with one or more groups, through either 
the /etc/passwd entry (for an account's main group) or /etc/group (for 
secondary group affiliations).

If that's what you are talking about, you shouldn't be using mode 777 ... 
which gives read-write-execure access to *anyone* with an account on the 
system, not just to members of a specific group. You should be using 770, 
or maybe 775, depending on your specifics. Maybe you also need to change 
the group settings of the files to the common group, again depending on 
details you have but I don't.

I assume you've decided for some reason that handling this by changing 
umask entries (I think we discussed that in an earlier thread you started) 
is unsuitable for your site for some reason I've forgotten.

Aside from that, the script looks fine (unless the "Fi" line is meant to be 
part of it; that won't work) ... since I don't know what the comment about 
exceptions means, I can't suggest how to implement it. You could shorted 
nit by skipping the "cd" lines and just writing (for example) "chmod 777 -R 
/home/shared/hr/*".

The script will probably need to run as root (or perhaps some other account 
that has the ability to change permissions for all the files involved, if 
you have such an account). If Red Hat (you use RH, right?) has the ability 
to run scripts from  /etc/cron.daily, you can do it that way ... otherwise, 
use crontab as root to set t ups as a root cron job.

(BTW, if the details of modes are not already clear to you, "man chmod" 
will tell you a bit. "man 2 chmod" will (or should, if it is on your 
system) tell you a good bit more, albeit in harder to read form.)

Hope this helps.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
