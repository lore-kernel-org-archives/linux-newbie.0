From: James Miller <jamtat@mailandnews.com>
Subject: RE: more X problems
Date: Wed, 13 Nov 2002 20:41:58 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0211132030330.21708-100000@localhost.localdomain>
References: <5.1.0.14.1.20021113173543.0212a830@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021113173543.0212a830@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks, Ray.

The text file that accompanies the xserver file Steven suggested does, in 
fact, mention support for the S3Trio 64+ (not V+, as my card is supposed 
to be). But then, if XFree86 4.2.0 does not support this card, why is it 
listed in the database of cards one can choose when running xf86config 
under XFree86 4.2.0? Doesn't make much sense to me.

But, let's suppose for the moment that there is some profound rationale 
for that which I am incapable of penetrating, and that, in order to get X 
going on my machine, I've got to use the older, 3.3.6 release. In order to 
install and configure that, I've got to uninstall XFree86 4.2.0, do I not? 
I can't, for example, install the one file Steven references 
(xs3-3.3.6-i386-1.tgz) and expect that to fit in to the XFree86 4.2.0 
complex I currenlty have installed, correct? Wouldn't I need to unistall 
the whole of the 4.2.0 stuff, and then install 3.3.6 with its associated packages?

Zounds, James

On 13 Nov 2002, Ray Olszewski wrote:

> At 07:34 PM 11/13/02 -0600, James Miller wrote:
> >Wow. The confusion just multiplied exponentially. I've heard talk of
> >differing xservers for different video cards, but this is the first time
> >I've had to confront it in practice. I'm still not quite sure what it
> >means and what I must do. I'll have to let that sink in for a bit.
> >
> >I took a look in the /pasture directory for Slack 8.1 and it comtains a
> >further subdirectory called /XFree86-3.3.6-servers . I'm guessing I need
> >to look within that sub directory? I've already installed XFree86 4.2.0. 
> >I'm not
> >sure how, or if, two different XFree86 releases work together. Probably
> >I'll have to ditch 4.2.0 to use my video card, no?
> 
> Very possibly. There was an architecture change in X between 3.x.x and 
> 4.x.x . 4.x.x uses a single executable, with server (video card) selected 
> in the config file. X 3.x.x was actually a set of a dozen or so related 
> executables, each a server for a specific set of video cards (or chipsets); 
> you actually ran the specific X server needed by your hardware.
> 
> It may be that support for your card was abandoned in the move to XFree86 
> 4.x.x. There are cardlist files somewhere at www.xfree86.org that might let 
> you see if XFree96 3.3.6 (the last 3-series version, I believe) supports 
> your hardware.
> 
> 
> --
> -------------------------------------------"Never tell me the odds!"--------
> Ray Olszewski					-- Han Solo
> Palo Alto, California, USA			  ray@comarre.com
> -------------------------------------------------------------------------------
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
