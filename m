From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: Re: preserving logins
Date: Thu, 30 Jun 2005 17:58:22 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0506301753320.4433-100000@treebeard.engin.umich.edu>
References: <20050630234000.24f2c38c@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050630234000.24f2c38c@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Since there are fair number of other users than myself on this machine,=
 I
want to keep the same /home partition, under either system. Is it possi=
ble
for me to use the same passwd/shadow files on either system, and expect
compatibility (if so, which are the files to be copied) or must I ask
every old user to re-create their passwds? (I can do that, if its the
easiesr route, which is a relative measure!)

Thanks,

-K=20

On Thu, 30 Jun 2005, Ulrich [ISO-8859-15] F=FCrst wrote:

> Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG> wrote:=20
>=20
> > I want to retain the same logins/uids/gids for all the
> > users from the Redhat installation.   How can I do this?
>=20
> I don't know RH so I don't know which uid/gid the users/groups have.
> For Debian the user IDs normaly begin with 1000.=20
>=20
> You could add new users in Debian with:=20
> # adduser --uid $UID_FROM_RH $USER
> without problems. You can take every UID that isn't in use by the sys=
tem
> already. (Didn't test it with uid lower than one hundred).
>=20
> There's another limit at 100. AFAIK below 100 the system groups and
> above groups from programs such as exim, spamassassin an so on.
> Sorry, can't find the exact rule for that at the moment.
>=20
>=20
> Ulrich
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>=20

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
