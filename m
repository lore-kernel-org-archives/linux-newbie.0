From: lawson_whitney@juno.com
Subject: Re: user can't read mail (rmail) in text mode (fwd)
Date: Wed, 30 Oct 2002 19:44:45 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021030.203356.134682184.0.lawson_whitney@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com
Cc: linux-newbie@vger.kernel.org


---------- Forwarded message ----------

On Tue, 29 Oct 2002, root wrote:

> I'm in a real jam: can't run X server, and so trying to run rmail
> out of emacs in text mode from a command prompt. But I'm having
> trouble with rmail in this situation.

It shouldn't happen, but bash will read different startup files
depending on how it was started.  You might have the environment
variable MAIL set wrong in one.  A console shell reads ~/.bash_profile,
while an xterm reads ~/.bashrc.
>
> Fetchmail works (dumps new messages into /var/spool/mail/<username>).
> However, even though I'm logged in as user and run rmail under emacs,
> it says permission denied to access old stored mail (~/RMAIL), but
> nevertheless then proceeds to load it properly. Rmail then works
> normally with old messages. But when I try to access new messages from
> /var/spool/mail/usrname, I get permission denied for /var/spool/mail
> /root. I don't know why it tries to read root's mail, and chmod o+r
> username does not help.
>
> The only way I can read my mail is to read /var/spool/mail/username
> file directly with emacs, which is a pain (partly because for some
> reason, in text mode, Ctl-home does not take me to the top of the
> file).
>
> First question. If I'm logged in as user and user starts emacs and
> then rmail, why does rmail (when run from a command prompt in text
> mode) fail to seek its own incoming mail spool file? Is there any
> way to tell rmail what it's spool file is?

try 'source ~/.bashrc'

I am guessing, of course, but maybe rmail reads MAIL.
>
> Second. I get hundreds of messages a day, and I'm already overwhelmed
> by the size of user's mail spool file. To what extent can it be edited
> directly (such as by cutting out undesirable messages)?

There is nothing magic about a mail file.  It is just a file, and you
can read it with any mail user agent, or - for a long time, I read mail
with "less -ni" and comosed mail with joe.
>
> If I could communicate properly, I could start addressing my basic
> problems.
>
> Haines Brown

Lawson
---oops---




________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
