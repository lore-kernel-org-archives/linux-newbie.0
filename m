From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Linux install error
Date: Sun, 27 Jul 2003 17:37:08 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307271737.08903.pa3gcu@zeelandnet.nl>
References: <30ac01430adf65.30adf6530ac014@homemail.nyu.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <30ac01430adf65.30adf6530ac014@homemail.nyu.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Anshuman Singh Rawat <asr245@nyu.edu>, linux-newbie@vger.kernel.org

On Sunday 27 July 2003 04:33, Anshuman Singh Rawat wrote:
> Traceback (Innermost last)
>     File "/usr/bin/anaconda", line 487, in ?
>         from splashscreen import splashScreenShow
>     File "/usr/bin/anaconda/splashscreen.py", line 21, in ?
>         from gtk import *
>     File "/usr/lib/python1.5/site-packages/gtk.py", line 22, in ?
>         from _gtk
> ImportError: /usr/lib/libgtk-1.2.so.0:invalid ELF header
> install exited abnormally.
> sending termination signals...done
> sending kill signals...done

Are you sure that you installed "gtk" and its libs.??
All the errors concern gtk.

> Any idea what the problem mite be?
>
> -Anshuman

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
