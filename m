From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <j.pouiller@sysmic.fr>
Subject: Re: size of /var/log/message file
Date: Wed, 14 Mar 2012 15:24:34 +0100
Message-ID: <17074087.8aquAEQ0Ka@sagittae>
References: <CAGZFCEFmr-37aafBcMMxHr68bkA-PY6qTHwjLoFN8RvpDNhqGw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CAGZFCEFmr-37aafBcMMxHr68bkA-PY6qTHwjLoFN8RvpDNhqGw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: ratheesh kannoth <ratheesh.ksz@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Wednesday 14 March 2012 19:34:48 ratheesh kannoth wrote:
> Hi,
>=20
>=20
> How to set the size of the file /var/log/message.
>=20
> I need to set to unlimited . How can i do that ?
Sizes of /var/log files are handled by logrotate command (which is call=
ed by=20
cron). You configure it by tunning /etc/logrotate.conf and /etc/logrota=
te.d.

See also manpage "logrotate" for more information.

--=20
J=E9r=F4me Pouiller
Expert Linux embarqu=E9
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
