From: Eric Bambach <eric@cisu.net>
Subject: Re: understanding netstat -ap
Date: Mon, 19 Sep 2005 15:59:20 -0500
Message-ID: <200509191559.20274.eric@cisu.net>
References: <Pine.LNX.4.44.0509180129530.10191-100000@treebeard.engin.umich.edu> <200509181455.38918.eric@cisu.net> <efc7f7d0050918131057cb52d8@mail.gmail.com>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <efc7f7d0050918131057cb52d8@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: yawar.amin@gmail.com
Cc: linux-newbie@vger.kernel.org

Yawar,

 Your concern is very valid. However in our case our range of people we=
 want=20
to use SSH is very small so the probability of them getting caught in t=
he=20
crossfire is pretty small.

 In regards to auto-blacklisting, I suggest you look at the module. It =
will=20
auto-blacklist after a predefined limit of tries, default is 10 failed=20
attempts per hour which I think is very generous. The default is then t=
o=20
blacklist them for 2 days. If you want to be more swift you could confi=
gure=20
it to be 5 failures in 10 minutes and blacklist for 2 hours which I don=
t=20
think would be too intrusive but would still thwart most attempts.
=20
 Furthermore, who cares if they are zombies. An attack is an attack. If=
 the=20
attacker can only complete 5 guesses per 2 days he would need hundreds =
of=20
thousands (if not millions) of zombies testing you at the same time to=20
sucessfully brute force a password.

 Also you may not realize but this particular method REALLY messes with=
 an=20
attackers attempts in that he does not realize he is blacklisted. What =
he=20
will end up with is huge tracts of untested space in his dictionary whe=
reas=20
he believes he has tested all that space.

 There is also a tool to unblock a user/host easily. Combine this with =
a php=20
or perl frontend a user can easily unblock himself if he/she has be=20
wrongfully blocked. The pontential benifit far outweighs an occasional=20
accidental blocking.

 I think the benifits far outweigh the costs. I could see if you were a=
 shell=20
server with hundreds to thousands of users where the accidental blockin=
g=20
might cause a problem. But for any other type of server there really is=
 no=20
reason NOT to use pam_abl. Most servers are limited to being ssh'ed by =
a=20
small set of users/administrators anyways from limited IP spaces.


On Sunday 18 September 2005 03:10 pm, Yawar Amin wrote:
> On 9/19/05, Eric Bambach <eric@cisu.net> wrote:
> [...]
>
> >  Although it wont stop the connections, what pam_abl does is
> > auto-blacklist the host after so many failed attempts. They can sti=
ll try
> > to log in and it looks like they're authenticating but even if they=
 have
> > a correct username/password pair they will be denied! Its quite a n=
ifty
> > module.
>
> [...]
>
> We're facing this problem also. We've considered auto-blacklisting
> hosts like you say, but what if these hosts are actually simply
> zombies taken over for launching brute force attacks, or external IP
> addresses for a whole range of NAT'd hosts, any one of which might be
> the attacker, and the rest innocent bystanders?
>
> You could remove them from the blacklist after a while, perhaps. Or
> maybe not. The problem remains: how to blacklist them very swiftly
> when it's decided they're trying a brute force, and then whitelist
> them again after a while so that nobody else suffers because of the
> bad guys.

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
