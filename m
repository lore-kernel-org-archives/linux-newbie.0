From: James Hatridge <James.Hatridge@epost.de>
Subject: Re: Slack9.0/Atapi-ZIP250???
Date: Sun, 29 Jun 2003 09:54:32 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306290954.38827.James.Hatridge@epost.de>
References: <20030628151407.A244@lnx2.w8mch.ampr.org>
Reply-To: James.Hatridge@epost.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030628151407.A244@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi all....
On Saturday 28 June 2003 21:14, Hal MacArgle wrote:
> Greetings: Several days; RTFM, FAQ's, HOW-TO's - no joy...
>
> This box w/Slack8.0/2.4.18; running AOK with an Atapi ZIP250
> internal, as /dev/sda4, as long as I insmod ide-scsi.o.. ( That file
> also installs sd_mod.o )..

You're doing this wrong. I have the Atapi Zip100 internal. It does not need 
the ide-scsi.co. Just set it up like this:

/dev/hdc4       /zip            auto    noauto,user 0 0

You only need the scsi stuff when using the external type Zip (which I also 
have). 

Hope this helps,


JIM



Jim Hatridge
Linux User #88484
- -- 
Our country was colonized by the religious, political, economic, and criminal
rejects of every country in the world. We have been carefully breeding insane, 
obsessive, fanatic lunatics with each other for over 400 years, resulting in 
the glorious strain of humanity known as "Americans". You have to expect 
some... peculiarities. 

Check out my stamp collection:
                                          Vielfeind -- Viel Ehr'
Antiamerikanische Propaganda in der Philatelie des 20. Jahrhunderts
          http:/www.fecundswamp.net/~hatridge/stamps/index.html

Read about new German stamps each quarter:
	 http:/www.fecundswamp.net/~hatridge/bulletin
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.7 (GNU/Linux)

iD8DBQE+/ps8v3Z9K7QSWt4RAlLKAJ4wfG1cibPhlPMUysTMu9YYEumpVQCg1s54
YexYqQ8M5l6nspA3Fq62bL4=
=nrxX
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
