From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: starting X with different XF86Configs
Date: Tue, 20 Aug 2002 15:56:19 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02082015561902.00695@unix.pa3gcu>
References: <Pine.LNX.4.44.0208201031250.26541-100000@localhost.localdomain>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0208201031250.26541-100000@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James & Tatiana Miller <jamtat@aaahawk.com>, Linux <linux-newbie@vger.kernel.org>

On Tuesday 20 August 2002 15:39, James & Tatiana Miller wrote:
> On Tue, 20 Aug 2002, Matthias Schweinoch wrote:
> > don't know if this is considered a "bad approach", but another way to do
> > this is to simply name your working XF86Config files appropriately and
> > then just create a symlink to whichever file it is your using.
>
> Hmmm. This I don't understand. What would be the purpose of symlinking,
> and from where (i.e., what point in the Linux startup process) would the
> symlink get used? Are you talking about creating a symlink pointing to the
> desired XF86Config and calling it "XF86Config" each time I am preparing to
> start X? I can see how that would work, but it seems about the same amount
> of time and trouble as renaming XF86Configs each time I wish to start X. I
> guess I'm looking for a more elegant and less time-consuming solution. So
> far, Ray's looks best.
>
> Thanks, James


Use your imaganation, create a script, call it what you want, i will call it 
GoX

#!/bin/sh

case "$1" in

  1) 
	/bin/ln -s /etc/X11/XF86Config-1 /etc/X11/XF86Config
	/usr/X11R6/bin/startx
	;;
  2)
	/bin/ln -s /etc/X11/XF86Config-2 /etc/X11/XF86Config
	/usr/X11R6/bin/startx
	;;
  *)
	/bin/echo "USAGE: GoX 1 or GoX 2 "
esac

#------------------------------

No use the command;
'chmod a+x GoX'
To make it executable.

Its all so easy...

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
