From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Problem in logging in as root
Date: Wed, 25 Jun 2003 21:49:51 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306252149.51704.pa3gcu@zeelandnet.nl>
References: <36993D449C7FA647BF43568E0793AB3E061D26@nevis_pune_xchg.pune.nevisnetworks.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <36993D449C7FA647BF43568E0793AB3E061D26@nevis_pune_xchg.pune.nevisnetworks.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Girish Kale <girish.kale@nevisnetworks.com>, linux-newbie <linux-newbie@vger.kernel.org>

On Monday 23 June 2003 12:04, Girish Kale wrote:
> Hi,
>
> I built a kernel off 2.4.21.
> When I load it, it comes to the login. If I give the login as root and
> then type the password, it gives me an error "Authentication service
> cannot retrieve authentication info" , and it comes back to the login
> prompt.
>
> After a few times of trying the above, it gives me the above message and
> also the following :
>
> "INIT: Id "1" respawning too fast disabling for 5 min"
>
> I am able to login as root with the same above password with the
> standard Redhat linux- 2.4.18, installed on my machine.
>
> Can anyone help me out.

Not directlty i cant, however i have seen simalar problems when one compiles 
his/her own kernel, what you need to do is compare the config file from your 
orgiganal kernel and the one you made yourself, obviously you have omitted 
some or other very important option.

I did a google search (of which you could have done as well) anyway, the 
following URL;
http://www.linuxquestions.org/questions/archive/1/2001/03/4/1548
does say that you possably do not have "binfmt" of which there are the 
following;

CONFIG_BINFMT_AOUT=y
CONFIG_BINFMT_ELF=y
CONFIG_BINFMT_MISC=y

That would explain your problem.
Remember "google.com/linux" is a wonderfull place to get just about __all__ 
your answers before you ask here.

> Thanks,
> Girish

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
