From: Ray Olszewski <ray@comarre.com>
Subject: Re: Can't get postfix forwarding mail
Date: Sat, 26 Apr 2003 10:12:43 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030426095207.01f0e118@celine>
References: <000301c30c13$4b94a2d0$4b01a8c0@t9397.tjem.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000301c30c13$4b94a2d0$4b01a8c0@t9397.tjem.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "'Linux-Newbie (Linux Newbie)'" <linux-newbie@vger.kernel.org>

Chris -- I think your problem is that postfix thinks your attempts to send 
mail involve using it as an Open Relay. I infer that from this line in your 
logs:

>Apr 26 10:42:42 server postfix/smtpd[17621]: reject: RCPT from 
>localhost.localdomain[127.0.0.1]: 554 <offline@shaw.ca>: Recipient address 
>rejected: Relay access denied; from=<offline@shaw.ca> to=<offline@shaw.ca>

This makes sense. The From: address is offline@shaw.ca . The To: address is 
offline@shaw.ca . Neither of these is in the domain pointclark.net, which 
is what the postfix server *thinks* its domain is (from what you wrote below).

Solutions? I see these possibilities.

1. Use something_or_other@offline.pointclark.net as your From: address. 
Then the mail will be coming from the domain that postfix thinks it is in. 
And if you have DynDNS resolving this externally (offline.pointclark.net is 
an odd choice for *external* resolution, but I just confirmed that it 
really does resolve to the IP address your posting came from, while 
pointclark.net itself points to a different IP address), it should work for 
getting the responses to you.

2. Tell postfix that is it allowed to relay for domain shaw.ca . (I don't 
know the postfix command for this, but restricted relaying is so standard 
an MTA feature ... it's needed for most MX backups, as an example ... that 
I imagine that postifix provides for it, as does sendmail and 
exim.)  Depending on just how many hosts shaw.ca covers, this may be quite 
risky, though.

