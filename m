From: Szekely-Benczedi Endre <bencze@science.uttgm.ro>
Subject: bash scripting help
Date: Mon, 14 Oct 2002 19:10:45 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0210141902220.14904-100000@davos.science.uttgm.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


	I have a problem with making a bash script. I have to make
many account sometimes on a Linux server (SuSE 7.0).
I would like to set a 'default' password for the new users,
just something like '123' or so (no vital information, just some
server for students, so a password like this is okay for new users).
I am wondering how could I do this...
Also I'd like to check if an account exists or not, like fingering
him and proceeding further only if I get 'no such user' or something
like that. The whole idea is to make account creating faster, as I have to
create like 100 or more accounts sometimes.

I post here my current script:

=================================================

#!/bin/bash

path="/home/stud/xyz/"
office="xyz student"
#passwd="123"
echo
echo "Login: "
read user
echo "Fullname: "
read fullname

#creating user
useradd -m -g 100 -d $path$user $user
chfn -f "$fullname" -r "$office" $user
passwd $user

=================================================

So for now I have to write the 'default' password twice.
And, I have to 'finger' the desired accountname first to
see if it exists already or not.
Any solutions, please?
Would handle little examples (I guess), don't need a fully
functionable script; I just posted mine for you to get the
whole image of what I want to do.

Thanks,
Endre.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
