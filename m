From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Tar Extract from Tape
Date: Tue, 1 Oct 2002 12:33:15 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c26968$3dd96d90$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I am trying to extract the file P723.ind. Now this is on a Sco Box so I
am crossing my fingers that the syntax is similar to Linux. Here is the
sniped results for tar tvf /dev/rStp0.

rw-r--r--  0/0   614400 Aug 08 16:39 2002 ./PM65/Orthotic Cat/Knee &
Ankle/P722.indd
rw-r--r--  0/0   712704 Aug 08 16:36 2002 ./PM65/Orthotic Cat/Knee &
Ankle/P723.indd
rw-r--r--  0/0   794624 Aug 06 16:38 2002 ./PM65/Orthotic Cat/Knee &
Ankle/P724.indd
rw-r--r--  0/0   856064 Aug 12 11:29 2002 ./PM65/Orthotic Cat/Knee &
Ankle/P725.indd

I have tried the following with the file never being found.

Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/Knee\ &\ Ankle/*
Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/Knee\ &\ Ankle/P723.indd
Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/*
Tar xvf /dev/rStp0 "./PM65/Orthotic Cat/Knee & Ankle/P723.indd"
Tar xvf /dev/rStp0 "./PM65/Orthotic Cat/Knee & Ankle/*"

I am thinking that tar is having a hard time with "&" which is why I
tried Cat/*.

Any insights would be good. I have searched google for anything relating
to special characters and tar as well as long file names.  I have read
the man pages for tar and the info page and can not seem to find out
where my mistake is.

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
