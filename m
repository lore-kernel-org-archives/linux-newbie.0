From: chuck <chuck@gelm.net>
Subject: Re: partitioning
Date: Sun, 25 Jan 2004 11:08:47 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4013EA0F.F19D521D@gelm.net>
References: <200401252137.39975.wheds8@ms66.hinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "S. Barret Dolph" <wheds8@ms66.hinet.net>
Cc: linux-newbie@vger.kernel.org

Hi, S.:

 The output of 'df' might be more meaningful.

If you mounted sda7 as /
 and mounted sda1 as /boot
 Would it satisfy all your free space concerns?
:-|
HTH, Chuck

"S. Barret Dolph" wrote:
> 
> I am probably getting too picky about repartitioning my drive but I want it to
> be set up for a long time. I never use all the space in my harddrive even
> though it is relatively small. (I only use it for work and don't play any
> games.)
> 
> Questions......
> 
> My old setup
> 
> sda1    /               1g
> sda5            /swap   1024k  (512ram)
> sda6            /usr            6g
> sda7            /home   10g
> 
> I will be using Sourcemage which puts sources in /var so I have been thinking
> about taking 3g out of home and making a /var of 3g.
> 
>  I will probably take another 3 out of home and add it to usr/ but that is
> probably overkill. Neither use too much.
> 
> I am confused about where /swap should go. I have a SCSI drive and from what I
> read that should be on the outside. So should I put /swap at sda8? (Given
> that I have added /var.)
> 
> I had a /home because it was convenient to upgrade with CD's when I only had a
> 56 modem. Now that I am using a source based installation is the /home
> unnecessary as I am the only user.
> 
> Is having a /tmp partition necessary?

probably

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
