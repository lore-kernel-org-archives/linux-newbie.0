From: Ray Olszewski <ray@comarre.com>
Subject: Re: X
Date: Wed, 25 Sep 2002 09:59:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020925094922.0262d620@celine>
References: <000401c26496$bf7d7f20$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44L.0209251323230.16419-100000@labmetro.ufsc.br
 >
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Daniel Provin <dgp@labmetro.ufsc.br>
Cc: linux-newbie@vger.kernel.org

At 01:24 PM 9/25/02 -0300, you wrote:
>Hi there
>
>Is there any program that usualy change the XF86Config file?
>cause everytime I change my XF86Config and start X it go back to the
>original


Depends a bit on the distro, but I can't think of any common app that would 
rewrite XF86Config *every* time you start X.

Perhaps you'd benefit from telling us the details?

1. What distro and version?

2. How do you start X? (startx, xdm, something else)?

3. What version of X? (At least on some distros, X 4.x.x uses a config file 
called XF86Config-4, not the older XF86Config used with X 3.x.x. Might you 
be editing the wrong file?)

4. What changes are you making (or trying to make)? Might you be making a 
change that does not work? And how are you making the changes -- editing 
XF86Config in vi, using xf86config, something else?

5. Exactly what do you mean by "it go back to the original"? Examples of 
what you *might* mean are:

         A. the changes in XF86Config do not show up in the way X starts.
         B. after starting X, you open XF86Config again, and the changes 
you made are lost.
         C. The same as B, plus the XF86Config file has an old timestamp, 
not a recent one.

In cases B and C, if you edit the XF86Config file, save it, close your 
editor, restart your editor, and open XF86Config again (without starting X 
in the meantime), do you see the changes you made?


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
