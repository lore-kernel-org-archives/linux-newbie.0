From: "Yawar Amin" <yav_a@hotmail.com>
Subject: Re: a little help about vi or vim
Date: Tue, 3 Dec 2002 14:18:35 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <OE17AXY1TtRRa4xpOtx0000cdf6@hotmail.com>
References: <200211142008.34206.r4mz3z@yahoo.es> <OE22X0nmR1sjVfuscsE00000f73@hotmail.com> <200212011359.11350.r4mz3z@yahoo.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Okay, now that you've located the file "justify.vim," the rest should be
easy. Just open the file you want to justify, run the script by entering
":so /usr/share/vim/vim61/macros/justify.vim" in VIM, and then you have
several choices for running the actual justify command. To justify a single
line, the command you should use is ":[line]Justify" where [line] is the
line number of the line you want to justify. To justify the line you're on
currently, just leave out [line]. To justify the entire file, press "_j."
There are other options as well, which are well documented within the
"justify.vim" file itself. Just open that file in VIM (using the ":e"
command) and you'll see what I mean.

Yawar


----- Original Message -----
From: "r4mz3z" <r4mz3z@yahoo.es>
To: "Yawar Amin" <yav_a@hotmail.com>
Sent: Monday, 02 December, 2002 00:59
Subject: Re: a little help about vi or vim


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi...
  your help have been so useful for me... I can set textwidth in any value
depend of the document in which i'm working.
  But I can execute the macro justify, please help me with one little
sample... I located this macro at: "/usr/share/vim/vim61/macros/justify.vim"
  I hope don't hurt you, so very thanks.

[Pepo]

iD8DBQE96lv+s4dF9gl05swRAopaAJ40xEggop2QJfSbM3lYdFqrmiCRoACfcK2R
aDUPKRqAM5JLTeZ8sb9jTH8=
=Uujz
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
