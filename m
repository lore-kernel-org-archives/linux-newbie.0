From: James Miller <jamtat@mailandnews.com>
Subject: RE: more X problems
Date: Wed, 13 Nov 2002 19:34:47 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0211131911530.21708-100000@localhost.localdomain>
References: <3DD39583.7CEF55E3@ihug.co.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DD39583.7CEF55E3@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux <linux-newbie@vger.kernel.org>, "ichi@ihug.co.nz" <ichi@ihug.co.nz>

Wow. The confusion just multiplied exponentially. I've heard talk of 
differing xservers for different video cards, but this is the first time 
I've had to confront it in practice. I'm still not quite sure what it 
means and what I must do. I'll have to let that sink in for a bit.

I took a look in the /pasture directory for Slack 8.1 and it comtains a 
further subdirectory called /XFree86-3.3.6-servers . I'm guessing I need 
to look within that sub directory? I've already installed XFree86 4.2.0. I'm not 
sure how, or if, two different XFree86 releases work together. Probably 
I'll have to ditch 4.2.0 to use my video card, no?

In crystalizing confusion, James

On 14 Nov 2002, ichi@ihug.co.nz wrote:

> James Miller wrote:
> > 
> > I'm beginning to think I may have overlooked something 
> > in installing X. I'll look and think that over a bit 
> > before posting further.
> 
> Which X server are you using?  The default X server in
> Slackware 8.1 is designed for VESA cards -- but not the
> old VESA cards.  There is a cut-off point, but I don't
> remember what it is.  1.2 ?   2.0 ?
> 
> You say you have an S3 Trio 64V+ video card.  I believe 
> this card is VESA 1.2.  That VESA may be too old to work
> with the default X server.  If so, try the S3 X server 
> from the /pasture directory of Slackware 8.1.
> 
> Cheers,
> Steven
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
