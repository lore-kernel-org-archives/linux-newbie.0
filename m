From: Eric Harrison <eharrison@mail.mesd.k12.or.us>
Subject: Re: Cron Problem for squidGuard - LTSP 4.0.2 (FC3)
Date: Thu, 21 Apr 2005 09:24:22 -0700
Message-ID: <4267D3B6.2020303@mail.mesd.k12.or.us>
References: <4267CF2D.20305@lcsd.k12.wa.us>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigDA8C8880E0EE06E611170F8E"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4267CF2D.20305@lcsd.k12.wa.us>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: dbentson@lcsd.k12.wa.us
Cc: linux-newbie <linux-newbie@vger.kernel.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigDA8C8880E0EE06E611170F8E
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dan Bentson-Royal wrote:
> I seem to be having trouble running a daily cron job. This seems to be
> the only job that has trouble - nothing else has the "BAD FILE MODE"
> comment.
>
> I googled the problem and found a suggestion that BAD FILE MODE probably
> means permissions trouble - but when I checked, it all looks fine. I'm
> looking for suggestions on how to proceed.
>
> Here is the error message from my cron log:
>      [root@localhost ~]# more /var/log/cron | grep squidGuard
>      Apr 18 17:11:31 localhost crond[2125]: (*system*) BAD FILE MODE
>         (/etc/cron.d/squidGuard)
>      Apr 19 11:11:11 localhost crond[2288]: (*system*) BAD FILE MODE
> (/etc/cron.d/squidGuard)
>      Apr 19 11:17:39 localhost crond[2371]: (*system*) BAD FILE MODE
> (/etc/cron.d/squidGuard)
>      Apr 19 13:29:07 localhost crond[2190]: (*system*) BAD FILE MODE
> (/etc/cron.d/squidGuard)
>      [root@localhost ~]# ls -l /etc/cron.daily/
>      total 92
>      -rwxr-xr-x  1 root root  418 Nov 19 12:21 00-makewhatis.cron
>      -rwxr-xr-x  1 root root  135 Aug 18  2004 00webalizer
>      -rwxr-xr-x  1 root root  276 Sep 28  2004 0anacron
>      -rw-r--r--  1 root root  797 Oct 19  2004 certwatch
>      -rwxr-xr-x  1 root root  180 Oct 19  2004 logrotate
>      -rwxr-xr-x  1 root root 2133 Nov 23 07:29 prelink
>      -rwxr-xr-x  1 root root  104 Nov  1 18:54 rpm
>      -rwxr-xr-x  1 root root   82 Oct 20  2004 slocate.cron
>      -rwxr-xr-x  1 root root   56 Apr 16 20:00 squidGuard
>      -rwxr-xr-x  1 root root  286 Aug 13  2004 tmpwatch
>      -rwxr-xr-x  1 root root  136 Feb 21 07:38 yum.cron
>      [root@localhost ~]#
> I am running LTSP 4.2.0 - FC3
>
> Any suggestions as to where the problem lies?
>


I recently spotted this problem as well.

You can either update or run this command to fix it:

	chmod a-x /etc/cron.d/squidGuard

-Eric

--------------enigDA8C8880E0EE06E611170F8E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.6 (GNU/Linux)
Comment: Using GnuPG with Fedora - http://enigmail.mozdev.org

iD8DBQFCZ9O7H9eQw/Gi3tURAto5AJ9tXb/WSOhPhbGS7eGGJTBI5xHhvgCfWzcL
ohOH5lyKnIJNpyQVopOyFB8=
=GXi9
-----END PGP SIGNATURE-----

--------------enigDA8C8880E0EE06E611170F8E--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
