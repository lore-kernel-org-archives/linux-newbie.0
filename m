From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: a trouble with OpenGL (additional information)
Date: Mon, 16 Sep 2002 06:29:04 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02091606290404.03392@unix.pa3gcu>
References: <200209160910.49335.fox@sby.centrin.net.id> <5.1.0.14.1.20020915195458.0221ac70@celine> <200209161109.46972.fox@sby.centrin.net.id>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209161109.46972.fox@sby.centrin.net.id>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Adwin <fox@sby.centrin.net.id>, linux-newbie@vger.kernel.org

On Monday 16 September 2002 04:10, Adwin wrote:
> On Monday 16 September 2002 09:58, Ray Olszewski wrote:
> > It is difficult to say for certain, but probably not. On my system
> > (Debian Sid), the equivalent libraries are located in /usr/X11R6/lib/,
> > but /usr/lib contains symlinks to them. This arrangement implies that
> > some applications expect to find them in one place, others in the other.
> > So your safer course is to put symlinks in /usr/X11R6/lib that point to
> > the actual libraries ("man ln" if you need to learn how to do this).
>
> I have already make a ln (ln -s /usr/X11R6/lib/liGLU.so libGLU.so) in
> /usr/lib.
>
> when I try to compile / make a program, it compiled successfully. But, when
> I try to run the program it always error :
>
> Xlib:  extension "GLX" missing on display ":0.0".
> Xlib:  extension "GLX" missing on display ":0.0".
> Failed to Create Window : Couldn't find matching GLX visual
>
> Must I re-install Mesa3D & uninstall NVIDIA driver that I have just
> installed ?

I belive you need to read the documentation witch came with the NVIDIA 
driver, further more if you read and interpret the error message above it 
says, Xlibaray can't find the "GLX" extention module in your display 
enviroment.

In other words edit your XF86Config file as per the NVIDIA doc's.
Under the "modules" section" you need;
# This loads the GLX module
    Load       "glx"


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
