From: Adwin <fox@sby.centrin.net.id>
Subject: Re: a trouble with OpenGL (additional information)
Date: Mon, 16 Sep 2002 11:10:48 +0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209161109.46972.fox@sby.centrin.net.id>
References: <200209160910.49335.fox@sby.centrin.net.id> <5.1.0.14.1.20020915195458.0221ac70@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020915195458.0221ac70@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Monday 16 September 2002 09:58, Ray Olszewski wrote:
>
> It is difficult to say for certain, but probably not. On my system (Debian
> Sid), the equivalent libraries are located in /usr/X11R6/lib/, but /usr/lib
> contains symlinks to them. This arrangement implies that some applications
> expect to find them in one place, others in the other. So your safer course
> is to put symlinks in /usr/X11R6/lib that point to the actual libraries
> ("man ln" if you need to learn how to do this).

I have already make a ln (ln -s /usr/X11R6/lib/liGLU.so libGLU.so) in 
/usr/lib.

when I try to compile / make a program, it compiled successfully. But, when I 
try to run the program it always error :

Xlib:  extension "GLX" missing on display ":0.0".
Xlib:  extension "GLX" missing on display ":0.0".
Failed to Create Window : Couldn't find matching GLX visual

Must I re-install Mesa3D & uninstall NVIDIA driver that I have just installed 
? 

-- 
./me
adwin

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
