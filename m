From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: X
Date: Wed, 25 Sep 2002 19:07:19 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02092519071901.09996@unix.pa3gcu>
References: <000401c26496$bf7d7f20$64fea8c0@pkrausxp> <5.1.0.14.1.20020925094922.0262d620@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020925094922.0262d620@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Provin <dgp@labmetro.ufsc.br>
Cc: linux-newbie@vger.kernel.org

On Wednesday 25 September 2002 16:59, Ray Olszewski wrote:
> At 01:24 PM 9/25/02 -0300, you wrote:
> >Hi there
> >
> >Is there any program that usualy change the XF86Config file?
> >cause everytime I change my XF86Config and start X it go back to the
> >original
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

If i may point out that XFre86-4.x.x "does" use XF86Config, it will use it as 
default "if" no XF86Config-4 is found.
I use XFree86-4.2.0 on one machine here and i "dont" have a -4 file.
It is documented and it was decided to make XFree86-4.x.x look for both files 
to make it backwards compatable.

Another handy hint is that XFree86-4.x.x now writes a complete log of every 
boot into /var/log called XFree86.0.log (if .0 is found then it will be .1) 
and so on.
You can see what config file is used in that log file + so much more than the 
old way of capturing its output at starttime.
(But i dont think i needed to tell Ray that) i just wanted to make a point of 
the "-4" thing.

The rest of the excelant stuff snipped.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
