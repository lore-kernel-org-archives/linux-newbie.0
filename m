From: "Yawar Amin" <yav_a@hotmail.com>
Subject: Re: a little help about vi or vim
Date: Sun, 17 Nov 2002 15:38:01 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <OE22X0nmR1sjVfuscsE00000f73@hotmail.com>
References: <200211142008.34206.r4mz3z@yahoo.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Alternately to putting the command in your startup file, you may want to set
the "textwidth" option manually for a file. Depends on how often you work
with 45-column text files. If you're editing an existing file and you set
that option, VIM won't automatically rearrange the characters so that there
are only 45 per line. You'll probably want to write a script that will do
that for you.

To justify text, you need to know a little VIM scripting (namely, how to use
functions). There's a VIM script file called "justify.vim" (or something
similar) in the "macros" folder somewhere in the VIM installation. If you
run
that script, it'll set up the "Justify()" function and some useful
user-defined commands like ":Justify" and "_j" that you can use. I've used
this function, and I think it only works if you have the "lbr" option
switched off (I'm talking about VIM 6.0 or above).

Yawar


----- Original Message -----
From: "r4mz3z" <r4mz3z@yahoo.es>
To: <linux-newbie@vger.kernel.org>
Sent: Friday, 15 November, 2002 07:08
Subject: a little help about vi or vim


> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Hi friends...
>   How do I configure my vim-editor to write just 45 characteres (or other
> measure) for each line? and How do I justify the text?, because I've see a
> lot of txt files that are justify...
>
> thanks.
>
> - --
>   Linux User Registered #232544
> my GnuPG-key at www.keyserver.net
>     --- rm -rf /bin/laden ---
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.2.1 (GNU/Linux)
>
> iD8DBQE91EkRs4dF9gl05swRAuJWAJ9ybms2rKsIgUHfrkO/D6MZ83bATACfXLBr
> YK+gcO4pvaZYgxWLLC5aklM=
> =WcDN
> -----END PGP SIGNATURE-----
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
