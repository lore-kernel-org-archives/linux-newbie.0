From: lawson_whitney@juno.com
Subject: Re: Getting c/assembler listings
Date: Tue, 29 Oct 2002 21:45:01 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021029.222550.134682184.1.lawson_whitney@juno.com>
References: <02102915043700.00397@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02102915043700.00397@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: kevin.curtis@farsite.co.uk, linux-newbie@vger.kernel.org

On Tue, 29 Oct 2002, pa3gcu wrote:

> On Tuesday 29 October 2002 12:03, Kevin Curtis wrote:
> > Hi,
> > 	I hope this question is not too technical.  When an oops message is
> > generated and decoded with ksymoops, how do I get an assembler listing of
> > the module that caused the problem so I can see where in my program the
> > error occurred.  The ksymoops output seems to be bytes of code offset from
> > the start of a function.  Do I use a switch in my makefile?  Will the

Yes.  The gcc flag to get an assembly listing is -Wa,-a
so you could put that in your makefile, if you like.  That causes gcc to
pass the option -a to the assembler.

> > listing have offsets in it from the start of the module or the start of
> > each function?  Is there any correlation to line numbers in the original .c
> > file?

The start of each function.  If the C was compiled with the -g option,
source line numbers are - in fact the entire source is - available to
gdb or any other runtime debugger.
>
> You can run 'gdb' on your running kernel.
> You will need to do some things beforehand, its all explained in
> /usr/src/linux/README, the part about "If something goes wrong".
>
> I am not so well up on gdb but i belive you can run it on a module itself
> altho' i have never tryed dthat.
>
> >
> >
> > Thanks
> >
> > Kevin
>
>

--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
