From: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>
Subject: Re: [ilugc] Process Limit
Date: Wed, 19 Jun 2002 22:04:24 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206200120.g5K1Jtu06937@cs.annauniv.edu>
References: <Pine.LNX.4.21.0206191607440.15067-100000@lantana.iitm.ernet.in>
Reply-To: mssnlayam@cs.annauniv.edu
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0206191607440.15067-100000@lantana.iitm.ernet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Bharathi S <bharathi@lantana.tenet.res.in>
Cc: linux-newbie@vger.kernel.org

On Wednesday 19 June 2002 16:12, you wrote:
  > =A0 =A0How to limit the No .of process for a user ?
  > =A0 =A0Bcoz during testing some process may fork infinitely.

If root has to force the limit then limits.conf is the place

In the case mentioned (testing purposes)
$ ulimit -u <limit>
would set the limit for the shell.
limit can be lesser than the previous limit
but not higher. root is not required for ulimit
This is a butiltin command and works in bash
Should be available in other shells also.

Bye,
Suriya Narayanan M S
--=20
Guru Brahma Gurur Vishnu
Gurur Dhevo Maheshwaraha
Gurur Saakshaath Parabramha
Thasmai Shree Gurave Namaha

Public key at www.keyserver.net
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
