From: "J." <mailing-lists@xs4all.nl>
Subject: Re: procmail
Date: Fri, 26 Jul 2002 15:09:09 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0207261436420.326-100000@hestia.rdrs.net>
References: <200207252055.g6PKt8G01345@g38.rdsbv.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207252055.g6PKt8G01345@g38.rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 
Cc: linux-newbie@vger.kernel.org

Hello,....

On Thu, 25 Jul 2002, Petre Bandac wrote:

> can procmail do the following: search in the body of an email for a string 
> and, if found, send a mail with the subject the very string searched for ?

Yes.. you have to build an recipe in your .procmailrc which does basicly
the following.
# 1) In your case check the body of the e-mail message.
:0 B     # Notify procmail that a new recipe starts with B parameter `BODY'
# 2) Now check if there is a string that you like in the body.
#    You can do this either by piping the body trhu an external program
#    like grep and testing for the return value, or you can do this by
#    staying in procmail itself which is basicly already an optimised egrep.
#    So in any case, you have to build a regex.
#    Procmail has the MATCH operator for this.
*\/.+ anything after the so called V will by stored in the variable MATCH.
#    You can find more information about this in the procmailex or
#    procmailrc manpage (see bottom).
#    To pipe the body trhu an external program your action line has to
#    start with a `|' symbol e.g (| gzip -9 c >> $HOME/gzippdemailbox)
#    If you want to extract the sender of the message:
#    FROM = `formail -zrt -xTo:` However calling formail on heavy duty
#    e-mail server can cause things to go slow because of the extra
#    procmail process that has to be created.
#    Here's another example that you probably find interesting and want to
#    look for in the manpages or web pages.
* ? test -s $confirmationlist
* ! ? echo "$FROM" | fgrep -i -f $confirmationlist

I hope this will get you somewhat further...
:0 Bi
* ()\<\/pattern to match the word\>
* MATCH ?? ()\/[a-z]+
| echo "$MATCH" | program

> if so - please point me to some howto's, the examples in the /usr/doc of my 
> slackware didn't help me much

Finding documentation:
The command `man -k procmail' should give you a list of the currently
available manpages about the subject procmail on your system. The ouput on
my system shows:

procmail (1)         - autonomous mail processor
procmailex (5)       - procmail rcfile examples
procmailrc (5)       - procmail rcfile
procmailsc (5)       - procmail weighted scoring technique

For procmail examples there also should be a directory with procmail examples. 
I don't know what GNU Linux distro you are running but usually on any distro 
that conforms to some general standards you can find them in the directory: 
/usr/doc/procmail/examples

The homepage of the procmail mailing-lists is at:
http://MailMan.RWTH-Aachen.DE/mailman/listinfo/procmail

You can find here also a wealth of procmail examples, FAQ's and links to
get you started.

> thanks in advance,
> 
> petre

g00d luck

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
