From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: Screen size
Date: Tue, 27 Aug 2002 07:14:26 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020827051426.GA28677@teamfinders.org>
References: <Pine.LNX.4.21.0208261501060.8397-100000@Consulate.UFP.CX>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.21.0208261501060.8397-100000@Consulate.UFP.CX>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I also experience that mysterious "something" after I boot my SuSE Linux system.As far as I can figure out, I have all the configuration files set correctly for an 80x50x9 screen, but I still get an 80x25 screen after a boot.  What I do now is enter the command 'SVGATextMode 80x50x8' as root after I boot.  That clears it up rather nicely, and since I don't reboot all that often, it is only a minor irritation.

Actually, what is more irritating is that I would prefer Richard's 1024x768 screen or something close to that.  It seems like a waste of monitor real estate on a 19" monitor to have it set to 80x50x9.  'Course I will never go blind from squinting at the screen. :-)

I have done some reading into using SVGATextMode and experimented with some better settings.  But, when I set them up, the text gets stair-stepped down the screen, and it becomes unusable.  Then I just blind type the command above, and I am back in business.  Seems that it is a lot harder to find good info on setting up the text console now that everybody and his brother wants a GUI of some sort or another.

By the way, you might also want to look at man SVGATextMode and at /etc/TextConfig.

Cheers,
Sean

On Mon, Aug 26, 2002 at 03:08:04PM +0100, Riley Williams hunted and pecked out:
> Hi there.
> 
> We're talking about a Red Hat 7.3 system here, but the question is
> probably equally relevant both to earlier Red Hat systems and to
> other distributions as well. We are also NOT talking about X-Windows
> but about the virtual text consoles.
> 
> When one is booting into Linux, one can specify "vga=1" on the kernel
> command line to specify that one wishes to have an 80x50 text screen.
> How does one specify this after Linux has finished booting?
> 
> The reason I ask is that although it's specified on the command line,
> something during the init process switches it back to 80x25 lines. I'd
> prefer to have it in 80x50 mode on this computer though.
> 
> Best wishes from Riley.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
