From: Carl <carl@anexia.co.uk>
Subject: Re: fetchmail and smtp problem (was tuning iptables)
Date: Tue, 10 Dec 2002 13:38:06 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
References: <200212101214.gBACEhP06806@hartford-hwp.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212101214.gBACEhP06806@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>, , linux-newbie@vger.kernel.org

Haines,

I didn't catch the early posts on this topic but did see ray's about looking into sendmail
and fetchmail config so here comes my "sendmail 101" class.


The netstat command is showing sendmail (smtp) listening on 127.0.0.1 (this is local to the
machine, the loopback address.)
I normally change this in /etc/mail/sendmail.cf (i think thats the new location for RH8)
The default line that controls this is:

        O DaemonPortOptions=Port=smtp,Addr=127.0.0.1, Name=MTA

I change the Addr to 0.0.0.0 so it listens on all ip addresses, note that this will allow
incoming smtp traffic from anywhere which you may or may not want. You could use your firewall
to stop any unwanted incoming smtp traffic and /etc/mail/access.

/etc/mail/access is the spam control and you'll need to put any ip addresses, or subnets that
you want to allow access to relay (i.e. not local mail) mail through your machine. Say your machine
is acting as your internal mail server and all outgoing mail goes through this machine then you need
you internal lan specified in here as a RELAY type. As an example this allows relaying from my
internal net (192.168.1.0) and a specific IP 1.2.3.4 plus the localhost:

        # Check the /usr/share/doc/sendmail/README.cf file for a description
        # of the format of this file. (search for access_db in that file)
        # The /usr/share/doc/sendmail/README.cf is part of the sendmail-doc     
        # package.
        #
        # by default we allow relaying from localhost...
        localhost.localdomain   RELAY
        localhost               RELAY
        127.0.0.1               RELAY
        1.2.3.4                 RELAY
        192.168.1               RELAY

Once you changed the access file you need to rebuild the database file with "make access.db" or
"make all" which will do all the databases in the directory (see /etc/mail/Makefile for all the files it knows
about).

Another file to check is /etc/mail/local-host-names. This file holds all the domains your machine should
accept mail for. i.e. local domains and aliases. As an example for a machine called mailserver in
the mydomain.com domain:

        # local-host-names - include all aliases for your machine here.
        localhost
        localhost.localdomain
        mailserver
        mailserver.mydomain.com



After restarting sendmail you should be able to test sendmail manually by telnetting onto port 25
using the different ip addresses for your machine. If your Internal IP is 192.168.1.1 then do
"telnet 192.168.1.1 25" and see if you get a response from sendmail. If you do then send a mail.
The commands are in order:

HELO <somedomain.com>                   # where some domain can be anything as it will check you out
MAIL FROM: <someone@somedomain.com>     # who is sending the mail
RCPT TO: <localuser@localdomain.com>    # the local users email address
DATA                                            # command to let sendmail know that this is the main data coming
                                                # you end this with a fullstop on a line by itself
QUIT

If all goes well then try doing it with your other ip addresses. If they work then try doing it with
you domain names. If they all work then sendmail should be OK.

Fetchmail is a bit more specific to your ISPs mail server server and whether you are running in multi-drop mode
or single user. You'll need to let us know what you are trying to achieve with fetchmail.

At 07:14 10/12/2002 -0500, you wrote:
>On a RH8.0 installation I've been trying to get going since October,
>one problem has been that I can't receive e-mail. The first problem
>was a broken rp-pppoe. When that fixed, I could at least browse the
>web. Next I faced messed up rules for iptables, but I've removed the
>firewall. Since the problem persists, I'm led to fetchmail and smtp.
>
>The fetchmail log suggests that I've got ip at least, for it is able
>to download the number and size of messages waiting on the mail
>server. However, when it tries to download the first message, it can't
>do it. Apparently fetchmail can't open a connection to the smtp server
>on my machine. Here's snippet from fetchmail's log at the point it
>fails:
>
>> ...
>> fetchmail: POP3< +OK 3778 octets
>> reading message 1 of 22 (3778 octets)
>> About to rewrite Return-Path: <linux-usb-users-admin@lists.sourceforge.net>
>> Rewritten version is Return-Path: <linux-usb-users-admin@lists.sourceforge.net>
>> ...
>
>When at first fetchmail did not seem to write its log, which raised the
>question of permissions and UID. However, it seems to work
>now. Undoubtedly my error at some point.
>
>The question is, what sockets are listening? I don't know how to
>interpret the following, but it does not look all that different from
>my current machine, which is functional.
>
># netstat -l
>Active Internet connections (only servers)
>Proto Recv-Q Send-Q Local Address           Foreign Address         State      
>tcp        0      0 *:32768                 *:*                     LISTEN      
>tcp        0      0 *:printer               *:*                     LISTEN      
>tcp        0      0 *:sunrpc                *:*                     LISTEN      
>tcp        0      0 *:x11                   *:*                     LISTEN      
>tcp        0      0 127.0.0.1:8118          *:*                     LISTEN      
>tcp        0      0 *:ssh                   *:*                     LISTEN      
>tcp        0      0 127.0.0.1:smtp          *:*                     LISTEN      
>udp        0      0 *:32768                 *:*                                 
>udp        0      0 *:sunrpc                *:*                                 


--snip--

>I looked at /etc/hosts. The hosts.allow and host.deny files are
>empty. However, the /etc/hosts file had a very strange error:
>
>        27.0.0.1  hartford-hwp.com  localhost.localdomain localhost
>
>However, changing the "27" to "127" did not fix anything.
>
>With that exception, I did not see anything amiss in these files. 
>
>Haines Brown

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
