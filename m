From: Dominique Sidiropoulos <ksidirop@csd.uoc.gr>
Subject: Re: Linux on dual processor query
Date: Thu, 09 Feb 2006 04:58:39 +0200
Message-ID: <43EAAFDF.7050405@csd.uoc.gr>
References: <Pine.LNX.4.64.0602081935170.5615@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0602081935170.5615@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

Generally the (smp-)kernel will do the right thing (TM) for you. In very 
very rare occasions you'll have to tinker a program to take advantage of 
the two processors. Installing and running a linux distro of recent 
vintage like Fedora or Novell/SuSE should be fearly easy. Fedora is a 
good option there. For any additional (Fedora) packages and programs you 
may have a look at freshrpms.net/rpmforge.net and related sites (I 
assume you've got a broandband connection there cause the updates are 
quite `demanding' in bandwidth). Hope this helps mate and good luck.

Cheers,
Dominick

P.S.: For extra performance boost you might want to add some extra RAM 
modules to the system. It usually helps a lot.

James Miller wrote:

> I've recently run across an older server for cheap and am thinking 
> about acquiring it for cruel experimentation purposes (and if it 
> works, maybe even doing something useful with it). It's a dual 
> processor machine--HP, I think. P2 era. I'm wondering what's involved 
> in setting up and running Linux on one of these beasties. First, I 
> assume one must run a special kernel to take advantage of both 
> processors, right? If so, SMP kernel? Second, does the kernel handle 
> everything involved with distributing to the processors, or must one 
> use specially-compiled programs on such a system as well? Feedback on 
> this will be appreciated: still not sure if I want to tackle such a 
> project.
>
> Thanks, James
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
