From: Chris Largret <largret@gmail.com>
Subject: chmod u+s confusion
Date: Fri, 07 Apr 2006 02:41:13 -0700
Message-ID: <1144402873.8482.14.camel@localhost>
Reply-To: largret@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Hey,

I've used chmod to set suid for a file before and thought I had a good
grasp of how it worked. Recently I've found myself trying to set it for
a script. Here's what I see ($ denotes user account, # is root):

$ echo -e '#!/bin/sh\n\nwhoami'>whoami.sh
# chown root:root whoami.sh
# chmod 4755 whoami.sh
$ ./whoami.sh
chris
# chmod u+s `which whoami`
$ whoami
root

[Note: u+s is equivalent to 4xxx, sorry for the change-up]

So... why doesn't this make whoami.sh run the 'whoami' program as root?
It's worked for the programs whoami, and is a common mode set on
cdrecord.

Thanks for your help (and enlightenment).

--
Chris Largret <http://daga.dyndns.org>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
