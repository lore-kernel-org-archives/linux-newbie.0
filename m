From: Michal Nazarewicz <mina86@tlen.pl>
Subject: Re: strange code in linux kernel
Date: Wed, 07 Oct 2009 20:44:44 +0200
Message-ID: <87pr8zm4bn.fsf@erwin.mina86.com>
References: <b115cb5f0910052034h5194a5t113a1bbcd9c878e3@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:from:to:cc:subject
         :in-reply-to:references:user-agent:x-url:x-pgp-fp:x-pgp:date
         :message-id:mime-version:content-type;
        bh=IllyzY9dS9hOIZTgh94DiVdz2jiwjuAG6jYE6vG0wvQ=;
        b=jO1S/VHT6YYR87m3GhB+n8txXPCaoSPmQTO1LGzNhWz8/eIlFcss18a+p18IcgHxOq
         GsSeBi/9H+0xz2VCkhaaZMXVhxvcXwCkutBwZ6n8bZdH+5JXDJYQ4rJOoj1QW/Z7HRJm
         VfsxNrL34XhSkD9WKXu+II8jl+w63/fBKVUnw=
In-Reply-To: <b115cb5f0910052034h5194a5t113a1bbcd9c878e3@mail.gmail.com>
	(Rajat Jain's message of "Tue, 6 Oct 2009 09:04:00 +0530")
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: Linux Newbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

--=-=-=
Content-Transfer-Encoding: quoted-printable

Rajat Jain <rajat.noida.india@gmail.com> writes:
> I found that there are some weird looking instances in kernel where a
> function has been DEFINED (as opposite to DECLARED) using and "extern"
> keyword. For e.g., the following code in arch/alpha/include/asm/io.h:
>
> extern inline void __iomem *generic_ioportmap(unsigned long a)
> {
>         return alpha_mv.mv_ioportmap(a);
> }
>
> Using a definition along with extern does not make any sense to me.
> Can some one please enlighten what is its use / purpose?

Note that at the same time an "inline" keyword has been used.  You might
want to refer to GCC's documentation in particular
<http://gcc.gnu.org/onlinedocs/gcc/Inline.html> for more information.
Google also pointed to this site
<http://www.greenend.org.uk/rjk/2003/03/inline.html> which also might
have some insight.

=2D-=20
Best regards,                                         _     _
 .o. | Liege of Serenly Enlightened Majesty of      o' \,=3D./ `o
 ..o | Computer Science,  Michal "mina86" Nazarewicz   (o o)
 ooo +--<mina86*tlen.pl>--<jid:mina86*jabber.org>--ooO--(_)--Ooo--

--=-=-=
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.12 (GNU/Linux)

iEYEARECAAYFAkrM4aEACgkQUyzLALfG3x5TrgCgkt5SK9ilhnxXHBhZa20JGI9S
h2oAoK8KeISQ4CQcyoejAdKMIZowRLph
=x86Q
-----END PGP SIGNATURE-----
--=-=-=--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
