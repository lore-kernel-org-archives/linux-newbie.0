From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Making APM more accurate
Date: Sun, 8 Sep 2002 09:50:17 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02090809501700.03392@unix.pa3gcu>
References: <20020906173248.GA24625@teamfinders.org> <02090713131300.01043@unix.pa3gcu> <20020908094353.GA11935@teamfinders.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020908094353.GA11935@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Theo. Sean Schulze" <tschulze@teamfinders.org>, linux-newbie@vger.kernel.org

On Sunday 08 September 2002 09:43, Theo. Sean Schulze wrote:
> The battery in this laptop is over two years old, so I can't rule out the
> possiblity that this is battery induced.  I am just trying to avoid laying
> out the money (about $125) it will cost to find out.
>
> What I was thinking, though, was that apm(d) would track this internally by
> measuring the state of the battery and then using changes in battery charge
> between measurements as a way to forecast remaining time on the charge
> measured.  I don't know anything about the relationship between the BIOS,
> the battery and apm(d) though, so I can't tell which plays what role. 
> Might be time to dig out the apm(d) source and see what information is
> included with it.  I didn't see this issue expressly addressed in the an
> pages (or I missed it).

If what you think is the way apm does it, then that would give erratic 
measurments as an old and decreaped battery will "seem" to charge up very 
quickly because of its internal resistance varying too quickly.

>
> Thanks,
> Sean
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
