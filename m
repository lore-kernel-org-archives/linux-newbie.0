From: "joy merwin monteiro" <joy.merwin@gmail.com>
Subject: Re: Sequence of events at boot
Date: Thu, 12 Oct 2006 12:27:47 +0530
Message-ID: <4b0d6e0d0610112357n67e2ca1fxe317a07fff725793@mail.gmail.com>
References: <53876815734.20061011215642@wa5rrh.us>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <53876815734.20061011215642@wa5rrh.us>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jim Reimer <jdr@wa5rrh.us>
Cc: linux-newbie@vger.kernel.org

it must be finding jstarrc _somewhere_, otherwise it
would have complained. did you try setting the default
runlevel to someother value( like 1) and booting ?
it may not be about processing jstarrc, but something
after that. you never know.

all bootup scripts should be in /etc/init.d/
try grepping for jstarrc there. you can probably
see what is getting executed after 'processing jstarrc'.

On 10/12/06, Jim Reimer <jdr@wa5rrh.us> wrote:
> As of today, my FC4 machine is not booting.  The last thing on the screen during boot is
>
> Processing `etc/joe/jstarrc`...Done
>
> jstar is the default editor on the system, and the "Processing" line on the screen follows
> lm_sensors, automount, nifd, and mDNSResponder.  Also, curiously, it says twice that it's
> processing the jstarrc file.
>
> Can't find where jstarrc is run during boot, so I have no idea what should be happening
> next.  I've looked at every config, init, and rc file and directory I can think of, and
> I'm drawing a blank.
>
> Where do I look?
>
> --
> -jdr-
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>


-- 
Perhaps if Americans could be made to believe that marriage is a sin
they would no longer feel the need for divorce.
                     -- Bertrand Russel, 'On Catholic and Protestant Sceptics'
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
