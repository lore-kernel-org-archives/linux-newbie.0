From: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Subject: Re: Compiled new kernel, Gnome not working
Date: Mon, 22 Dec 2003 13:34:37 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FE6E4DD.4030402@vip.cybercity.dk>
References: <3FE30ACA.6080901@vip.cybercity.dk> <3FE419E6.3090203@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FE419E6.3090203@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

No, I don't have frame buffer support and I have a ATI Radeon 8500 graphics
card. The only solution that comes to mind, and don't hade me if it is stupid,
is that I have to re-compile X, Gnome or both with the new kernel.

Beolach wrote:
> What type of video card do you have?  If you have a nvidia card & use 
> nvidia's drivers, you will need to reinstall the driver module after 
> compiling a new kernel version.  Also, is it just gnome that won't 
> start, or X?  In the case I'm describing, X won't start at all.
> 
> If you do have a nvidia card, and want to install their drivers, note 
> that nvidia has not yet released a 2.6 compatible driver.  However, the 
> website <http://www.minion.de/nvidia.html> has unofficial patches for 
> use with 2.6 kernels.  I've been using them since 2.6.0-test9 without 
> any problem.  Also,  now that 2.6.0 has been officially released, nvidia 
> should be releasing a compatible driver soon (I would guess).
> 
> HTH,
> Conway S. Smith
> 
> Flemming Greve Skovengaard wrote:
> 
>> Hi all.
>>
>> I just changed to kernel 2.6.0 from kernel 2.4.22 and now Gnome won't 
>> start. All
>> I get is the splash screen and nothing else happens. I had the same 
>> problem when
>> I changed from 2.2 to 2.4. Back then I "solved" the problem by 
>> re-installing.
>>
>> Is there anyone who knows, or have an idea about, what the problem is?
>>
> 
> 
> 
> .
> 

-- 
Flemming Greve Skovengaard               Just a few small tears between
a.k.a Greven                             Someone happy and one sad
<dsl58893@vip.cybercity.dk>              Just a thin line drawn between
4168.08 BogoMIPS                         Being a genius or insane

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
