From: Ray Olszewski <ray@comarre.com>
Subject: Re: safety/permissions
Date: Tue, 18 Mar 2003 08:17:30 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030318075020.01e7ffc0@celine>
References: <5.1.0.14.1.20030317070035.01e74608@celine>
 <5.1.0.14.1.20030317070035.01e74608@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1047978623.3e76e27fc5df3@mail.rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Kurt Sys <Kurt.Sys@rug.ac.be>
Cc: linux-newbie@vger.kernel.org

Responses to an edited version of your message appear below. And you 
mistakenly (I assume) replied to me personally; I've added the linux-newbie 
list back in through a Cc: entry.

At 10:10 AM 3/18/2003 +0100, Kurt Sys wrote:
[...]
>Or are there any 'tests' I can run to see were the problem would be? (I found
>out that such an approach was always quite interesting to me, in that 
>sense that
>  I learned a lot from it how the system works.)

My prior response suggested a couple of things you might do to see why 
qmail is having trouble running the queue (which, from your fiest message, 
*appears* to be the location of the problem). I won't repeat them here, 
just suggest you re-read that reply.

The general lack of response here to your original inquiry suggests to me 
that few if any others run qmail (and I don't, using Debian's default MTA 
of exim instead). This will limit your ability to get help specific to that 
app.

>Oh yeah... I'm not really sure, but I think I can send messages not using
>webmail, but vm/emacs.

If you're not sure which app has the problem, how can we conceivably 
suggest solutions? Do your homework before posting, please.

>  Maybe it's the permissions of the /var/mail
>(/var/spool/mail)? They are set, for my mail-spool-file 'kurt':
>-rw-rw----   1 kurt mail         0 Feb 17 21:39

This is the standard mode for a user mail file so should not *itself* cause 
problems. (It might interact with some *other* change you made to cause a 
problem, though.) The directory that contains it (/var/mail) should be

drwxrwsr-x    2 root     mail         4096 Mar 18 07:47 mail

>So, of course, 0 bytes, and that's what is not changes when I run fetchmail
>(which 'serves' the mail from a mail-server so qmail-inject, as far is I
>understood it well).

This is incoherent. Please try more carefully. Quote complete, not 
fragmentary, results of commands, and use standard English grammar and 
syntax (from the rest of your message, we know you can).

This is also the first mention you have made of a problem with fetchmail, 
or incoming mail in general  ... your prior message discussed only failing 
to *send* mail with qmail, and then you indicated that qmail-inject did add 
the message to the queue ... so you might want to describe how you are 
using fetchmail and if your logs report any messages from fetchmail about 
problems getting mail.

>And euh... just to be sure: I shouldn't set e.g. all files in '/etc' to
>permission rwxr-x--- and change the group to users (so all users would be able
>to 'read' and 'execute' them, but not other people)? So I guess I should stick
>with the Debian Security-HOWTO?

"users" is just another group name in /etc/groups. It isn't a magic wand to 
solve problems. If you add all the userids for non-root accounts to that 
group, I don't know who is left as "other people" ... unless you mean the 
"system" accounts like daemon, mail, and operator ... but some of those 
system accounts also need to be able to run some apps, so you will still 
have problems with that interpretation of what you ask about.

Even as an experienced user, I stick with the Debian standards for 
permissions except in rare cases (and those I deal with on a case-by-case 
basis, never changing things wholesale, as you aparently did). I haven't 
read the Debian Security-HOWTO so cannot comment on its value.

>tnx,
>Kurt
[old stuff deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
