From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: undefined reference to `_fxstat'
Date: Fri, 26 Sep 2003 11:45:51 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309261145.51640.pa3gcu@zeelandnet.nl>
References: <3F69538E00003E10@mail-bcm01.alestra.net.mx>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F69538E00003E10@mail-bcm01.alestra.net.mx>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ricardo Gomez <rgomez@bancomer.com>, linux-newbie@vger.kernel.org

On Friday 26 September 2003 01:50, Ricardo Gomez wrote:
> I don't know if this is the right place to make this question, but I'm
> having some problems compiling wterm.
>
> When I make ./configure it's seems to be all ok but in the make steep I
> get this:
>
> gcc -o wterm command.o graphics.o grkelot.o main.o menubar.o misc.o
> netdisp.o rmemset.o screen.o scrollbar2.o utmp.o xdefaults.o xpm.o
> -L/usr/X11R6/lib -lSM -lICE -L/usr/X11R6/lib -lXpm -lX11 -lWMaker -lutil
> /usr/X11R6/lib/libXpm.so: undefined reference to `_fxstat'
> collect2: ld returned 1 exit status
>
> I'm sure I have libXpm:
> [pedsgrr2@edsrgr00 wterm-6.2.9]$ ll /usr/X11R6/lib/libXpm.so
> -rwxr-xr-x 1 root root 81K sep 17 16:05 /usr/X11R6/lib/libXpm.so*

Sounds more like an incompatablity problem, in otherwords wrong or too old lib 
versions for the code you are trying to compile.

>
>
> Any idea, TKS.
>

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
