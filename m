From: Ray Olszewski <ray@comarre.com>
Subject: Re: fetchmail and smtp problem (was tuning iptables)
Date: Tue, 10 Dec 2002 08:34:22 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021210081625.020baec0@celine>
References: <200212101214.gBACEhP06806@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212101214.gBACEhP06806@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

OK. From what you posted ... specifically the "netstat -l" output ... we 
know that *something* is listening on port 25. Specifically:

         tcp        0      0 
127.0.0.1:smtp          *:*                     LISTEN

Next step is to find out what that something is. There are several ways to 
do this. The best is (as root) to run "netstat -lp". If the answer is 
xinetd, then either check its config files to find out what SMTP daemon is 
passes connections to, or run "telnet localhost 25" and see what responds 
(this after you have the localhost entry in /etc/hosts corrected; or you 
can do "telnet 127.0.0.1 25").

The stuff you post from xinetd's config files does not refer to port 25. So 
I'd *guess* that xinetd is not handling this port. The stuff from 
/etc/services is irrelevant; that file just matches port names to service 
names, and does not tell you if anything is actually listening on a port.

Beyond that ... Carl's advice looks pretty good, mostly. I don't care for 
his suggestion that you have your smtp daemon listen on 0.0.0.0 -- 
listening on 127.0.0.1 should be the right way to do it for an smtp daemon 
that ONLY redistributes fetchmail mail. And your info does NOT say that 
*sendmail* is listening on port 25, only that *something* is listening on 
that port (sendmail is not the only MTA used on Linux systems, though I 
gather it is the default choice for RH 8.0).

Finally ... as I said earlier, your problem may by in the configuration of 
your smtp daemon or your configuration of fetchmail. If Carl's suggestions 
don't result in fixing things, the next step is to report the details of 
that part, as well as the results of "telnet localhost 25" and any entries 
in your logs that appear relevant (don't be stingy ... tell us everything 
that the smtp daemon, xinted if it is involved, and fetchmail log).

At 07:14 AM 12/10/02 -0500, Haines Brown wrote:
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
> > ...
> > fetchmail: POP3< +OK 3778 octets
> > reading message 1 of 22 (3778 octets)
> > About to rewrite Return-Path: <linux-usb-users-admin@lists.sourceforge.net>
> > Rewritten version is Return-Path: 
> <linux-usb-users-admin@lists.sourceforge.net>
> > ...
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
>Proto Recv-Q Send-Q Local Address           Foreign 
>Address         State
>tcp        0      0 
>*:32768                 *:*                     LISTEN
>tcp        0      0 
>*:printer               *:*                     LISTEN
>tcp        0      0 
>*:sunrpc                *:*                     LISTEN
>tcp        0      0 
>*:x11                   *:*                     LISTEN
>tcp        0      0 
>127.0.0.1:8118          *:*                     LISTEN
>tcp        0      0 
>*:ssh                   *:*                     LISTEN
>tcp        0      0 
>127.0.0.1:smtp          *:*                     LISTEN
>udp        0      0 
>*:32768                 *:*
>udp        0      0 
>*:sunrpc                *:*
>Active UNIX domain sockets (only servers)
>Proto RefCnt Flags       Type       State         I-Node Path
>unix  2      [ ACC ]     STREAM     LISTENING     1847
>       /tmp/.iroha_unix/IROHA
>
>unix  2      [ ACC ]     STREAM     LISTENING     2325
>       /tmp/.esd/socket
>unix  2      [ ACC ]     STREAM     LISTENING     2108
>       /tmp/ssh-XX1O24lT/agent.1076
>unix  2      [ ACC ]     STREAM     LISTENING     2083
>       /tmp/.X11-unix/X0
>unix  2      [ ACC ]     STREAM     LISTENING     1916
>       /tmp/.font-unix/fs7100
>unix  2      [ ACC ]     STREAM     LISTENING     2232
>        /tmp/.ICE-unix/1076
>unix  2      [ ACC ]     STREAM     LISTENING     1571
>       /var/run/lprng
>unix  2      [ ACC ]     STREAM     LISTENING     2129
>        /tmp/orbit-brownh/linc-446-0-54d253d5c0c8d
>unix  2      [ ACC ]     STREAM     LISTENING     2137
>        /tmp/orbit-brownh/linc-434-0-1692b3b6d257d
>unix  2      [ ACC ]     STREAM     LISTENING     2243
>        /tmp/orbit-brownh/linc-448-0-141f7b126e97c
>unix  2      [ ACC ]     STREAM     LISTENING     2270
>       /tmp/orbit-brownh/linc-44d-0-24ce2e57dc8f6
>unix  2      [ ACC ]     STREAM     LISTENING     2305
>       /tmp/orbit-brownh/linc-44a-0-19bc27591b9fc
>unix  2      [ ACC ]     STREAM     LISTENING     2529
>       /tmp/orbit-brownh/linc-460-0-2d7ba098b88a
>unix  2      [ ACC ]     STREAM     LISTENING     2535
>       /tmp/orbit-brownh/linc-464-0-433b03def5c8
>unix  2      [ ACC ]     STREAM     LISTENING     2634
>       /tmp/orbit-brownh/linc-46b-0-59017d95c4a98
>unix  2      [ ACC ]     STREAM     LISTENING     2674
>       /tmp/orbit-brownh/linc-46e-0-3df7182d8cfc3
>unix  2      [ ACC ]     STREAM     LISTENING     2722
>       /tmp/orbit-brownh/linc-471-0-3df7182de5371
>unix  2      [ ACC ]     STREAM     LISTENING     2751
>       /tmp/orbit-brownh/linc-473-0-1022b4e538916
>unix  2      [ ACC ]     STREAM     LISTENING     2781
>       /tmp/orbit-brownh/linc-475-0-1022b4e575a77
>
>
>Then, I looked at /etc/services:
>
>         ...
>         smtp            25/tcp          mail
>         smtp            25/udp          mail
>
>I looked at /etc/xinetd.conf:
>
>         defaults
>         {
>                 instances               = 60
>                 log_type                = SYSLOG authpriv
>                 log_on_success          = HOST PID
>                 log_on_failure          = HOST
>                 cps                     = 25 30
>         }
>
>         includedir /etc/xinetd.d
>
>I looked in /etc/xinet.d/ at the servers and a services files:
>
>         service services
>         {
>                 type            = INTERNAL UNLISTED
>                 port            = 9098
>                 socket_type     = stream
>                 protocol        = tcp
>                 wait            = no
>                 disable         = yes
>                 only_from       = 127.0.0.1
>         } 
>
>
>         service servers
>         {
>                 type            = INTERNAL UNLISTED
>                 port            = 9099
>                 socket_type     = stream
>                 protocol        = tcp
>                 wait            = no
>                 disable         = yes
>                 only_from       = 127.0.0.1
>         }
>
>I looked at /etc/hosts. The hosts.allow and host.deny files are
>empty. However, the /etc/hosts file had a very strange error:
>
>         27.0.0.1  hartford-hwp.com  localhost.localdomain localhost
>
>However, changing the "27" to "127" did not fix anything.
>
>With that exception, I did not see anything amiss in these files.





--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
