From: Ray Olszewski <ray@comarre.com>
Subject: Re: Source RPM
Date: Fri, 20 Sep 2002 11:14:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020920110814.024d56b0@celine>
References: <005601c260d0$05d7d490$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <005601c260d0$05d7d490$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 02:03 PM 9/20/02 -0400, Paul Kraus wrote:
>So it's the general census of the exp readers of this list that when one
>can one should install from rpm rather then source code. Correct?

Dunno about "consensus" -- we don't take a lot of votes here -- but my 
personal view is that you should use your distro's packaging system (this 
is NOT the same thing as "from rpm", since there are other packaging 
systems) as much as possible. The important exceptions are:

1. Custom kernels. (This is a common enough excpetion that kernel source 
packages are the one set of source packages always, in my experience at 
least, included with the system binaries, not relegated to the source 
archives.)

2. A few packages have licenses weird enough that they can be distributed 
only as source. Not all distros pay attention to these restrictions, but 
some do.

3. You may have some special requirement that causes you to need a newer 
version of a program than the one your distro provides. This may mean 
getting a newer binary, a newer source package, or even the CVS version 
directly from the creator or maintainer.

4. Your distro may not include the package.

5. You have some particular reason for wanting to learn in detail how the 
program works.




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
