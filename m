From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: (OT) Re: Compiling sg.o only (2.4.20)
Date: Fri, 19 Sep 2003 08:01:14 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309190801.14287.pa3gcu@zeelandnet.nl>
References: <5.1.0.14.1.20030918172743.01f7cfe8@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030918172743.01f7cfe8@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Friday 19 September 2003 02:31, Ray Olszewski wrote:
> At 12:10 AM 9/19/2003 +0000, beolach@juno.com wrote:
> >What does EXTRAVERSION do?
> >
> >-- pa3gcu <pa3gcu@zeelandnet.nl> wrote:
> > > edit the Makefile change line 4 from;
> > > EXTRAVERSION =
> > > to
> > > EXTRAVERSION = -1
> > > save file;
>
> It adds another "layer" of naming to the kernel. For example, if the kernel
> is 2.4.21, and you edit the Makefile to read
>          EXTRAVERSION=-mykernel
>
> then the compiled kernel will think its name is 2.4.21-mykernel . The
> kernel's "true" name, that is, not the name of the file that holds the
> kernel.
>
> This affects some minor things, like what the kernel reports in response to
> "uname -a", and some bigger things, like the name of the directory in which
> it looks for modules. This last one probably matters to you ... I don't
> actually recall why Richard made this suggestion.

I suggested it because i consider it the done thing to do when compiling a 
kernel-version-source which is running on the system.
I advised it to Chuck because if he were to recompile his kernel as i 
suggested and do it without an EXTRAVERSION defined and he made a mistake 
during the configuration and or compiling stage which whent unnoticed and he 
copied the new kernel over the old one overwrote the old modules or mixed new 
or old modules toghter in the same modules directory, then he would possable 
blame ME for rendering his system unbootable (at the worst).

This way you end up with a new kernel and an old one if all went well they are 
then both bootable.


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
