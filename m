From: Ray Olszewski <ray@comarre.com>
Subject: Re[2]: searching a mail solution
Date: Mon, 20 May 2002 10:36:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020520102930.009efaf0@celine>
References: <2.2.32.20020519202650.03d79ce0@[192\.168\.1\.23]>
 <2.2.32.20020519202650.03d79ce0@[192.168.1.23]>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <14145732015.20020520104419@chello.pl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; 
To: Mateusz =?iso-8859-1?Q?=A3oskot?= <m.loskot@chello.pl>, linux-newbie@vger.kernel.org

  A couple fo quick answers below.

At 10:44 AM 5/20/02 +0200, Mateusz =A3oskot wrote:
>[...]
>I think that I understand, so you are saying that I can run POP3 on ot=
her=20
>that 110
>port ?
Yes, sure. But if you are running POP3 *ONLY* for access by the machine=
s on=20
the LAN, then your ISp will not care that you are running a "service". =
Nor=20
will it notice, if you do it right ... you will set up firewall (ipchai=
ns=20
or iptables) rules that allow connections to the POP3 server only from =
the=20
LAN, not the Internet. (Unless, of course, I have misunderstood your=20
intent, in which case your setup requirements may be quite a bit more=20
involved than I have assumed up to now.)

>[...]
>RO> 2. sendmail, exim, or another SMTP server -- as I say, it's been=20
>awhile, but
>RO> I *think* fetchmail uses the local SMTP server to distribute the m=
ail it
>RO> downloads to local accounts. In any case, you may want this to rel=
ay
>RO> outgoing mail to whatever outside SMTP forwarder(s) you use.
>
>Oh, it means that I need some SMTP server for dispatching mails to
>destination accounts ?
>I use for a small purpose, for example for sending logs or warnings, a
>very small SMTP server called sSMTP. I think that it could runs in
>place exim or sendmail.

As I said, I'm not sure if you need this or not. It depends on details =
of=20
your setup that you have not described.

>[...]
>I use Slackware, but it doesn't matter what kind of POP3 server comes
>with my distro.
>I would like to install the most secure ;)) (Am I paranoid ;)))
>You say that popa3d is a good choice ?


Well. it;s what we actually use, but only for on-LAN redistribution of=20
e-mail. We've neverf encountered a security problem with it, and I seem=
 to=20
recall that one announced vulnerability was patched quickly. You will n=
eed=20
to watch that ... as I recall, Slackware's system for alereting securit=
y=20
updatres isn't all that good (compared to, say, Debian or Red Hat), so =
you=20
may want to join and monitor a general-purpose security list like bugtr=
aq.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
