From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: Making APM more accurate
Date: Sun, 8 Sep 2002 11:43:53 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020908094353.GA11935@teamfinders.org>
References: <20020906173248.GA24625@teamfinders.org> <02090713131300.01043@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <02090713131300.01043@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

The battery in this laptop is over two years old, so I can't rule out the possiblity that this is battery induced.  I am just trying to avoid laying out the money (about $125) it will cost to find out.

What I was thinking, though, was that apm(d) would track this internally by measuring the state of the battery and then using changes in battery charge between measurements as a way to forecast remaining time on the charge measured.  I don't know anything about the relationship between the BIOS, the battery and apm(d) though, so I can't tell which plays what role.  Might be time to dig out the apm(d) source and see what information is included with it.  I didn't see this issue expressly addressed in the man pages (or I missed it).

Thanks,
Sean

On Sat, Sep 07, 2002 at 01:13:13PM +0000, pa3gcu hunted and pecked out:
> On Friday 06 September 2002 17:32, Theo. Sean Schulze wrote:
> > Hello,
> >
> > Is there a way to make apm's or apmd's estimates of the time left on a
> > battery charge more accurate?
> >
> > I just booted my laptop (a Sony VAIO PCG-C1XS with the stock hardware)
> > after several days of not having used it.  APM reported as I logged in that
> > I had 39% battery charge left and 136 minutes of use remaining.  I wish
> > that were true, but based on experience, with this older battery I can
> > expect about 20 to 25 minutes charge.  Since I am using a wireless card,
> > the usable time is actually significantly lower, and I acknowledge and
> > accept that.  That is not the issue.
> >
> > The problem is, that as the charge decreases, the time remaining on the
> > charge becomes more and more unrealistic.  For example, I know have 21%
> > charge remaining and that equates out to 89 minutes, according to apm.  I
> > have gone from 136 minutes remaining to 89 minutes remaining in the space
> > of about 7 minutes.  Is there any way to get apm to accurately calculate
> > the rate of discharge?  To what extent does this depend on my laptop's
> > BIOS?
> 
> On my laptop a Compaq Armada i get relatively accurate readings, altho' to be 
> honest i dont take a lot of notice of its messages.
> 
> Now APM(d) works with the BIOS, so could it be that your BIOS is giving 
> unacurate data to apm.
> IMHO it could happen when a battery is nearing the end of its life, internal 
> resistance lowers causing all sorts of strange effects on older batterys.
> 
> Now i am not saying that is the problem, but i wonder if you could get hold 
> of another battery and then see if apm gives different details..
> 
> Thats just my thoughts and my not reflect your actual problem.
> 
> 
> >
> > Cheers,
> > Sean
> 
> -- 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
