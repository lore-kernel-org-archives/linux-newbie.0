From: r4mz3z <r4mz3z@yahoo.es>
Subject: about hsync and vsync
Date: Thu, 26 Dec 2002 09:27:10 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212260927.20597.r4mz3z@yahoo.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi friends...
  I change my monitor, the old was a syncmaster-15" and the new is an AOC-17"; 
the new monitor is ok but the horizontal sync is 48.5Khz and vertical syn is 
59.9Hz and the right values have to be H-68.6 and V-84.9

  My card is a S3 Graphics ProsavageDDR and I'm using Red Hat 7.3

  I probe with Xconfigurator, but it doesn't change the horizontal and 
vertical sync... I try to edit /etc/X11/XF86Config and /etc/X11/XF86Config-4 
and replace de values of the sync with the correct values... but anything 
change.

  What can I do to use horizontal sync 68.6 and vertical sync 84.9?

  thanks
- -- 
  Linux User Registered #232544
my GnuPG-key at www.keyserver.net
    --- rm -rf /bin/laden ---
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+Cst3s4dF9gl05swRAqDeAKCTFsWkrik56ZuvsV/fNN5/On+MzACgl3PF
Swo4LllMzv9xHptBJJ+nM4g=
=1aXJ
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
