From: Adrian Bunk <bunk@stusta.de>
Subject: Re: Accessing static variable from outside
Date: Sat, 16 Jun 2007 05:09:26 +0200
Message-ID: <20070616030926.GS3588@stusta.de>
References: <b115cb5f0706151908o6a0f765etd5f275be8bf75f0@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b115cb5f0706151908o6a0f765etd5f275be8bf75f0@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: Linux Newbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On Sat, Jun 16, 2007 at 07:38:07AM +0530, Rajat Jain wrote:
> Hi,
>
> I understand that this is off-topic, but still if some one has any ideas 
> ...
>
> I have a global variable that is defined static in an object file (say
> 1.o). Now I want to be able to get the value of this variable in
> ANOTHER object file (say 2.o) without changing the source of 1.c.
>
> Any ideas, anyone? I know that as per C, this is not possible. But may
> be some clever hack?

Depending on how the variable gets used the compiler might even 
completely optimize it away.

> Thanks,
>
> Rajat

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
