From: Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG (Karthik Vishwanath Adv03)
Subject: accessing email via POP3
Date: 30 Nov 2004 15:54:46 EST
Message-ID: <33076594@newdoc.Dartmouth.ORG>
Reply-To: karthikv@Alum.Dartmouth.ORG
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,

I receive mail on this account that can be accessed via
POP3. I used to use fetchmail as my mail-fetcher on an old
machine to do this. I am trying to do the same from another
machine that runs Redhat 9 (Linux 2.4.20-8) and seems like I
cannot decipher how exactly to do this (perusing the
fetchmail man page had me really confused). My .fetchmailrc
looks like this: 
---------
set syslog
set daemon 10
poll newdoc.dartmouth.org and options no dns keep
user 'karthikv' there is 'karthik' here options 

---------

$ fetchmail 
fetchmail:/home/karthik/.fetchmailrc:6: parse error at user

How can I fix this? (BTW, I had a whole load of dependency
issues on trying to install fetchmailconf...)


Thanks! 

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
