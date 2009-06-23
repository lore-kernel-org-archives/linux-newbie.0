From: Christophe Lucas <clucas@altern.org>
Subject: Re: How to get control over  Power LED
Date: Tue, 23 Jun 2009 11:03:57 +0200
Message-ID: <20090623090357.GE25947@mcom.fr>
References: <E9E3926FA9CDBF489EA1684042C8A02601531D7C@zmy16exm72.ds.mot.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <E9E3926FA9CDBF489EA1684042C8A02601531D7C@zmy16exm72.ds.mot.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tekale Sharad-FHJN78 <FHJN78@motorola.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Tekale Sharad-FHJN78 (FHJN78@motorola.com) wrote:
> Hi ,
>  
> How can I get control over Power LED?
>  
> My requirement is I can be able to control Power LED by using /proc file
> system.
>  
> If I set value in /proc/sys/led /power to 1, then PowerLED should glow, 
> where as if I set it to 0, PowerLED should turn off.
>  
> Can some one provide me either some link which talks about how to
> implement 
>  
> or , point to some piece of code for implementing the behavior,  or some
> brief idea towards achieving  the behavior.

Hi,

I think drivers/leds is a good starting point.
I have seen some implementation of this kind of stuff in OpenWRT
project (about adm5120).

Regards,

	Christophe

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
