From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Screen size
Date: Tue, 27 Aug 2002 05:47:31 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0208270547310C.02211@unix.pa3gcu>
References: <Pine.LNX.4.21.0208261501060.8397-100000@Consulate.UFP.CX> <20020827051426.GA28677@teamfinders.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020827051426.GA28677@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Theo. Sean Schulze" <tschulze@teamfinders.org>, linux-newbie@vger.kernel.org

On Tuesday 27 August 2002 05:14, Theo. Sean Schulze wrote:
> I also experience that mysterious "something" after I boot my SuSE Linux
> system.As far as I can figure out, I have all the configuration files set
> correctly for an 80x50x9 screen, but I still get an 80x25 screen after a
> boot.  What I do now is enter the command 'SVGATextMode 80x50x8' as root
> after I boot.  That clears it up rather nicely, and since I don't reboot
> all that often, it is only a minor irritation.

The mysterious something, i dont seem to have, however what i think is 
happening is the following, of course i could be wrong.

At bootime lilo loads the kernel, the kernel starts to detect hardware and 
set things up the way one has the kernel configured, just after kswapd is 
started the framebuffer comes to life, a small except from dmesg shows.

Linux IP multicast router 0.06 plus PIM-SM
Initializing RT netlink socket
Starting kswapd v 1.5
vesafb: framebuffer at 0xd0000000, mapped to 0xe0000000, size 32768k
vesafb: mode is 1024x768x16, linelength=2048, pages=0
vesafb: protected mode interface info at c000:c200
vesafb: scrolling: redraw
vesafb: directcolor: size=0:5:6:5, shift=0:11:5:0
Console: switching to colour frame buffer device 128x48
fb0: VESA VGA frame buffer device
Detected PS/2 Mouse Port.

I would imagen this is where the strange something happens on the systems in 
question.

> Actually, what is more irritating is that I would prefer Richard's 1024x768
> screen or something close to that.  It seems like a waste of monitor real
> estate on a 19" monitor to have it set to 80x50x9.  'Course I will never go
> blind from squinting at the screen. :-)

I have a 21 inch monitor and it makes things look very nice in 1024x768.
If you need more examples of how i do it take a look at;

http://people.zeelandnet.nl/pa3gcu/kernel.htm

It includes a sample lilo.conf and a sample .config .

>
> I have done some reading into using SVGATextMode and experimented with some
> better settings.  But, when I set them up, the text gets stair-stepped down
> the screen, and it becomes unusable.  Then I just blind type the command
> above, and I am back in business.  Seems that it is a lot harder to find
> good info on setting up the text console now that everybody and his brother
> wants a GUI of some sort or another.

SVGATextMode must be a distro spesific program as AFAIK slackware does not 
have it included.

>
> By the way, you might also want to look at man SVGATextMode and at
> /etc/TextConfig.
>
> Cheers,
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
