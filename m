From: Ulrich =?ISO-8859-15?Q?F=FCrst?= <heimwill@compuserve.de>
Subject: Re: Do not delete files by mistake (was Re: retrieval)
Date: Mon, 3 Jan 2005 19:14:36 +0100
Message-ID: <20050103191436.63d4d8ab@sarge>
References: <20041231045512.81128.qmail@web52901.mail.yahoo.com>
	<4b0d6e0d05010200016a7c3abe@mail.gmail.com>
	<20050102093240.1675fba2@sarge>
	<200501030733.09945.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200501030733.09945.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Richard Adams <pa3gcu@zeelandnet.nl> wrote:=20
> On Sunday 02 January 2005 09:32, Ulrich F=FCrst wrote:
> > or you can put the following into your .bashrc
> > alias rm=3D'mv --target-directory=3D/root/Desktop/Trash $1 '
>=20
> I dont have the origanal message anymore to check, but i thought the
> thread was about a "user" deleting files, if that is correct then the
> above will not work as a normal user cannot write to /root (s)
> directory.
He didn't write about user or root. And I took the example out of root'=
s
bashrc by random. I've got the same in the bashrc of each user.
>=20
> It is a good idea to do the same for root and users tho'.
> On another note many distro's dont have a trash directory, so the nee=
d
> to create one arises as well.
But that's no problem. You can take $HOME/.trash or whatever. I also
created a script running as cron job to keep the size of the directory
(it's contents) below a defined size.

Ulrich

By the way: You could also tell KDE to use any directory as a trash
directory.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
