From: Ray Olszewski <ray@comarre.com>
Subject: Re: 2 Displays
Date: Mon, 21 Oct 2002 10:44:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021021104011.02486500@celine>
References: <007e01c27927$e2532360$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <007e01c27927$e2532360$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:32 PM 10/21/02 -0400, Paul Kraus wrote:
>I am getting ready to install Linux on my laptop. Right now with it
>having xp I have the laptop lcd and a monitor attached as a second
>display. Can this be done with Linux?

In principle it can, at least for Linux running XFree86. In X, the 
capability you use is called "Xinerama".

I say "in principle" because while I know that this capability supports 
multiple displays on desktop machines with 2 (or more) video cards in them, 
I don't know anything about the hardware on your laptop, and laptops always 
present special issues for Linux (especially for X). For the details, you 
will have to investigate the specific compatibility of your particular 
laptop and Linux.

BTW, I've assumed here that by "second display" you mean that under WinXP, 
you have two *independent* displays (not two copies of the same screen on 
two different displays).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
