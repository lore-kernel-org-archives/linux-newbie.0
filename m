From: Ray Olszewski <ray@comarre.com>
Subject: Re: Getting a valid display under Debian revisited
Date: Wed, 10 Dec 2003 07:33:26 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031210073147.01f9c8e8@celine>
References: <Pine.LNX.4.58.0312092206490.777@debian-box>
 <Pine.LNX.4.58.0312091843110.1018@debian-box>
 <Pine.LNX.4.58.0312092206490.777@debian-box> <1071046313.760.1.camel@DebiAnarchist>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1071046313.760.1.camel@DebiAnarchist>
References: <Pine.LNX.4.58.0312092206490.777@debian-box>
 <Pine.LNX.4.58.0312091843110.1018@debian-box>
 <Pine.LNX.4.58.0312092206490.777@debian-box>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:51 PM 12/10/2003 +1100, Peter Garrett wrote:

>There are several S3 cards. I had a similar problem with the S3Trio
>dx/gx, I think it was ... apparently the drivers are quite specific for
>the model.
>
>On Wed, 2003-12-10 at 15:18, jamtat@mailsnare.net wrote:
> > I was finally able to get a working display by using the vesa xserver.  I
> > can get 1024x768 with 16 bit color with this.  Strange that the S3
> > xserver, which is supposed to be for this card, would not work.  Any ideas
> > why, anyone?

The original message was a bit more specifci than this, referring to 
an  "S3Trio64v+ video card" ... but that identifier is for a chip, not a 
card, and the X documentation (at www.xfree86.org) says that the current S3 
server works only for S3Trio64v+ video cards that use specific RAMDAC 
chips. So it *could* still be a hardware compatibility issue.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
