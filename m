From: Ray Olszewski <ray@comarre.com>
Subject: Re: Tar Extract from Tape
Date: Tue, 01 Oct 2002 10:00:40 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021001095420.02c8cd50@celine>
References: <000001c26968$3dd96d90$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c26968$3dd96d90$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

I'm a bit fuzzy on this one too, Paul. But I notice that you did not try 
this variant:

         Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/Knee\ \&\ Ankle/*

I don't know that escaping the & character will work, but it is the obvious 
thing to try (since bash at least will normally interpret it as the 
"detach" command).

If not ... does whatever shell you use on the SCO system support tab 
completion? If it does, try entering

         cd ./PM65/Orthotic\ Cat/Knee

then tab completing, to see how SCO's shell wants you to represent this 
directory name.

And does SCO really use "Tar" rather than "tar"?

At 12:33 PM 10/1/02 -0400, Paul Kraus wrote:
>I am trying to extract the file P723.ind. Now this is on a Sco Box so I
>am crossing my fingers that the syntax is similar to Linux. Here is the
>sniped results for tar tvf /dev/rStp0.
>
>rw-r--r--  0/0   614400 Aug 08 16:39 2002 ./PM65/Orthotic Cat/Knee &
>Ankle/P722.indd
>rw-r--r--  0/0   712704 Aug 08 16:36 2002 ./PM65/Orthotic Cat/Knee &
>Ankle/P723.indd
>rw-r--r--  0/0   794624 Aug 06 16:38 2002 ./PM65/Orthotic Cat/Knee &
>Ankle/P724.indd
>rw-r--r--  0/0   856064 Aug 12 11:29 2002 ./PM65/Orthotic Cat/Knee &
>Ankle/P725.indd
>
>I have tried the following with the file never being found.
>
>Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/Knee\ &\ Ankle/*
>Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/Knee\ &\ Ankle/P723.indd
>Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/*
>Tar xvf /dev/rStp0 "./PM65/Orthotic Cat/Knee & Ankle/P723.indd"
>Tar xvf /dev/rStp0 "./PM65/Orthotic Cat/Knee & Ankle/*"
>
>I am thinking that tar is having a hard time with "&" which is why I
>tried Cat/*.
>
>Any insights would be good. I have searched google for anything relating
>to special characters and tar as well as long file names.  I have read
>the man pages for tar and the info page and can not seem to find out
>where my mistake is.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
