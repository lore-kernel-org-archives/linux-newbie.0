From: Eric Bambach <eric@cisu.net>
Subject: Re: ssh as proxy?
Date: Tue, 15 Feb 2005 18:47:34 -0600
Message-ID: <200502151847.34392.eric@cisu.net>
References: <Pine.LNX.4.58.0502151644180.14569@localhost.localdomain>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <Pine.LNX.4.58.0502151644180.14569@localhost.localdomain>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Tuesday 15 February 2005 05:02 pm, James Miller wrote:
> I've run across some material on the web recently that piqued my inte=
rest
> owing to a situation we'll be faced with while on vacation. The situa=
tion
> is as follows: we'll have access to a DSL connection for internet, bu=
t the
> service blocks all but http/https traffic. So, no ftp'ing, instant
> messaging or pop/imap checking will be possible. So the material I ra=
n
> across was interesting because it dealt with how to get around this s=
ort
> of port-blocking firewall. It described setting up a Linux machine on=
 the
> 'net somewhere that has sshd running, but sshd listens on port 443 (h=
ttps)
> rather than the traditional port 22. I've managed to get my Freesco r=
outer
> to do this, so that much is in place and I can at least ssh into my
> machine from behind the port-blocking firewall. Other things I read o=
n
> this seemed to indicate that ssh can act as something of a proxy so t=
hat
> other internet-bound traffic can travel over that ssh connection and =
be
> routed through the remote Linux box running sshd on port 443 to allow
> other programs that use other ports to work. I'm a little hazy on
> how/whether this works, so I'd like to ask for feedback on that here.
Yep. Just add this line in sshd_config file
Port 443
and killall -HUP sshd. It can listen on multiple ports so you dont have=
 to=20
lose it on port 22 just to listen on 443. Do both! :)=20
> I checked the ssh manpage and it does seem to indicate that ssh can b=
e set
> to listen for traffic to a certain port. So, the remote machine has s=
shd
> listening on port 443, and the local machine would log into it and be
> instructed to listen for traffic on a certain port locally. Let's say=
 the
> port for ssh to listen on on the local machine is 8080. As I get it, =
to
> start the sort of proxying I've mentioned, you would issue something =
like
> ssh -L 8080:host.uwannalog.into:443 -l uname . Once you're logged in =
like
> that, you set the apps you want to use on the local machine that use
> blocked ports so that they use the localhost as proxy. They would hav=
e
> localhost:8080 entered into their proxy options. Then, in theory, the=
y
> would be communicating with the wider 'net on which all ports might b=
e
> open over ssh via the remote Linux machine and its routing capabiliti=
es.
>
> This is so complex, it's almost worse than entering the twightlight z=
one.
> But I'd just like to check if I've gotten any of it right, and to ask=
 for
> corrections on whatever I've gotten wrong. Help will be appreciated.

Yep, you're 95% of the way there.=20
Instead of the -L option try the -D option. This works to circumvent IR=
C=20
restrictions for me in school ;)
Im not too well read on ssh forwarding so I dont know the technical dif=
ference=20
between them, but it seems -D will get you by just fine at least for we=
b.

Open console, type ssh -l username -D6667 mysshserver.com

Then ssh will act as a socks4/socks5 proxy. Set up application appropri=
ately=20
and it will go!

> Thanks, James
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-Decembe=
r 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
