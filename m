From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re: MIssed interrupts
Date: Fri, 29 Feb 2008 11:35:24 +0800
Message-ID: <804dabb00802281935q4fbc0988w172b40493883cf1@mail.gmail.com>
References: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=gIGBraUDr9/Zwk+3Y8YqZTGVuOFBM9BaGQu956Uo7Cc=;
        b=Lmim5xlp6eliE5TzYXP1AYSXrRvE9HIukgySZaG69cyoaz8KiEEv2tVwFnGws+6Px/VB7fOrvxa0u0uxoe/715NtHgwVo3kv9WRnYuoavb6Zh01nn4J8Ih8PCa9HEEGipv+xZl+47H26TvaaddMD+6IjJBQb7VtroasSD7sCnLY=
In-Reply-To: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On 2/7/08, Rick Brown <rick.brown.3@gmail.com> wrote:
> Hi,
>
>  If a particual IRQ line has been disabled (disable_irq()), what
>  happens if the device on that IRQ line generates interrupt? Does it
>  result in missed interrupt?

Yes, and there are a few other problems with interrupts too.   For
missed interrupt, we solved by "bottom half".    In essence the
interrupt handler has to be very short (which is immuned to another
interrupt trigger), and complete as soon as possible to get ready to
receive another interrupt, while the "deferred context" can execute
slowly, but is all the time interrupt-ready.

>
>  And in case of Uniprocessor machine, what happens if interrupts are
>  generated while spinlock_irq_save() etc?
>

Same, missed interrupts.

Check this out:

http://www.cs.utah.edu/classes/cs5785/slides/08-6up.pdf
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
