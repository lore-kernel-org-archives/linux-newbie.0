From: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: Heavy load of graphics
Date: Tue, 5 Oct 2004 11:25:45 +0200 (MEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.GSO.4.61.0410051124550.29639@waterleaf.sonytel.be>
References: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

On Tue, 5 Oct 2004, Ankit Jain wrote:
> well i am using linux 9.0 kernel 2.4 ver. 128 Mb RAM
> 
> i have seen not only on this sytem but the other one
> having 512 Mb RAM the most of the memory is lost or
> taken by graphics or xserver. on my system around 90%
> is occupied by the xsever and on the sys with 512 Mb
> RAM around 70% is occupied. how to reduce this load. i
> oculd not get any article or stuff relate to this . if
> we can do something in kernel or in some way reduce
> this load while working in GUI envt

How much memory does your video cards have? This amount is included in the
reported size of the X server, so just subtract it, and see whether the result
looks saner.

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
