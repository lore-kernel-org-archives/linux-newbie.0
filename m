From: Ray Olszewski <ray@comarre.com>
Subject: Re: TFT display on Debian GNU/Linux
Date: Sun, 31 Aug 2003 08:25:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030831081816.01fd7b90@celine>
References: <200308310512.h7V5Brt2263091@www2.wanadoo.be>
 <200308310512.h7V5Brt2263091@www2.wanadoo.be>
 <YzY47DAoWaU$EwEw@gcbagley.demon.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <YzY47DAoWaU$EwEw@gcbagley.demon.co.uk>
References: <200308310512.h7V5Brt2263091@www2.wanadoo.be>
 <200308310512.h7V5Brt2263091@www2.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:37 AM 8/31/2003 +0200, geoff bagley wrote:
> >(After weeks of worktime wasted we gave up on making Debian/Woody work
> >with a combine of a quite renowned video card and ditto high-res monitor;
> >the "commercial" distros - Mandrake, SuSE, RH - hadn't any problem with
> >that.)
>Thanks to you both.  I  am sorry that your efforts were not rewarded.
>Is there a simple reason why the "commercial distros" are able to do
>this ?  Maybe they are using non-GPL  software that we would not wish to
>see in Debian.
>
>Is the problem only with Woody ?
>How will other versions of Debian cope with this ?


I haven't myself run into the problem that Heimo describes, but I would 
predict that other versions of Debian (Sid, anyway) would fare as badly as 
Woody in this respect. Debian's hardware autodetect capability is close to 
nonexistant. That's why I suggested bypassing its X setup routines 
entirely, in favor of creating XF86Config-4 manually, based on the file a 
SuSE install produces.

Still, whether the problem Heimo described will affect *you* or not remains 
unknown, since you have not told us what video card you are using. It's 
been some months since I last did an X install, but as I recall (on Sid, 
anyway) the video card and monitor get specified separately, not in 
combination. And anything really unusual about your system is likely to be 
in the monitor, not the video card, at least from the way you've describef 
things so far.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
