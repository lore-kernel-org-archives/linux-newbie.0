From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: Tar Extract from Tape
Date: Tue, 1 Oct 2002 12:45:55 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0210011244070.13726-100000@router.windsormachine.com>
References: <000001c26968$3dd96d90$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c26968$3dd96d90$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

On Tue, 1 Oct 2002, Paul Kraus wrote:

> I am trying to extract the file P723.ind. Now this is on a Sco Box so I
> am crossing my fingers that the syntax is similar to Linux. Here is the
> sniped results for tar tvf /dev/rStp0.
>
> rw-r--r--  0/0   614400 Aug 08 16:39 2002 ./PM65/Orthotic Cat/Knee &
> Ankle/P722.indd
> rw-r--r--  0/0   712704 Aug 08 16:36 2002 ./PM65/Orthotic Cat/Knee &
> Ankle/P723.indd
> rw-r--r--  0/0   794624 Aug 06 16:38 2002 ./PM65/Orthotic Cat/Knee &
> Ankle/P724.indd
> rw-r--r--  0/0   856064 Aug 12 11:29 2002 ./PM65/Orthotic Cat/Knee &
> Ankle/P725.indd
>

tar xvf /dev/rStp0 PM65/Orthotic\ Cat/Knee\ \&\ Ankle/P723.indd

Your tar might be stripping off the ./ part, or need it stripped off.
Also, escape the & character.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
