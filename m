From: Daniel Provin <dgp@labmetro.ufsc.br>
Subject: Re: X
Date: Thu, 26 Sep 2002 15:55:46 -0300 (BRT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44L.0209261554270.2456-100000@labmetro.ufsc.br>
References: <5.1.0.14.1.20020925094922.0262d620@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020925094922.0262d620@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I already solved my problem. The thing was that I was writing on the
XF86Config instead of the XF86Config-4

thanks
Daniel Provin
Lixux User #191271
EEL LABMETRO UFSC

On Wed, 25 Sep 2002, Ray Olszewski wrote:

> At 01:24 PM 9/25/02 -0300, you wrote:
> >Hi there
> >
> >Is there any program that usualy change the XF86Config file?
> >cause everytime I change my XF86Config and start X it go back to the
> >original
>
>
> Depends a bit on the distro, but I can't think of any common app that would
> rewrite XF86Config *every* time you start X.
>
> Perhaps you'd benefit from telling us the details?
>
> 1. What distro and version?
>
> 2. How do you start X? (startx, xdm, something else)?
>
> 3. What version of X? (At least on some distros, X 4.x.x uses a config file
> called XF86Config-4, not the older XF86Config used with X 3.x.x. Might you
> be editing the wrong file?)
>
> 4. What changes are you making (or trying to make)? Might you be making a
> change that does not work? And how are you making the changes -- editing
> XF86Config in vi, using xf86config, something else?
>
> 5. Exactly what do you mean by "it go back to the original"? Examples of
> what you *might* mean are:
>
>          A. the changes in XF86Config do not show up in the way X starts.
>          B. after starting X, you open XF86Config again, and the changes
> you made are lost.
>          C. The same as B, plus the XF86Config file has an old timestamp,
> not a recent one.
>
> In cases B and C, if you edit the XF86Config file, save it, close your
> editor, restart your editor, and open XF86Config again (without starting X
> in the meantime), do you see the changes you made?
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
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
