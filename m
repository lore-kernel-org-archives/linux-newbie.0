From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: uninstalling source package
Date: Wed, 1 Sep 2004 20:20:05 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0409011945230.24839@ppg_penguin.kenmoffat.uklinux.net>
References: <1094053775.8237.15.camel@p2.ald.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1094053775.8237.15.camel@p2.ald.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: Andrew <ald2@arrakis.es>
Cc: Linux newbie <linux-newbie@vger.kernel.org>

On Wed, 1 Sep 2004, Andrew wrote:

> Hi,
> Silly me went and installed a source package on the wrong machine. Th=
e
> package in question is Mail-SpamAssassin-2.64.tar.bz2 and the system =
is
> Mdk-10. When I do 'make uninstall' I get:
>
> Uninstall is unsafe and deprecated, the uninstallation was not
> performed.
> We will show what would have been done.
>
> no packlist file found:  at /usr/lib/perl5/5.8.3/ExtUtils/Install.pm
> line 332.
> make: *** [uninstall_from_sitedirs] Error 2
>
> So how do I uninstall it?
>
> TIA,
> Andrew
>
 Terse answer: use `rm'

 A slightly more detailed answer: identify what was installed by lookin=
g
for a known file from the package, then remove everything installed at
the same time.

 If you logged the output of 'make install', that will tell you what wa=
s
installed.  If you didn't, the first file installed was probably
/usr/lib/perl5/site_perl/{$PERL_VERSION}/Mail/SpamAssassin.pm - you can
use `ls -l' to see when you installed that, then remove anything
installed in the next few seconds (depending on your machine's speed).

 Pointers, based on my ancient install of 2.55:

/usr/lib/perl5/site_perl/{$PERL_VERSION}/Mail/SpamAssassin/
/usr/man/man1/ # {sa-learn,spamassassin,spamd,spamc}.1
/usr/man/man3/ # {Mail::SpamAssassin*}
/usr/bin/      # programs as listed for man1

 My 2.55 install also updated /usr/lib/.../SpamAssassin/.packlist ,
/usr/lib/.../perllocal.pod , /etc/mail/spamassassin , and
/usr/share/spamassassin.  I'd normally refrain from editing
perllocal.pod on the grounds that superfluous entries pointing to a
no-longer existent spamassassin are unlikely to hurt you.  The rest can
probably just be removed.

 Of course, if you're going to install it on a different box, that is a=
n
opportunity to log what it installs, and even to take a 'before' copy o=
f
perllocal.pod so you can see what gets changed (then, if the perl
versions are equal and other perl packages are similar, you could diff
before and after and reverse the diff against the machine where you are
uninstalling).

 But, at the end of the day I don't think it's a massive package and if
you haven't used it on the 'wrong' machine you'll only get back three o=
r
four MB of space so it probably isn't worth the bother.  If you did use
it there, clear out the ~/.spamassassin directory.

 Alternative answer: recover to the backups from before
you installed it ;-)

HTH

Ken
--=20
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
