From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: getting a console prog to run on tty2 at bootup
Date: Mon, 13 Dec 2004 13:36:59 -0800
Message-ID: <41BE0B7B.60707@bcgreen.com>
References: <Pine.LNX.4.58.0412100651320.8769@localhost.localdomain> <200412110007.54356.eric@cisu.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200412110007.54356.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: eric@cisu.net

Eric Bambach wrote:
>># Note that on most Debian systems tty7 is used by the X Window System,
>># so if you want to add more getty's go ahead but skip tty7 if you run X.
>>#
>>1:2345:respawn:/sbin/getty 38400 tty1
>>2:23:respawn:/sbin/getty 38400 tty2
>>3:23:respawn:/sbin/getty 38400 tty3
>>4:23:respawn:/sbin/getty 38400 tty4
>>5:23:respawn:/sbin/getty 38400 tty5
>>6:23:respawn:/sbin/getty 38400 tty6
>>
>>I think the 23 refers to the port telnet runs on, right?  Seems I need to
>>edit the line 2:23:respawn:/sbin/getty 38400 tty2, but the question is
>>how?  Do I replace /sbin/getty with the path to twin and add any command
>>line switches after (-hw=tty is what I use when I run it manually from a
>>console)?  Does the 38400 need to be in there, and for that matter, the
>>23?
> 
> 
> Yes telnet DOES run on 23, but that has nothing to do with the file ;)
> the first number is the virtual console # and the second number is the 
> runlevels. Notice that VC 1 ALWAYS starts up: runlevels 2345.  Try something 
> like this and make sure to comment out the original line:

Close: The first field can be just about anything short. It's
an identifier used for other init(8) tricks. In this case,
numbers were chosen to represent the TTY that the program runs on.

The second field (as stated) indicates which runlevels the program
runs on (In this case, the getty on tty1 runs at runlevels 2,3,4 and 5
while the other ones (2-6) only run at runleels 2 and 3.

the respawn in the 3rd field says to rerun the program when it dies.

The last field is the command line that is run at the indicated
run levels.
What actually makes the programs run on their respective TTYs is the
parameter to the getty program. There are a number of versions
of the getty command for Linux.  `man -k getty ` for more info on
which versions are available on your system).

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
