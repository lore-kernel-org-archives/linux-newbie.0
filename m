From: Eric Bambach <eric@cisu.net>
Subject: Re: ssh as proxy?
Date: Wed, 16 Feb 2005 07:40:10 -0600
Message-ID: <200502160740.10682.eric@cisu.net>
References: <Pine.LNX.4.58.0502151644180.14569@localhost.localdomain> <200502151847.34392.eric@cisu.net> <Pine.LNX.4.58.0502152144080.14569@localhost.localdomain>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <Pine.LNX.4.58.0502152144080.14569@localhost.localdomain>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Tuesday 15 February 2005 09:47 pm, you wrote:
> On Tue, 15 Feb 2005, Eric Bambach wrote:
> > Yep, you're 95% of the way there.
> > Instead of the -L option try the -D option. This works to circumven=
t IRC
> > restrictions for me in school ;)
> > Im not too well read on ssh forwarding so I dont know the technical
> > difference between them, but it seems -D will get you by just fine =
at
> > least for web.
> >
> > Open console, type ssh -l username -D6667 mysshserver.com
> >
> > Then ssh will act as a socks4/socks5 proxy. Set up application
> > appropriately and it will go!
>
> Thanks for the feedback. I'm looking for ways to test this out, and i=
n
> order to do so I need to be able to close all ports on the test machi=
ne
> except 443. Is there some comand(s) I can issue that would do this? T=
his
> would be on a workstation, Debianish machine without any sort of fire=
wall
> running. Short of a command(s), what would be the simplest way to
> accomplish this port blocking for testing purposes? Is there a system=
-wide
> config I could edit?

Im not familiar with debian though usually you use iptables rules to cl=
ose off=20
your machine. Remember to do this locally! You will lose ssh connection=
s if=20
you play with  iptables remotely and without caution ;)

If you are blocking ALL outbound traffic see below. If you are blocking=
=20
traffic coming in, change output to input and dport to sport. Man iptab=
les=20
will give you lots of info and there are MANY guides out there to get y=
ou=20
started with firewalling. In either case, closing all but one port will=
=20
require only two rules.

#Something like this...havent written iptables rules in a while
#Set the default policy to REJECT all outgoing connections
iptables -P output REJECT
#Add a rule to allow outgoing port 443 traffic
iptables -A output -p ip --dport 443 -j ACCEPT

HTH!=20
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
