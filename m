From: Peter <pfheiss@philonline.com>
Subject: Re: Tkdesk Segmentation Fault
Date: Mon, 11 Nov 2002 11:35:48 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211110335.gAB3Zmu02766@philonline.com>
References: <20021110122250.A25979@neutrino.particles.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sun, 10 Nov 2002 12:22:50 +0200."
             <20021110122250.A25979@neutrino.particles.org> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Elias Athanasopoulos <eathan@otenet.gr>, linux-newbie@vger.kernel.org


eathan@otenet.gr said:
> Just a guess. Your X libs are incompatible with your Tcl/Tk.

Thank you so much and Lawson for the lead!!!

You guessed it right. Copying libX11.so.6.1 into /usr/X11R6/lib/ made tkdesk 
coming up instantly.

Hurray!

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
