From: Robin Doer <robin@robind.de>
Subject: Re: How can I login with ssh in bash shell ?
Date: Tue, 24 Jun 2003 19:59:03 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306241959.03361.robin@robind.de>
References: <20030625015518.A37B.WOLFGANG127JP@ybb.ne.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030625015518.A37B.WOLFGANG127JP@ybb.ne.jp>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: wolfgang127jp@ybb.ne.jp, linux-newbie@vger.kernel.org

Am Dienstag, 24. Juni 2003 17:05 schrieb wolfgang127jp@ybb.ne.jp:
> Hi gurus,
>
> I wanna login to my server with ssh command in bash shell.
> I found a script that login to a server with ftp command in bash shell.
>
> [...]
> ----------------------------------
>
> so I made a simple script(simple.sh) below.
> (abcdefg is the password of my_user)
> ----------------------------------
> #!/bin/sh
>
> ssh my_user@my_server <<END
> abcdefg
> echo "It works !!" > does_this_script_work.txt
> exit
> END
>
> exit 0
> ---------------------------------
>
> The result was....
> -----------------------------
> $ ./simple.sh
> Pseudo-terminal will not be allocated because stdin is not a terminal.
> my_user@my_server's password:
> -----------------------------
> Asking me the password ...
>
> Why doesn't it work ?

That will not work because, however, ssh doesn't read the passwort from stdin 
(like ftp).

But there's a way to use ssh without a password-request:

On your local machine create a key with "ssh-keygen -t rsa" (use empty 
passphrase). After that copy the public part of the key (located in 
~/.ssh/id_rsa.pub) to your remote machine under ~/.ssh/authorized_keys).
Now your script should work.

Hope it helps,
Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
