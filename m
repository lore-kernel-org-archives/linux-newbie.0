From: Ray Olszewski <ray@comarre.com>
Subject: Re: accessing email via POP3
Date: Tue, 30 Nov 2004 14:12:31 -0800
Message-ID: <5.1.0.14.1.20041130140217.01f398b0@celine>
References: <33076594@newdoc.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <33076594@newdoc.Dartmouth.ORG>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:54 PM 11/30/2004 -0500, Karthik Vishwanath Adv03 wrote:
>Hello,
>
>I receive mail on this account that can be accessed via
>POP3. I used to use fetchmail as my mail-fetcher on an old
>machine to do this. I am trying to do the same from another
>machine that runs Redhat 9 (Linux 2.4.20-8) and seems like I
>cannot decipher how exactly to do this (perusing the
>fetchmail man page had me really confused). My .fetchmailrc
>looks like this:
>---------
>set syslog
>set daemon 10
>poll newdoc.dartmouth.org and options no dns keep
>user 'karthikv' there is 'karthik' here options
>
>---------
>
>$ fetchmail
>fetchmail:/home/karthik/.fetchmailrc:6: parse error at user
>
>How can I fix this? (BTW, I had a whole load of dependency
>issues on trying to install fetchmailconf...)


The error message says the problem is on line 6, but in the extract you 
provide, the "user" line is line 4. Have you left some part of the file out?

None of the examples for .fetchmailrc that I could locate (on a quick 
search) actually used the word "options", instead simply putting the 
desired options in those spots. So you might try deleting that word on the 
user line and the one before it.

Is it possible that a non-printing character slipped into the file (for 
example, a CRLF combo for newline instead of the Unix LF)?

All the examples I could find either used no quotes or (if there were 
embedded spaces) regular double quotes. So you might try either removing 
the single quotes or replacing them with double quotes.

Since this used to work on a different machine ... why aren't you simply 
moving the working .fetchmailrc from the old setup to the new one/

As to your BTW ... the Debian packaging system says that fetchmailconf 
depends only on fetchmail itself and the python and python-tk packages. Of 
course, that conceals some dependencies derived from those three, but it 
suggests that nothing really exotic is needed. Might you have run into some 
versioning issue (like a libc6 mismatch)? Hard to say much here, since I 
don't know Red Hat, not having used it for years.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
