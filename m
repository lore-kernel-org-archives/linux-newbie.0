From: Ray Olszewski <ray@comarre.com>
Subject: Re: Gutenbrowser Won't Open
Date: Thu, 26 Feb 2004 05:16:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040226050821.01f371b0@celine>
References: <20040226081710.493DD1C669@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040226081710.493DD1C669@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:17 PM 2/26/2004 +0800, Peter wrote:
>Hi,
>
>In Slackware 9.1 the program gutenbrowser which I have used for years in
>RedHat will not open.
>
>I get the error message:
>
>:$ gutenbrowser
>gutenbrowser: relocation error: gutenbrowser: undefined symbol:
>qInitNetworkProtocols__Fv
>
>How could that be corrected?

This sort of error ("undefined symbol") *usually* indicates a 
shared-library version mismatch. If you actually moved gutenbrowser app 
from your RH install to your Slackware install, this is a likely cause. 
(It's the sort of thing that modern package-management systems, like the 
ones Red Hat and Debian use, catches for you ... but that mixing packages 
from two distros will occasionally introduce.)

Use "ldd /$PATH_TO/gutenbrowser" to find out which shared libraries 
gutenbrowser uses. Then compare versions between RH and Slack to find out 
which ones are different.

Or, if you have the development packages for your libraries instailed, you 
can grep "qInitNetworkProtocols__Fv" in the various include directories 
(the RH versions) to try to identify the library involved.

Or maybe there's a way to use "strace" to wort this out. If so, someone 
else will have to provide the details.

 From the leading "q", I'd speculate that a KDE library is involved. But 
that's just a guess. And, of course, if the version of gutenbrowser that's 
failing was part of your Slackware install, then all this guessing isn't as 
good as I think it is.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
