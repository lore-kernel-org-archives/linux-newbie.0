From: Ray Olszewski <ray@comarre.com>
Subject: Re: Run Levels - I am just full of questions today :)
Date: Wed, 18 Sep 2002 11:34:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020918112724.024d5d90@celine>
References: <009501c25f3c$5a5c7380$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <009501c25f3c$5a5c7380$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 01:53 PM 9/18/02 -0400, Paul Kraus wrote:
>For my install (redhat 7.3)
>3 Full multi-user mode - I would assume this is the run level where
>everything can run.
>
>However my system boots to
>5 X11 - I assume this is for X-windows. Does that mean the 3 can't run
>xwindows? Or that in 5 there is extra over head if you are barely using
>x-windows?


In a technical senes, runlevels are arbitrary designations, used by init 
(by way of its config file, /etc/inittab) to run different setups easily. 
By custom, runlevel 3 is the standard multi-user, command-line runlevel. 
Similarly, but again only as a custom, runlevel 5 is the native-X runlevel 
(it starts xdm or an equivalent X-based login manager).

You can easily run X from runlevel 3. Log in to a console with the userid 
you want X to run under, and run the program "startx". If your system was 
set up properly, this will start an X server on the first available tty 
(usually tty7 on  typical runlevel-3 setups).

As to overhead on runlevel 5 ... well, running X does use some system 
resources, as does running xdm or an equivalent. In that sense, there is 
"extra" overhead.

PS - Paul, on Linux lists, .vcf attachments are generally viewed as useless 
clutter.

PPS - These sorts of basic questions can often be answered by consulting 
FAQs, man pages, or HowTos.




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
