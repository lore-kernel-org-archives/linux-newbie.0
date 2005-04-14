From: Eric Bambach <eric@cisu.net>
Subject: Re: remote admin
Date: Thu, 14 Apr 2005 16:15:09 -0500
Message-ID: <200504141615.09765.eric@cisu.net>
References: <Pine.LNX.4.21.0504141835380.1414-100000@hestia>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0504141835380.1414-100000@hestia>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux <linux-newbie@vger.kernel.org>
Cc: "J." <mailing-lists@xs4all.nl>

On Thursday 14 April 2005 12:14 pm, J. wrote:
> On Thu, 14 Apr 2005, Eric Bambach wrote:
> > Ssh is the de facto standard for remote administration but It lacks=
 the
> > ability to give you a GUI interface.
>
> What ? Search for SSH GUI and google returns +770,000 matches.. ! Oth=
er
> than that it can be used to encrypt just about any connection, like f=
or
> example X .

Have you *TRIED* X over SSH over slow connections? There are better=20
alternatives.

> > SSH Is quick and dirty
>
> Send a message to one of the SSH lists with that line in the subject.=
 ;-)

I'm afraid I dont know what you mean. As far as I've experienced, if yo=
u want=20
a remote shell you unpack, configure, install, ssh-keygen, sshd, then o=
n your=20
local box ssh myhost.com. Im sure it can go downhill from there for mor=
e=20
advanced needs, but for grabbing a shell SSH is pretty easy especially =
if it=20
is preinstalled in your distribution.

> > remote administration and comes standard (or should ) on all Unix
> > variants.  (openssh.com)
> >
> > TightVNC is a rather "unrobust" remote X server but it gets the job=
 done.
> > This will let you connect remotely and get an X GUI session open.
> >
> > If you can afford it, ...........
>
> <CUT>
> ...
> </CUT>
>
> Then take 10min's of your precious time and look at some of the +200
> projects that provide OPEN/FREE remote X administration.

Could you back up your claim? Can you provide a SINGLE application besi=
des X=20
over SSH instead of inventing a random semi-large number. Instead of=20
providing good advice you instead be-rate my advice and give an offtopi=
c OSS=20
fanboy rant.

> Waf, waf..
> The first computers were TIME-SHARING comp's . They had to be because=
 they
> were to expensive to buy. Don't tell me we have to buy software to wo=
rk
> remotely ??????? Back to the stone-age again.... Hmmzz.. Smell old Mi=
cro
> soft users.. waf, waf..
>
> Sorry people, but if small schools have to start buying stuff for the=
se
> relatively simple but fundamental tasks then w're definitely on the w=
rong
> track in the OSS galaxy.

Just because you have to pay for something doesn't mean its evil and yo=
u=20
should immediatly dismiss it. If it fits your needs for goodness sakes =
pay=20
the $50/computer and feed the writers who made the software.

The main concern isn't always price, especially if the price is low or=20
reasonable for the service provided. Why should this admin spend his ti=
me=20
hacking a random FREE/OSS solution when there is a reasonable paid=20
alternative that fits his needs better? Perhaps a free/oss solution wil=
l fit=20
his needs better, but to automatically choose free/oss over a paid solu=
tion=20
is just unwise fanaticism.

> > HTH!
> >
> > On Friday 15 April 2005 12:39 am, S. Barret Dolph wrote:
> > > I would like to be able to do some admin stuff on our school comp=
uters
> > > from home. What is best way to do this? Are programs such as "Web=
min"
> > > better than remote logins or just different.
>
> Ehm, webmin is also a remote login .. No difference inbetween the two=
, if
> you put it generaly like that. You always have to login to your syste=
m .
>
> Let me just say this:
>
> Webmin can provide a lot of things to you AND to someone who is NOT
> you. Make sure you only allow connections from your static IP to your
> schools static IP address by firewall and learn to use hosts.allow &
> hosts.deny. Pump all data thru secure shell, ssl or any other form of
> encryption. Keep an eye on the logfiles, pick decent passwords, restr=
ict
> acces and change the password a couple of times a year.
>
> Would be great of you also could setup a VPN, but is definitely not
> required.
>
> > > The administrative tasks are usually
> > > more school administration than computer administration but not a=
lways
> > > just that. For example, I am now working on getting chinese input=
 on
> > > our school computer. School administration work is usually just t=
hings
> > > like updating documents and making sure that the latest materials=
 are
> > > available to them.
>
> Again, would be great if we would know what distro <-> pc you use and=
 if
> you know how to handle a X configuration.  Because your already almos=
t
> there...
>
> > > Cordially,
> > > S. Barret Dolph
> > > Taipei Taiwan
>
> J.
>
> --
> Don't worry Ma'am. We're university students, - we know what we're do=
ing.
>

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
