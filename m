From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: installing glut-3.7.tar.gz
Date: Sun, 29 Sep 2002 12:35:49 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02092912354902.00280@unix.pa3gcu>
References: <200209291842.15605.fox@sby.centrin.net.id>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209291842.15605.fox@sby.centrin.net.id>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Adwin <fox@sby.centrin.net.id>, linux-newbie@vger.kernel.org

On Sunday 29 September 2002 11:45, Adwin wrote:
> Hi ....
>
> 	I just tried to install a glut-3.7 that i just got from opengl website.
> My computer using Mandrake 8.2 with Nvidia Drivers : NVIDIA_GLX_3123 and
> NVDIA_kernel 3123 too. It installed successfully on my system (I have test
> with some openGl applications and they worked well).
> Right now, I want to install glut (GL Tollkit Utility). I have been read
> the manual (and also NVIDIA-OpenGL mini howto). But I have problem with my
> previous Mesa, it was libMesaGLU1-devel-4.0.1-4mdk (actually with his glu.h
> file)
>
> everytime I tried to compile glut-3.7, I always got error message like :
> ---------------------------------------------------------------------------
>-------------------------- [here is brief of error when I tried to
> compile/execute
> ../glut3.7/lib/glut/Makefile ]
>
> rm -f glut_8x13.o
> gcc -c -O2 -m486 -ansi -fPIC   -I../../include -I../.. -I/usr/X11R6/include
> -Dlinux -D__i386__ -D_POSIX_SOURCE -D_BSD_SOURCE -D_GNU_SOURCE -DX_LOCALE
> -DFUNCPROTO=15 -DNARROWPROTO    glut_8x13.c
> In file included from ../../include/GL/glut.h:59,
>                  from glutbitmap.h:10,
>                  from glut_8x13.c:5:
> /usr/X11R6/include/GL/glu.h:261: parse error before `*'
> /usr/X11R6/include/GL/glu.h:263: syntax error before `void'
> /usr/X11R6/include/GL/glu.h:263: warning: data definition has no type or
> storage class
> /usr/X11R6/include/GL/glu.h:264: syntax error before `void'
> /usr/X11R6/include/GL/glu.h:264: warning: data definition has no type or
> storage class
> /usr/X11R6/include/GL/glu.h:265: syntax error before `void'
> /usr/X11R6/include/GL/glu.h:265: warning: data definition has no type or
> storage class
> /usr/X11R6/include/GL/glu.h:266: syntax error before `void'
> /usr/X11R6/include/GL/glu.h:266: warning: data definition has no type or
> storage class
> /usr/X11R6/include/GL/glu.h:267: syntax error before `GLint'
> /usr/X11R6/include/GL/glu.h:267: warning: data definition has no type or
> storage class

parse error means a syntax error, it means that something is wrong on or 
before line 261 and it is before an asterisk.

I lookinto my glu.h i have version 1.2 from 2001/04/03 (see top of glu.h) 
lines 258 to 264 look like;

/* Internal convenience typedefs */
typedef GLvoid (*_GLUfuncptr)(GLvoid);
 
extern void gluBeginCurve (GLUnurbs* nurb);
extern void gluBeginPolygon (GLUtesselator* tess);
extern void gluBeginSurface (GLUnurbs* nurb);
extern void gluBeginTrim (GLUnurbs* nurb);

Hope this helps.


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
