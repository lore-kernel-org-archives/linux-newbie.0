From: Peter <heisspf@skyinet.net>
Subject: Re: Gxine in Mozilla & Co.
Date: Tue, 26 Jul 2005 11:56:27 +0800
Message-ID: <20050726115627.33982c0b@localhost>
References: <20050725162431.756e3544@localhost>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050725162431.756e3544@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Mon, 25 Jul 2005 16:24:31 +0800
Peter <heisspf@skyinet.net> wrote:

> Hi,
> 
> Lately mozilla, netscape and firefox open by default gxine to play music or
> video which unfortunately does not work giving errors about missing
> libraries and if not  will buffer for ever.
> 
> I then have to go through several steps to open with either realplayer or
> totem.
> 
> Where do I change the default settings to either realplayer or totem. I
> can't find it in the preference settings of those browsers.
> 
> I noticed as well that the BBC Radio Player does not open anymore instead
> will try gxine.
> 
> Lately above could mean after upgrading in slackware 10.1 to
> dropline-gnome-2.20.2.
> 
> Thanks & regards

I found the answer. First I installed the latest realplayer10. Then in
mozilla in Preferences>Navigator>Helper-Applications I had to do the settings
to point for video to ~/Realplayer/realplay

This then will do the settings as well for netscape and firefox where
strangely I cannot find such helper-application. After this the BBC Radio
Player works again.

Does it say anywhere settings for netscpe or firefox have to be done in
mozilla? I have not looked for it.


-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
