From: r4mz3z <r4mz3z@yahoo.es>
Subject: help me with awk
Date: Sat, 4 Jan 2003 22:00:51 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301042200.59282.r4mz3z@yahoo.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi friends...
   I have a problem, maybe it is foolish for you but I can't do it ;-P
   I wanna write a TAB after each field, something like:
'{print $1 "\t" $2 ...}' but the problem is that the number of fields change. 
If I use 'cut' it works, but the definition of delimiters are reduced.
   For example I want to print since field 7 to end of this command:
   ps -eo %cpu,longtname,pri,nice,user,args

  Thanks

- -- 
  Linux User Registered #232544
my GnuPG-key at www.keyserver.net
    --- rm -rf /bin/laden ---
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+F5/ps4dF9gl05swRAlWvAJ0fHsbakDrSowi8Jx4KOvBa0FT9VgCghlds
mr6KrPMf8RKFbydgKsSbQAM=
=royM
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
