From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: Re: Linux install error
Date: Sun, 27 Jul 2003 13:26:17 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <305c5c33059685.3059685305c5c3@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

I got this error during startup when i booted from the cdrom. This error occured before it asked me anything about installing anything! 
I dont know if that answers your question.

----- Original Message -----
From: pa3gcu <pa3gcu@zeelandnet.nl>
Date: Sunday, July 27, 2003 11:37 am
Subject: Re: Linux install error

> On Sunday 27 July 2003 04:33, Anshuman Singh Rawat wrote:
> > Traceback (Innermost last)
> >     File "/usr/bin/anaconda", line 487, in ?
> >         from splashscreen import splashScreenShow
> >     File "/usr/bin/anaconda/splashscreen.py", line 21, in ?
> >         from gtk import *
> >     File "/usr/lib/python1.5/site-packages/gtk.py", line 22, in ?
> >         from _gtk
> > ImportError: /usr/lib/libgtk-1.2.so.0:invalid ELF header
> > install exited abnormally.
> > sending termination signals...done
> > sending kill signals...done
> 
> Are you sure that you installed "gtk" and its libs.??
> All the errors concern gtk.
> 
> > Any idea what the problem mite be?
> >
> > -Anshuman
> 
> -- 
> If the Linux community is a bunch of theives because they
> try to imitate windows programs, then the Windows community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 
> 
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
