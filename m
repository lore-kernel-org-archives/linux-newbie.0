From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Skype wont't open
Date: Sat, 5 Mar 2005 08:53:56 +0100
Message-ID: <200503050853.57070.pa3gcu@zeelandnet.nl>
References: <20050305010755.91E701CCD6@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <20050305010755.91E701CCD6@heisspf>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux <linux-newbie@vger.kernel.org>

On Saturday 05 March 2005 02:07, Peter H. wrote:
> Hi,
>
> Since it is assumed that the problem is in the /X11R6/lib libraries of
> slackware I replaced them with the ones from Fedora 3. It did not change
> the error message:

Since you seem to be the only slackware user with this particular problem one 
must presume its your system at fault and not slackware.
Installing incompatable system libs is not such a wise thing to do, you will 
break something or other in the process.

> symbol lookup error: /usr/lib/qt/lib/libqt-mt.so.3: undefined symbol:
> XkbSetPerClientControls

If one tryed to insmod a kernel module which depends on another module which 
has not yet been loaded one will get an undefined symbol error, that means 
modules need to be loaded in a certain oder to avoid that problem.
Now loading libs is eachtly the same, define them incorrectly and undefined 
symbols will appier.

I am certain you will get more help from the folks on the skype forums site.

http://forum.skype.com/

>
> Regards
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