3. Tell postfix that it is allowed to relay for all mail coming from the 
address block your LAN uses (or just from 127.0.0.1, if you don't have a LAN).

4. Set postfix so it forwards all outoing mail to your ISP's SMTP relay. 
Let it check for legal addresses. (Whether this will work or not depends 
entirely on how your ISP implements relay checking.)

5. Use the FQN something_or_other.shaw.ca on the host that runs the postfix 
server, instead of server.offline.pointclark.net .

Which of these is best for you depends on numerous details of your, and 
your ISP's, and perhaps "the folks that make [your] firewall distro"'s, 
setup that you have not described below.

At 10:45 AM 4/26/2003 -0600, Chris Rose wrote:
>
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>Yep, i'm tossing all of my damned mail woes off to this list :)
>
>Here's the setup:
>
>I'm running postfix as my local MTA.  Thanks to the good graces of the 
>folks that make my firewall distro, i have dynamic DNS that assigns my 
>firewall (and thus the outfacing, *real* IP) the domain name 
>offline.pointclark.net.  My mail server has $(hostname) = 
>server.offline.pointclark.net
>
>What i want is this:  Postfix currently (and actually functionally!) 
>relays incoming mail (pop3 server polled by fetchmail) to user accounts on 
>the computer.  Fine and dandy, as far as it goes.  What i **can't** do is 
>send mail outwards.  I've tried several combinations of $mydomain and 
>$relay_host in postfix's main.cf file, but i haven't gotten any working.
>
>I don't have an MX record set up, at least not that i know of.  This is 
>largely because i don't understand what the heck they are :)
>
>The relevant postfix "you messed up" log entries for attempting to send a 
>message *from* myself *to* myself (at my current address) follows:
>
>====begin maillog excerpt====
>
>Apr 26 10:42:42 server sendmail[17619]: h3QGggMU017619: 
>Authentication-Warning: server.offline.pointclark.net: apache set sender 
>to offline@shaw.ca using -f
>Apr 26 10:42:42 server sendmail[17619]: h3QGggMU017619: 
>from=offline@shaw.ca, size=487, class=0, nrcpts=1, 
>msgid=<2784.192.168.1.1.1051375362.squirrel@offline.pointclark.net>, 
>relay=apache@localhost
>Apr 26 10:42:42 server postfix/smtpd[17621]: connect from 
>localhost.localdomain[127.0.0.1]
>Apr 26 10:42:42 server postfix/smtpd[17621]: 8C8CB20E95: 
>client=localhost.localdomain[127.0.0.1]
>Apr 26 10:42:42 server postfix/smtpd[17621]: reject: RCPT from 
>localhost.localdomain[127.0.0.1]: 554 <offline@shaw.ca>: Recipient address 
>rejected: Relay access denied; from=<offline@shaw.ca> to=<offline@shaw.ca>
>Apr 26 10:42:52 server sendmail[17619]: h3QGggMU017619: 
>to=offline@shaw.ca, ctladdr=offline@shaw.ca (48/48), delay=00:00:10, 
>xdelay=00:00:10, mailer=relay, pri=30486, relay=[127.0.0.1] [127.0.0.1], 
>dsn=5.0.0, stat=Service unavailable
>Apr 26 10:42:52 server sendmail[17619]: h3QGggMU017619: h3QGggMV017619: 
>DSN: Service unavailable
>Apr 26 10:42:52 server postfix/smtpd[17621]: 9708C20E95: 
>client=localhost.localdomain[127.0.0.1]
>Apr 26 10:42:52 server postfix/smtpd[17621]: reject: RCPT from 
>localhost.localdomain[127.0.0.1]: 554 <offline@shaw.ca>: Recipient address 
>rejected: Relay access denied; from=<> to=<offline@shaw.ca>
>Apr 26 10:43:02 server sendmail[17619]: h3QGggMV017619: 
>to=offline@shaw.ca, delay=00:00:10, xdelay=00:00:10, mailer=relay, 
>pri=31511, relay=[127.0.0.1] [127.0.0.1], dsn=5.0.0, stat=Service unavailable
>Apr 26 10:43:02 server sendmail[17619]: h3QGggMV017619: h3QGggMW017619: 
>return to sender: Service unavailable
>Apr 26 10:43:02 server postfix/smtpd[17621]: 9E77320E95: 
>client=localhost.localdomain[127.0.0.1]
>Apr 26 10:43:02 server postfix/cleanup[17622]: 9E77320E95: 
>message-id=<200304261643.h3QGggMW017619@server.offline.pointclark.net>
>Apr 26 10:43:02 server postfix/nqmgr[17568]: 9E77320E95: from=<>, 
>size=4795, nrcpt=1 (queue active)
>Apr 26 10:43:02 server sendmail[17619]: h3QGggMW017619: to=postmaster, 
>delay=00:00:00, xdelay=00:00:00, mailer=relay, pri=32535, 
>relay=[127.0.0.1] [127.0.0.1], dsn=2.0.0, stat=Sent (Ok: queued as 9E77320E95)
>Apr 26 10:43:02 server postfix/cleanup[17622]: AF49820F0C: 
>message-id=<200304261643.h3QGggMW017619@server.offline.pointclark.net>
>Apr 26 10:43:02 server postfix/nqmgr[17568]: AF49820F0C: from=<>, 
>size=4960, nrcpt=1 (queue active)
>Apr 26 10:43:02 server postfix/local[17624]: 9E77320E95: 
>to=<postmaster@server.offline.pointclark.net>, relay=local, delay=0, 
>status=sent (forwarded as AF49820F0C)
>Apr 26 10:43:02 server postfix/smtpd[17621]: disconnect from 
>localhost.localdomain[127.0.0.1]
>Apr 26 10:43:02 server imapd: Connection, ip=[::ffff:127.0.0.1]
>Apr 26 10:43:02 server imapd: LOGIN, user=offline, ip=[::ffff:127.0.0.1]
>Apr 26 10:43:02 server imapd: LOGOUT, user=offline, ip=[::ffff:127.0.0.1], 
>headers=0, body=0
>Apr 26 10:43:03 server imapd: Connection, ip=[::ffff:127.0.0.1]
>Apr 26 10:43:03 server imapd: LOGIN, user=offline, ip=[::ffff:127.0.0.1]
>Apr 26 10:43:03 server imapd: LOGOUT, user=offline, ip=[::ffff:127.0.0.1], 
>headers=202, body=0
>Apr 26 10:43:03 server postfix/smtp[17625]: fatal: parameter 
>inet_interfaces: no local interface found for 24.86.164.179
>Apr 26 10:43:04 server postfix/nqmgr[17568]: warning: premature 
>end-of-input from private/smtp socket while reading input attribute name
>Apr 26 10:43:04 server postfix/nqmgr[17568]: warning: private/smtp socket: 
>malformed response
>Apr 26 10:43:04 server postfix/nqmgr[17568]: warning: transport smtp 
>failure -- see a previous warning/fatal/panic logfile record for the 
>problem description
>Apr 26 10:43:04 server postfix/master[17564]: warning: process 
>/usr/libexec/postfix/smtp pid 17625 exit status 1
>Apr 26 10:43:04 server postfix/master[17564]: warning: 
>/usr/libexec/postfix/smtp: bad command startup -- throttling
>
>====end maillog excerpt====
>
>Is there any hope for me? :)





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
