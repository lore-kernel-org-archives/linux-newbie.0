From: Stephen Samuel <samuel@bcgreen.com>
Subject: -p option for useradd ( was Re: ssh setup: user 'locked out' daily
 )
Date: Tue, 07 Sep 2004 22:27:08 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <413E982C.2080508@bcgreen.com>
References: <GNEPLLCIIBHICCOGIAKPCEDJDDAA.eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPCEDJDDAA.eatley@wowcorp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: eatley@wowcorp.com
Cc: linux-newbie@vger.kernel.org

Eve Atley wrote:
> We have SSH running on our Linux Redhat 9 server. I set up new users to dump
> them upon initial login to a common directory using the following command:
> 	useradd -M -d /home/shared username -p password
> 	passwd username (for some reason, -p password doesn't work?)

-p password     is expecting the ENCRYPTED password (as you see it
in /etc/shadow), not the cleartext password...

Inother words:
   useradd -p hello_there brickie
is going to create a user brickie with an unknown password.

you need a program to produce an encrypted password (either in
crypt form (8 character limit) or the md5-sum format (roughly unlimited).


If you have grub on your system, grub-md5-crypt   will
read a password (twice) and then produce an encrypted version
of it.. Unfortunately, it also generates a good bit of other output.
the following, howeveer seems to work, OK:

  ( echo hello_there ; usleep 50000 ; echo hello_there) |
      grub-md5-crypt 2> /dev/null | tail -1

(the above is all on one line)

It essentially throws out all the errors on stderr, and only saves
the last line of output on stdout.

The result is now usable as a -p parameter for .useradd.

useradd -p ` ( echo hello_there ; usleep 50000 ; echo hello_there) |
      grub-md5-crypt 2> /dev/null | tail -1  ` brickie

if you want to put that script into a file:

% cat bin/pwcrypt
@!/bin/bash
read line
[ -n "$line" ] || { echo " $0: Password missing ; exit 1 ";  }
( echo "$line" ; usleep 50000 ; echo "$line" ) |
	grub-md5-crypt 2> /dev/null | tail -1


@! useradd -p 'echo  my new password | pwcrypt` brickie2

Would then create the user brickie2 with the password "my new password"

I also have a perl script that produces the old 'crypt' form
output -- but if you can use the md5sum format, I strongly
recommend it. Somebody has already done up a dictionary attack on
the 2 billion most likely 8 character passwords.

The reason why passwd will NOT accept cleartext passwords
on the command line is that (however sort the command runs),
command parameters are visible in the output of 'ps'.
If a not-nice user sees the useradd command when he is
doing a random 'ps' (or it shows up in the output of 'top'.
a cleartext password on the command line would then give
random users the password for the new user (bad!).

This is why I'm still not accepting a commandline password
for pwcrypt. somebody might see it and realize what it's
likely to be used for. This way it only shows up as a
parameter on an echo command (which is usually  a shell
builtin).  This is basically security by obscurity, but
it's the best you can hope for if you INSIST on being
able to sepecify the password on the commandline.


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
