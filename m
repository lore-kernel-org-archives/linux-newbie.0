From: Ray Olszewski <ray@comarre.com>
Subject: Re: telnet,rsh,rexec
Date: Sun, 01 Feb 2004 08:57:09 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040201084153.01f1e950@celine>
References: <20040201163539.67005.qmail@web60607.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040201163539.67005.qmail@web60607.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:35 AM 2/1/2004 -0800, Ravi Kumar Munnangi wrote:
>hi users,
>
>  My system IP is 172.31.19.22.
>  When I try to telnet to my system, I get
>
>    Trying 172.31.19.22...
>Connected to localhost.localdomain (172.31.19.22).
>Escape character is '^]'.
>Connection closed by foreign host.
>
>
>Can any one guess the reason.

Guess #1: Nothing is listening on port 23 (neither telnetd itself nor 
inetd). Check with "netstat -l" (there are other ways too).

Guess #2: An entry in /etc/hosts.deny blocks access.

Guess #3: inetd is listening on the port, but one of the apps it needs to 
hand off control to (maybe tcpwrappers; maybe telnetd; depends on 
unreported details of your setup) is either not present or has incorrect 
permissions.

Guess #4: There is a problem of some sort with reverse lookup of the source 
address. You've offered too little info for anything more than the general 
comment, but you might check your logs to see how (even if) the 
unsuccessful telnet attempt is being logged. (What command are you entering 
to try to connect? If I "telnet localhost" on any of my systems, it tries 
to use the lo interface (127.0.0.1), not the eth0 interface.) How long is 
the delay between the "Escape character" message and the "Connection 
closed" message? How does the system resolve names and addresses?

Guess #5: Some sort of firewall is in place that blocks access. At this 
point, we're getting into stuff that is VERY distro specific (like your 
vague question, below, about "default security settings" and how to change 
them). If you need help at this level, please provide the usual details 
about your system ...

         what distro and version
         what kernel ("uname -a"), and is it stock or custom-compiled
         output of "iptables -nvL"

... and, as I implied above, the *exact* command you enter to telnet and 
where you enter it from. Specifically, are you connecting to the system 
from itself, from another host on the LAN, or, somehow, from the Internet? 
(The last seems improbable, since a private IP address is involved, but I'm 
trying to cover all bases here.)

BTW, your Subject: line mentions rsh and rexec, but the body of your 
message asks nothing about them. Are you having similar connection problems 
with those apps?

>Can the reason be something related to security.
>How can I change the default security settings?
>ON my system the security level is always showing
>  as high and tried to change it to medium and
>customise
>But it is always at high level. How can I change this?
>
>Thanks in advance,
>ravikumar





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
