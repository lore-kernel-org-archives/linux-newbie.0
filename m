From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: NIS Server
Date: 31 Oct 2002 08:48:12 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036054092.1849.60.camel@zebra.vil.ite.mee.com>
References: <00cf01c2804a$30d13f30$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00cf01c2804a$30d13f30$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

NIS provides a central location at which you can store certain importan=
t
configuration files. Almost every NIS server is used to serve 'passwd'
among the machines on a network, and sometimes it's used for 'shadow'.
Other things you can share include 'group,' 'hosts' and 'netgroup.'

These files, when shared using NIS, do the exact same job that locally
stored versions in /etc do. A NIS server makes, for example, 'passwd'
available to any machine that is set up to connect to the NIS server
(the connecting machine is called a 'client'). You can then configure
any of the client machines to include the NIS version of the file in
their normal lookup process, and you can configure the order in which
they use them - that's what '/etc/nsswitch.conf' does.

It is also often useful to share the hosts file between machines, so
that they all have the same hosts information without you having to
synchronise the hosts files.

Because NIS shares files in this way, it is only usable for Unix and
Linux authentication; to authenticate windows, you most likely need to
use samba on the auth server. I vaguely remember hearing that you can
get samba to take it's auth info from the NIS, but I have never tried t=
o
do that.=20

Basic NIS 101:

Let me try and explain NIS with an example:

Let's say you have a NIS server called "penguin" and two client machine=
s
called "snowman" and "polarbear". You want to set it up so that you can
log in to any of the machines with the same password. You also want to
allow your friend Sarah to log in to snowman only.

What you could do is set up penguin's shared passwd file with an entry
for you ("paul:gjz*Z<G;kgwer:600:600:Paul, Systems mgr:/bin/bash") and
then run the NIS server software to make that available to clients.
Then, you create an entry in the passwd file on snowman for Sarah
("sarah:asF=A3$f:601:601:Sarah, Friend:/bin/bash") - Important to remem=
ber
that she has to have a different UID number to any user on the NIS.

=46inally, you tell the clients during authentication to check for NIS
users, then if there aren't any matches to check for local users. (The
line in nsswitch.conf might look like: "passwd:   nis, files")

Now, when you go to snowman, and log in, it sends a request to penguin
for the NIS copy of the passwd file, which it then checks to see if you=
r
username exists in the NIS. In your case it does, so it allows you to
log in as normal - even although you don't actually have an account on
snowman. Similarly, you can log into polarbear in the same way.

When Sarah logs in on snowman, it asks penguin for the passwd file, the=
n
checks for Sarah in that file. She's not there, so it then looks in
/etc/passwd to see if Sarah exists. It finds that she does and login
proceeds as normal.

If Sarah tries to log in on polarbear, it will refuse, because she
doesn't have an account on polarbear.


On balance, NIS isn't really worth it if you have less than 3 machines
with less than 5 users and not very tight security requirements. for th=
e
example I gave, NIS is overkill. However, if you then wanted to add mor=
e
machines to the network, with the minimum of set up, you only need to
connect them to NIS and they have access to all the shared information.


Paul.

On Wed, 2002-10-30 at 19:26, Paul Kraus wrote:
> I am reading the NIS how-to and am a little unclear as to what NIS is
> capable of. If I understand this right then I can store usernames and
> password on the NIS server. Then whenever someone try's to login to a
> machine (windows, UNIX, or Linux) it will poll the database for
> authentication? For instance I try and telnet to my Linux box when I =
log
> in rather then the Linux machine checking its local user account info=
 it
> would turn to the database? Sorry but this is kind of confusing me.
>=20
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com
--=20
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
