From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: booting from USB drive (without BIOS support)
Date: Sun, 18 Jul 2004 20:14:23 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407182010390.30519@ppg_penguin.kenmoffat.uklinux.net>
References: <Pine.LNX.4.58.0407060808130.1337@debian-emach>
 <200407072234.44993.eric@cisu.net> <Pine.LNX.4.58.0407131124430.1337@debian-emach>
 <200407172313.54584.eric@cisu.net> <Pine.LNX.4.58.0407181009140.1363@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407181009140.1363@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Sun, 18 Jul 2004, James Miller wrote:

> On Sat, 17 Jul 2004, Eric Bambach wrote:
>
> > 2.2.26 eh? Ill take a look.
>
> Thanks.  Much appreciated.
>
> > The ones marked -prepatch? No, You shouldn't neccesarily apply thes=
e. They are
> > testing versions in between releases. If you are on a desktop or ca=
n stand a
> > few bugs, or need a new feature, then you can download the full sou=
rce, and
> > then apply the patch. However, generally you should wait for the fu=
ll
> > release. The numbering without the -preX at the end. eg. 2.2.26 not
> > 2.2.27-pre2.
>
> The ones I'm talking about - taking the case of the kernel I've menti=
oned
> as an example - are listed like this: patch-2.2.26.gz.  Is this the
> prepatch of which you speak, or something else?  They're right in the=
 same
> directory with the kernels, down toward the bottom.
>

 You use patch-2.x.n to go from linux-2.x.{n-1} to linux-2.x.n : e.g. i=
f
you are running linux-2.6.6, you apply patch-2.6.7 to upgrade to
linux-2.6.7.  The -pre and -rc patches are only for those who play with
development or test kernels.

Ken
--=20
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
