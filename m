From: Eric Bambach <eric@cisu.net>
Subject: Re: Some users locked out of ssh and sftp?
Date: Tue, 1 Mar 2005 19:26:04 -0600
Message-ID: <200503011926.04903.eric@cisu.net>
References: <5.1.0.14.1.20050228220147.01f4dec8@celine> <5.1.0.14.1.20050301083357.01f4e340@celine>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <5.1.0.14.1.20050301083357.01f4e340@celine>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: seance83@yahoo.com
Cc: linux-newbie@vger.kernel.org

On Tuesday 01 March 2005 10:59 am, Ray Olszewski wrote:
> At 08:22 AM 3/1/2005 -0800, Eve Emshoff wrote:
> >This isn't making sense to me. I have users logging in
> >via SSH to a redhat linux box using their network
> >username/password. I'm able to do it as are most
> >others, either locally or remotely. ie:
> >
> >ssh -l eve <ipaddress>
> >or
> >sftp eve@<ipaddress>
> >
> >Thus far, I've run across 1 user who can't sftp OR
> >SSH. He's entirely locked out, despite having the
> >correct username and password. He appears to be set up
> >the same as well the others.
> >
> >Is there a file or some such I should edit and/or
> >check to ensure he can get access? Anything to point
> >me to in terms of what I can check in that he may
> >*not* be set up the same as everyone else?
>
> Ok. First thing to do is get his password and make sure that *you* ca=
n ssh
> in using the same userid and password he is using. If you can, then y=
ou are
> either seeing some sort of user error or a problem associated with th=
e site
> he is trying to connect *from*. (It's hard to come up with an example=
 of
> the second, but I can imagine that an ISP might block traffic to port=
 22
> for some reason that does not occur to me ... although if "entirely l=
ocked
> out" means he is prompted for a password, then rejected, that example=
 does
> not apply.)
>
> (BTW, what do you mean by "network" username/password? Does this host=
 use
> something other than the standard files /etc/passwd and /etc/shadow f=
or
> userid and password? For example, is NIS involved somehow, or some LD=
AP
> gimmickry? If so, and if you decide to post a followup, please clarif=
y this
> part.)
>
> (Also, you say "most others" can log in. Is this just caution in repo=
rting,
> or do you have other reports of unexplained failures?)
>
> If you can log in and you want to explore the possibility that the pr=
oblem
> is NOT user error, then to get help here you'll need to say more abou=
t the
> failure he is seeing.
>
> Once you've verified for yourself that the userid/password combo does=
 not
> work for you either, first check that this userid/password combo can =
do a
> normal shell login. If it can't, try (as root) chainging the password=
, to
> see if the problem is nothing more than the user having misremembered=
 his
> password. Also check his entry in /etc/passwd to make sure a valid sh=
ell
> (/bin/bash, usually) is provided ... it has to be something listed in
> /etc/shells .
>
> If the ssh problem remains after a password change (but the local log=
in
> problem is fixed, or if local logins always worked so you skipped thi=
s
> step), the check the sshd config file (not sure where Red Hat keeps t=
his,
> but maybe /etc/ssh/sshd_config ... that's where Debian puts it, anywa=
y) and
> see if something there is interfering. For example, the entry
>
>          PermitRootLogin no
>
> blocks root logins via ssh. More generally, the entries
>
>          AllowUsers
>
> and
>
>          DenyUsers
>
> followed by a pattern or list can restrict which userids are allowed =
or
> forbidden to ssh in.
>
> These are the easy examples. There is too much more to say ... read t=
he man
> page for sshd_config if you want a general intro ... without a more
> specific indication of what the problem actually looks like (more tha=
n
> "entirely locked out", I mean), which could narrow the possibilities.
>
> I've focused on ssh here because it is a bit easier to troubleshoot. =
But
> all the same considerations should apply to sftp as well ... that is,=
 once
> you get ssh logins working, sftp should also work ... they use the sa=
me
> authentication mechanism and tunneling.

Besides all of Ray's perfectly good suggestions I have something to add=
=2E

Check the permissions on his/her ~/.ssh directory. If the permissions s=
omehow=20
became world write/readable ssh will refuse to log that person in. Chec=
k the=20
log files too! If ssh is logging its failures it can tell you a whole l=
ot!

If you can, try running ssh on an alternate port in debugging mode and =
logging=20
in as that user. That way you can see where/why ssh is failing.

However, try to log the user in locally first because if its a local pr=
oblem=20
then fiddling with SSH wont do anything. Also if its a local problem an=
d you=20
fix it then SSH should work itself out.

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
