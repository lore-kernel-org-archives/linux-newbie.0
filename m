From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: X won't start, no errors in XFree86.0.log
Date: Wed, 15 Jan 2003 21:30:32 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03011521303200.29837@unix.pa3gcu>
References: <5.1.0.14.1.20030112114020.02281c10@celine> <5.1.0.14.1.20030112125949.02281330@celine> <01cf01c2bcdb$44a32f00$6400a8c0@00arc>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <01cf01c2bcdb$44a32f00$6400a8c0@00arc>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jonathan Kallay <yoni@kallay.net>, linux-newbie@vger.kernel.org

On Wednesday 15 January 2003 21:15, Jonathan Kallay wrote:
> I had already compiled the nVidia driver but had not yet replaced the
> Driver line in XF86Config with the new driver- the nVidia docs suggested
> getting the X setup working first with the "nv" driver before switching to
> theirs. Just for kicks, I tried the nVidia driver, and lo and behold, it
> works.

The reason nvidia say get X working with the "nv" driver from XFree first is 
for the reason that if the nv driver works then all one needs to do is change 
one line in his/her XF86Config file, (2 lines could need altering as well), 
but thats why they say get it working with nv first.

The other point here is, you say you had compiled the NVdriver modules from 
nvidia but had not changed the XF86onfig file, that would explain the reason 
why X complained about not finding the module extention, GLX i belive it was, 
if you had noticed in the documantation that is explained in a round about 
way that if you compile the driver and kernel file then things get changed 
and replaced, that is the reason you were getting such an error message.

Now you can see the differance in video performance between nv and the 
NVdriver espesialy if you have a DVD player.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
