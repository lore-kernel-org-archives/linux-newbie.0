From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: How can I login with ssh in bash shell ?
Date: Thu, 26 Jun 2003 10:02:38 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EFB272E.6060007@bcgreen.com>
References: <20030625015518.A37B.WOLFGANG127JP@ybb.ne.jp> <200306241959.03361.robin@robind.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306241959.03361.robin@robind.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Robin Doer <robin@robind.de>
Cc: wolfgang127jp@ybb.ne.jp, linux-newbie@vger.kernel.org


the public key should go into authorized_keys2

alsoe: I'd suggest using:
	ssh-keygen -f nopw.key -t rsa

you will end up with the private key in nopw.key
and the public key in nopw.key.pub

You can then do: ssh -i nopw.key remote_host

The main difference here is that you don't end up with your
passwordless key being your default (probably a bad idea).

BTW: you can setup ssh so that the recipient machine, when
it accepts the passwordless key can only execute one specific
command. (makes it harder for a hacker to cause you damage
if they get hold of the key).

Robin Doer wrote:

 >>----------------------------------
 >>
 >>so I made a simple script(simple.sh) below.
 >>(abcdefg is the password of my_user)
 >>----------------------------------
 >>#!/bin/sh
 >>
 >>ssh my_user@my_server <<END
 >>abcdefg
 >>echo "It works !!" > does_this_script_work.txt
 >>exit
 >>END
 >>
 >>exit 0
 >>---------------------------------
 >>
 >>The result was....
 >>-----------------------------
 >>$ ./simple.sh
 >>Pseudo-terminal will not be allocated because stdin is not a terminal.
 >>my_user@my_server's password:
 >>-----------------------------
 >>Asking me the password ...
 >>
 >>Why doesn't it work ?
 >
 >
 > That will not work because, however, ssh doesn't read the passwort from stdin
 > (like ftp).
 >
 > But there's a way to use ssh without a password-request:
 >
 > On your local machine create a key with "ssh-keygen -t rsa" (use empty
 > passphrase). After that copy the public part of the key (located in
 > ~/.ssh/id_rsa.pub) to your remote machine under ~/.ssh/authorized_keys).
 > Now your script should work.


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
        the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
