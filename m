From: James Miller <jamtat@mailsnare.net>
Subject: ssh as proxy?
Date: Tue, 15 Feb 2005 17:02:07 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0502151644180.14569@localhost.localdomain>
Mime-Version: 1.0
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've run across some material on the web recently that piqued my interest
owing to a situation we'll be faced with while on vacation. The situation
is as follows: we'll have access to a DSL connection for internet, but the
service blocks all but http/https traffic. So, no ftp'ing, instant
messaging or pop/imap checking will be possible. So the material I ran
across was interesting because it dealt with how to get around this sort
of port-blocking firewall. It described setting up a Linux machine on the
'net somewhere that has sshd running, but sshd listens on port 443 (https)
rather than the traditional port 22. I've managed to get my Freesco router
to do this, so that much is in place and I can at least ssh into my
machine from behind the port-blocking firewall. Other things I read on
this seemed to indicate that ssh can act as something of a proxy so that
other internet-bound traffic can travel over that ssh connection and be
routed through the remote Linux box running sshd on port 443 to allow
other programs that use other ports to work. I'm a little hazy on
how/whether this works, so I'd like to ask for feedback on that here.

I checked the ssh manpage and it does seem to indicate that ssh can be set
to listen for traffic to a certain port. So, the remote machine has sshd
listening on port 443, and the local machine would log into it and be
instructed to listen for traffic on a certain port locally. Let's say the
port for ssh to listen on on the local machine is 8080. As I get it, to
start the sort of proxying I've mentioned, you would issue something like
ssh -L 8080:host.uwannalog.into:443 -l uname . Once you're logged in like
that, you set the apps you want to use on the local machine that use
blocked ports so that they use the localhost as proxy. They would have
localhost:8080 entered into their proxy options. Then, in theory, they
would be communicating with the wider 'net on which all ports might be
open over ssh via the remote Linux machine and its routing capabilities.

This is so complex, it's almost worse than entering the twightlight zone.
But I'd just like to check if I've gotten any of it right, and to ask for
corrections on whatever I've gotten wrong. Help will be appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
