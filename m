From: Ray Olszewski <ray@comarre.com>
Subject: Re: IP command, was SuperNwebie.
Date: Tue, 17 Sep 2002 23:05:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020917225604.0249c2e0@celine>
References: <5.1.0.14.1.20020917131025.026cf820@celine>
 <5.1.0.14.1.20020917131025.026cf820@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0209180552260D.03392@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:52 AM 9/18/02 +0000, pa3gcu wrote:
>On Tuesday 17 September 2002 20:28, Ray Olszewski wrote:
>
> > Some distros use the command "ip" instead. I believe "ip link" is the way
> > to get interface info.
>
>Ray, i dont want to conradict you but, "ip" is a linux command so i cant see
>how it could be a distro spesific command, mind you i am not saying that it
>is not either.
>
>ip which used to be a seperate linux routing command it was first implimented
>in an archive called iproute2 it is now included in slackware and AFAIK some
>other distro's.
>
>One uses 'ip' mainly for routing via tunnels.
>
>ip -V returns;
>ip utility, iproute2-ss990824


We are not really disagreeing, Richard, just saying the same thing a bit 
differently.

As far as I know, the iproute package is available for all the major 
distros, and some of the minor ones. But Debian, to choose the example I 
know best, does not include it as part of a default install. You need to 
install it separately. The "ip" command also requires that the kernel have 
some options enabled, options that not all stock kernels use (I forget the 
exact ones right now or I'd be more precise here).

At least one specialized distribution, LEAF, uses ip *instead* of ifconfig 
(and route); those two commands are not part of a default LEAF install. 
Since I don't know what ALL the major distros are up to these days, I 
didn't want to leave the original poster high and dry if he happened to be 
using a distro that did not include ifconfig (it wasn't until a later 
posting that he mentioned using Red Hat, so I didn't know at the time what 
he had installed). So I mentioned ip just in case.

The "ip" command can almost completely replace ifconfig and route. (I say 
"almost" because I haven't found an equivalent for "ifconfig -a".) In at 
least one specialized distro I am familiar with, it does replace them. In 
environments where both choices are available, I expect you are right about 
the usual use of "ip".


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
