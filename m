From: caszonyi@rdslink.ro
Subject: Re: Xircom_cb - tulip ethernet chip
Date: Sat, 30 Apr 2005 02:12:29 +0300 (EEST)
Message-ID: <Pine.LNX.4.60.0504300211430.960@grinch.ro>
References: <4272BB33.7050405@tlinx.org>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4272BB33.7050405@tlinx.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linda W <linux-newbie@tlinx.org>
Cc: linux-newbie@vger.kernel.org

On Fri, 29 Apr 2005, Linda W wrote:

> Hi...
>
> I have a Xircom Cardbus 10/100 HD/FD duplex card that seems to always be 
> booting
> into 10Mb/s.  It's connected to a 10/100 switch that most everything else 
> connects
> at 100Mb to, but the Xircom is connecting at the lower speed.
>
> I notice a bunch of options that can be specified to the Tulip driver in the
> drivers/net/tulip directory in the file tulip_core.c.  How do I pass these 
> options
> to the running driver?  Can I change it "on the fly", or do I need to pass 
> the
> options in on the command line?  If that's the case, how do I include the
> option?  Just place it,  naked, on the command line and hope that the module 
> will
> see the argument and it will "just work"?  Seems a bit of a shot in the dark 
> -- like
> I might have to say something like "net=option" or "tulip=option" or 
> something...
>
> Any help/hints?  How to specify options to the module doesn't seem to be 
> covered
> in the Documentation section (Documentation/DocBook/tulip-user.tmpl).
>

There is a program named mii-tool which can change the interface.

> Thanks,
> Linda
>
--
?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
