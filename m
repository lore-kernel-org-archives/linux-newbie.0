From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: nVidia lockups
Date: Sat, 27 Jul 2002 18:12:04 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02072718120406.00307@unix.pa3gcu>
References: <Pine.LNX.4.21.0207270933380.30515-100000@Consulate.UFP.CX> <02072713034305.00307@unix.pa3gcu> <200207271441.g6REfRZ18361@langhans.hartford-hwp.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207271441.g6REfRZ18361@langhans.hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: pa3gcu@zeelandnet.nl, linux-newbie@vger.kernel.org

On Saturday 27 July 2002 14:41, Haines Brown wrote:
> Richard,
>
> > > The page for nVidia Linux drivers is:
> > > http://www.nvidia.com/view.asp?PAGE=linux
> >
> > On that page you will find a shell script called NVchoose.sh, if you
> > download it and run it it should tell you which driver you need.
>
> Thanks, that worked. I'd still like to know what the difference is
> between i386 and i686. Perhaps someone will chime in.

Remember the old machines we used to have a 8086, then came 286 machines, 
then came 386 machines, then came the wonderfull 486, i still have 2 
486DX/100 machines here.
Then came the P1 machines, P2 machines P3 and now we have P4.
This all possably sounds like rubbish to you, but i would advise you to look 
at /usr/src/linux/Documentation/Configure.help and look for "Processor family"
that will give you more indication of what it is.

One small point, a kernel compiled for a i386 will run on "most" machines, a 
kernel compiled for i686 support will "NOT" run on an old i386 machine.
I have somewhere an URL explaining about machine arch's, however i cant seem 
to find it at this minute.

>
> > Enterprise = Redhat version.
> > All i know is that Seawolf = 7.1
>
> Well, that's what I would have assumed, but there are "Enterprise"
> drivers for different versions of Red Hat. That is, Red Hat 7.1 has an
> Enterprise driver, but no mention of Seawolf. In any case, the script
> you pointed me two knows that I'm not running Enterprise.
>
> Haines

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
