From: jamtat@mailsnare.net
Subject: Re: Getting a valid display under Debian revisited
Date: Wed, 10 Dec 2003 09:54:16 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312100945420.1036@debian-box>
References: <Pine.LNX.4.58.0312091843110.1018@debian-box> 
 <Pine.LNX.4.58.0312092206490.777@debian-box> <1071046313.760.1.camel@DebiAnarchist>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1071046313.760.1.camel@DebiAnarchist>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 10 Dec 2003, Peter Garrett wrote:
>
> There are several S3 cards. I had a similar problem with the S3Trio
> dx/gx, I think it was ... apparently the drivers are quite specific for
> the model.
>
I'm thinking it's more likely that the s3 xserver has gotten somehow
corrupted or more buggy as XFree gets updated.  This is because I have
other cards that look just like this one that I've used in other machines.
Under XFree 3.3.6 (the Debian I use now has XFree 4.2.1) the s3 xserver
powered that card just fine.  This is what leads me to conclude that the
xserver has gotten buggy in subsequent versions.  I suppose the other
possibility is that these s3Trio64v+ cards could look almost identical,
could have identifying marks printed on them indicating they are
s3Trio64v+'s, but actually be quite different on the hardware level.  But
it's all pretty much guesswork for those of us who do not write drivers
and/or develop manufacturing standards.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
