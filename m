From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Do not delete files by mistake (was Re: retrieval)
Date: Mon, 3 Jan 2005 07:33:09 +0100
Message-ID: <200501030733.09945.pa3gcu@zeelandnet.nl>
References: <20041231045512.81128.qmail@web52901.mail.yahoo.com> <4b0d6e0d05010200016a7c3abe@mail.gmail.com> <20050102093240.1675fba2@sarge>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050102093240.1675fba2@sarge>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ulrich =?iso-8859-1?q?F=FCrst?= <heimwill@compuserve.de>
Cc: linux-newbie@vger.kernel.org

On Sunday 02 January 2005 09:32, Ulrich F=FCrst wrote:
> joy merwin monteiro <joy.merwin@gmail.com> wrote:
> > its really a trivial thing..... just alias rm to rm -i in your
> > .bashrc
>
> or you can put the following into your .bashrc
> alias rm=3D'mv --target-directory=3D/root/Desktop/Trash $1 '

I dont have the origanal message anymore to check, but i thought the th=
read=20
was about a "user" deleting files, if that is correct then the above wi=
ll not=20
work as a normal user cannot write to /root (s) directory.

It is a good idea to do the same for root and users tho'.
On another note many distro's dont have a trash directory, so the need =
to=20
create one arises as well.


> Ulrich
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
