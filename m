From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Shutdown / Halt Problem - Bad EIP Value
Date: Tue, 28 May 2002 06:14:49 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0205280614490A.01212@unix.pa3gcu>
References: <20020528033642.YJMP11659.rwcrmhc53.attbi.com@there>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020528033642.YJMP11659.rwcrmhc53.attbi.com@there>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Brent Eckhout <linuxworks@attbi.com>, Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

On Tuesday 28 May 2002 03:40, Brent Eckhout wrote:
> I've just started using Red Hat 7.2 (Enigma).  It installed successfully
> but whenever I shut down the system, I get an "oops" error--  Bad EIP
> Value.  It looks like it's bombing on the command "halt -i -d -p".  Any
> suggestions for fixing this problem?
>
> If I need to turn off some auto shutdown functions, that's fine (BIOS or
> others).  I tried a Google search-- there were several folks with similar
> problems but no quick and dirty solutions.


What you need to do is find out which process is causing the EIP, i suggest 
you read /usr/src/linux/Documantation/oops-tracing.txt that will show you 
howto find that out.

Next time you require help please include your kernel version and as much 
information as possable that will help us to help you.

I have redhat-7.2 on my laptop and have no such problems.

>
> Brent

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
