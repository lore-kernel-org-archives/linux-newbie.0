From: James Miller <jamtat@mailsnare.net>
Subject: Re: LILO configuration
Date: Thu, 4 Mar 2004 21:46:40 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0403042143090.1024@debian-emach>
References: <3.0.16.20040304224818.480f894c@mail1.abac.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3.0.16.20040304224818.480f894c@mail1.abac.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 4 Mar 2004, David Tiefenbrunn wrote:

> I bought a (used) computer that came with SuSe linux installed.  I would
> like to set it up so I can boot either Linux or WIN98 (I know, yuck, but I
> still have some stuff that I need to use there)
>
> The HD is currently set up as one 20gig partition.  Can I split it or do I
> have to start all over from the beginning?  Of course, I don't have the
> linux install CD.

Sounds like maybe a job for the Knoppix live CD - which has a nice GUI
frontend for the Parted partitioning utility (it's called Qtparted).  Boot
from the Knoppix CD, run QTparted and shrink the SuSe partition (assuming
you can), and make a FAT32 partition on which to install your M$Winders.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
