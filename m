From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: Audacity compile problems
Date: Mon, 25 Nov 2002 18:41:36 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021125174136.GA6535@teamfinders.org>
References: <20021122172858.GA28883@teamfinders.org> <20021124124558.A1415@neutrino.particles.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20021124124558.A1415@neutrino.particles.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: tschulze@teamfinders.org

On Sun, Nov 24, 2002 at 12:45:58PM +0200, Elias Athanasopoulos hunted and pecked out:
> On Fri, Nov 22, 2002 at 06:28:58PM +0100, Theo. Sean Schulze wrote:
> > 
> > /usr/i486-suse-linux/bin/ld: cannot find -lartsc
> > collect2: ld returned 1 exit status
> > make: *** [audacity] Error 1
> 
> Find the artsc library. If you haven't it installed then you have to 
> download the package that contains it (I don't know which is).
> 
> Then use the -L switch in LDFLAGS, so as to contain the directory of
> the artsc lib. Your gcc command line should be something like:
> 
> % gcc ... -L/path/to/libartsc -lartsc ...

I did have /opt/kde3/include/artsc in the Makefile's CFLAGS line.  Unfortunately, that wasn't what ld was looking for.  But, your email jogged my memory about a problem I had had compiling a program I wrote that used libm. The line that mentions -lartsc means that ld is looking for libartsc.[oa].  That was actually in /opt/kde3/lib.  So, what I had to do was add -l/opt/kde3/lib to the Makefile's LIBS line.  That worked to get it to compile.  So far, I haven't gotten it to work yet though.  I tried calling audacity in the compile directory and it exited with a seg fault.  I am going to try doing a `make install` as root and see if that fares any better.

> 
> Elias
> 
> -- 
> http://gnewtellium.sourceforge.net			MP3 is not a crime.	
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
