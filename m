From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: TFT display on Debian GNU/Linux
Date: Tue, 2 Sep 2003 10:54:33 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309021054.33372.pa3gcu@zeelandnet.nl>
References: <200309020853.h828r6j4017481@ev6.be.wanadoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309020853.h828r6j4017481@ev6.be.wanadoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thursday 01 January 1970 01:00, Heimo Claasen wrote:
> Geoff -
>
> > Is there a simple reason why the "commercial distros" are able to do
> > this ?  Maybe they are using non-GPL  software that we would not wish to
> > see in Debian.

One would be well advised here to check for differanies in the XF86Config 
file,  it may well be XF86Config-4 on your system, there will be differancies 
otherwise it "should" work in the same manor on both systems. 

Check for things like;

HorizSync rate
VertRefresh rate
ModeLine definions

Resolution sizes under "Section Screen".

Considering someone said "nv" driver, check that modiules such as;

dbe
clx
and font modules are correct.

If it works to your likeing on one system then it "should" work the same on 
another system "providing" one configure's it properly.

Another thing is i have not followed this thread fully so forgive me if 
someone else has pointed this out.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
