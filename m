From: ramzez <r4mz3z@yahoo.es>
Subject: export variables
Date: Fri, 24 Jan 2003 07:47:54 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301240748.03285.r4mz3z@yahoo.es>
Reply-To: r4mz3z@yahoo.es
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi friends...
  I have a trouble when try to export variables... I write a script like this:
- -------------- test.sh ------------------
export MY_VAR="SOME_VALUE"
echo "$MY_VAR"
- -------------- test.sh ------------------
  later: chmod +x test.sh then run this script: ./test.sh ... everything looks 
OK :)
  but when try to use this variable in my environment I can't do, if write 
"env" the nev variable MY_VAR doesn't appear ... I think that there are some 
protection about export variables, but how do I can export variables?

  I'm using red hat 7.3

thanks

- -- 
  Linux User Registered #232544
my GnuPG-key at www.keyserver.net
    --- rm -rf /bin/laden ---
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+MO+xs4dF9gl05swRApKYAJ0TmE/LvroRvx9BFMgYxZkHP9vNnACeKYkH
PbQvNbrsquCZ0dSrEJXxsC4=
=EQRI
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
