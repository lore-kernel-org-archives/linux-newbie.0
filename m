From: "Jonathan Kallay" <yoni@kallay.net>
Subject: Re: slightly off topic: remotely displaying Mac OS X applications
Date: Sun, 12 Jan 2003 22:25:48 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <017401c2bab3$77caffe0$6400a8c0@00arc>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


 I changed the display variable with the command "setenv DISPLAY
 xxx.xxx.xxx.xxx:0.0" (OS X's tcsh doesn't use set/export commands).  I
added
 the host to the list of allowed hosts by running xhost.  I've successfully
 launched remote applications on another computer that have appeared on my
 screen, so the steps should be the right ones...
> ----- Original Message -----
> From: <whitnl73@juno.com>
> To: <linux-newbie@vger.kernel.org>
> Cc: <yoni@kallay.net>
> Sent: Sunday, January 12, 2003 4:31 PM
> Subject: Re: slightly off topic: remotely displaying Mac OS X applications
>
>
> >
> > On Sun, 12 Jan 2003, Jonathan Kallay wrote:
> >
> > > My downstairs neighbor has a computer running Mac OS X, which as we
all
> know
> > > has a UNIX backend.  For kicks, I started an X server, telnetted into
> his
> > > machine, changed the DISPLAY variable to my display, and tried
launching
> a
> > > GUI application.  The application did in fact launch, but on his
screen,
> not
> > > in my X server.  Any ideas as to why this happened?
> > >
> > How did you change the DISPLAY variable?  Did you forget to export it?
> > Probably your X server will not allow apps on another machine to use
> > your display (that is generally how X servers are set up).
> >
> > It is much easier to run remote X applications using ssh, which will
> > handle them automagically, but if you can't use ssh, there is a
> > Remote-X-Apps-mini-HOWTO that covers the details of X security.
> >
> > If you have the howtos installed, it is probably on your machine, or you
> > can look here:
> >
> >
> > Remote X Apps mini-HOWTO: Introduction (p2 of 2)
> >
> >    The most recent version of this document is always available on WWW
at
> >    http://www.xs4all.nl/~zweije/xauth.html. It is also available as the
> >    Linux Remote X Apps mini-HOWTO at
> >    http://sunsite.unc.edu/LDP/HOWTO/mini/Remote-X-Apps. Linux
> >    (mini-)HOWTOs are available by http or ftp from sunsite.unc.edu.
> >
> > what was sunsite.unc.edu is now calling itself
> > www.ibiblio.org (and ftp.ibiblio.org, BTW
> >
> >
> > Lawson
> > --
> > ---oops---
> >
> >
> >
> >
> > ________________________________________________________________
> > Sign Up for Juno Platinum Internet Access Today
> > Only $9.95 per month!
> > Visit www.juno.com
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> >
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
