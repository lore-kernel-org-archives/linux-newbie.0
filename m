From: Marco Calistri <ik5bcu@tin.it>
Subject: Configuring BIND on dynamic IP??
Date: Thu, 02 Oct 2003 22:30:40 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031002203040.5274.qmail@linux.ik5bcu.ampr.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary="_=XFMail.1.5.4.Linux:20031002223037:1390=_";
 micalg=pgp-md5; protocol="application/pgp-signature"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This message is in MIME format
--_=XFMail.1.5.4.Linux:20031002223037:1390=_
Content-Type: text/plain; charset=iso-8859-15

Hello to all,my request here is directed to everyone with experience on network
administration and in particular to somebody with enough skill on BIND.

Foreword:

My network is very strange,or at least atipical and,briefly speaking,structured
as follows...

I have a registered hostname which is ik5bcu.cjb.net with CNAME
linux.ik5bcu.ampr.org:

[marco@linux marco]$ dig linux.ik5bcu.ampr.org

; <<>> DiG 9.2.2-P1 <<>> linux.ik5bcu.ampr.org
;; global options:  printcmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 61183
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 2, ADDITIONAL: 2

;; QUESTION SECTION:
;linux.ik5bcu.ampr.org.         IN      A

;; ANSWER SECTION:
linux.ik5bcu.ampr.org.  169916  IN      CNAME   ik5bcu.cjb.net.
ik5bcu.cjb.net.         60      IN      A       212.141.182.207

I use a dynamic DNS service offered by www.cjb.net so my IP address changes
every time I issue a new dial-up connection.

What I would like to know is if can I have any chances to configure BIND
so that it works as DNS for my network;I don't pretend to have a public and
performing DNS server,but a functional DNS expecially to serve the
requirements of my SMTP server:QMAIL.

I have installed the latest release:bind-9.2.2-23 along with caching-nameserver.

This last (caching),tested just yesterday,already gave me proof of very good
performer for its speed in comparison to my old /etc/hosts /etc/resolv.conf only
system.

Thanks for reading.

Regards,Marco


--_=XFMail.1.5.4.Linux:20031002223037:1390=_
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE/fIrts0ru0Kz1knARAjC5AKDIXa7d8M+m7Ynrs3w2135XYhdIAgCfcXha
v0fudWoaSnPvEDhxDkgbvCM=
=JilH
-----END PGP SIGNATURE-----

--_=XFMail.1.5.4.Linux:20031002223037:1390=_--
End of MIME message

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
