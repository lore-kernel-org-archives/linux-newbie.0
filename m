From: Ray Olszewski <ray@comarre.com>
Subject: Re: a trouble with OpenGL (additional information)
Date: Sun, 15 Sep 2002 19:58:13 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020915195458.0221ac70@celine>
References: <200209160910.49335.fox@sby.centrin.net.id>
 <200209160910.49335.fox@sby.centrin.net.id>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209160941.50666.fox@sby.centrin.net.id>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Adwin <fox@sby.centrin.net.id>, linux-newbie@vger.kernel.org
Cc: Learn-linux@yahoogroups.com

At 09:41 AM 9/16/02 +0700, Adwin wrote:
>addtional information :
>
>I have just found in /usr/lib (not in /usr/X11R6/lib)
>
>lrwxrwxrwx    1 root     root           21 Sep 16 08:42 libGLcore.so.1 ->
>libGLcore.so.1.0.3123*
>-r-xr-xr-x    1 root     root      3623820 Aug 28 06:36 libGLcore.so.1.0.3123*
>lrwxrwxrwx    1 root     root           10 Sep 16 08:42 libGL.so ->
>libGL.so.1*
>lrwxrwxrwx    1 root     root           17 Sep 16 08:42 libGL.so.1 ->
>libGL.so.1.0.3123*
>-r-xr-xr-x    1 root     root       283444 Aug 28 06:36 libGL.so.1.0.3123*
>
>can I remove those file into /usr/X11R6/lib  ?

It is difficult to say for certain, but probably not. On my system (Debian 
Sid), the equivalent libraries are located in /usr/X11R6/lib/, but /usr/lib 
contains symlinks to them. This arrangement implies that some applications 
expect to find them in one place, others in the other. So your safer course 
is to put symlinks in /usr/X11R6/lib that point to the actual libraries 
("man ln" if you need to learn how to do this).


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
