From: Don Petrowski <dpetrowski@ci.collierville.tn.us>
Subject: Re: Bash Scripts
Date: 10 Oct 2002 16:33:16 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1034285597.3495.8.camel@workwatcher>
References: <003301c2709c$7ac11b00$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature";
	boundary="=-rTe8fS1EKogNMAJboHjy"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003301c2709c$7ac11b00$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org


--=-rTe8fS1EKogNMAJboHjy
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Here is an example of a simple backup script I use to backup some files
and copy them to another machine to be put on tape.

echo $HOSTNAME > /var/log/backup.log
echo "Backup Started: " >> /var/log/backup.log
date >> /var/log/backup.log
tar --create --verbose --bzip2 --file /root/tuxtracker.tar.bz2 --files-from=
 /etc/backup-list --exclude-from /etc/backup-exclude >> /var/log/backup.log=
 2>&1
echo "Backup Stoped: " >> /var/log/backup.log
date >> /var/log/backup.log
echo "Transfer to Annex Started: " >> /var/log/backup.log
date >> /var/log/backup.log
if scp -q /root/tuxtracker.tar.bz2 tuxtracker@192.168.0.253:. >> /var/log/b=
ackup.log 2>&1
then
   echo "Transfer to Annex Finished Successfully: " >> /var/log/backup.log
   date >> /var/log/backup.log
else
   echo "Transfer to Annex was Interrupted: " >> /var/log/backup.log
   date >> /var/log/backup.log
fi

The first line creates a log file and all other lines append to it.

--=-rTe8fS1EKogNMAJboHjy
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iEYEABECAAYFAj2l8hwACgkQIUkeRg0nIiK9ugCfeW0dQNAvHmvqMn6IqYpxm+4y
aIUAn0Gf/zkC9KzomoD4NR0lAtGLN55/
=H0Jw
-----END PGP SIGNATURE-----

--=-rTe8fS1EKogNMAJboHjy--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
