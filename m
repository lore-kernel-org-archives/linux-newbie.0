From: Ray Olszewski <ray@comarre.com>
Subject: Re: Source Install - Service Start stop restart
Date: Thu, 19 Sep 2002 08:27:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020919080150.024c1010@celine>
References: <000801c25fe1$b39e1fc0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000801c25fe1$b39e1fc0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 09:37 AM 9/19/02 -0400, Paul Kraus wrote:
>When installing an app by source I have notice the don't usually include
>the startup scripts. Samba is an example of this. How can get/write a
>script that will all for the "service app start,stop,restart" to work
>for programs I install from source. I know I can write a script but
>looking at the ones that the rpms install(still using samba as my
>example) they seem pretty involved.

There is no single, *general* answer to this question.

As to getting scripts ... for the most part, these are added by the 
maintainers of the packaging system, not the individual authors (or current 
maintainers) of the programs. This makes sense in a way, because the init 
scripts have to run in the right sequence, and interact proprely. The 
details of that are distro related, so (for example) the part of package 
install that creates the rc.*/S* symlinks is somewhat distro specific.

That said ... where are you getting your source from? Debian source 
packages (the system I know best) include a ./debian directory. One of the 
things in it is the appropriate init.d script (for packages that require 
one). If you are using RH source RPMs, you might see if they include 
something similar. (If not, shame on Red Hat; it's not hard to include this.)

As to writing them ... I'm not quite sure what you are asking. The only way 
to write shell scripts is to learn how to write shell scripts. If you do a 
standard Google search, you'll find plenty of tutorial sites. Startup 
scripts can be a lot simpler then what you see installed by packages -- the 
much simpler Slackware init script sequence is probably still an example of 
this (it used to be, anyway) -- but only if you are willing to skip the 
error checking that most of the convoluted-looking parts are doing.

In the end, this is one reason why I avoid installing from source as a 
*routine* approach. I only do it for kernels and for packages in areas I am 
particularly involved in (enough to want to *understand* the source, not 
just "make" it), or occasionally for packages that distribute as source 
only, perhaps for legal reasons. For routine apps, I use my distro's 
packaging system. This is only one of many reasons for doing so (the most 
important one for me is that the Debian maintainers do a very good job of 
staying on top of security updates).

BTW, one of the typos in your message actually stumps me. I don't know what 
you meant to write here: "a script that will all for the "service app 
start,stop,restart" to work". I assume "all" is a typo, but for what? 
"Call", my immediate guess, doesn't really make the sentence make sense.


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
