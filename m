From: Amin <raihan@citech-bd.com>
Subject: Re: switching window managers
Date: Thu, 20 Mar 2003 15:04:31 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030320090431.GB838@localhost.localdomain>
References: <001001c2ee0a$0fd7cdc0$1803a8c0@ets.enterasys.com> <200303191558.h2JFwvF4007542@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200303191558.h2JFwvF4007542@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: simon.doyle@applysystems.co.uk, linux@hartford-hwp.com

On Wed, Mar 19, 2003 at 10:58:57AM -0500, Haines Brown
wrote:

> don't want to become reliant on gui utilities any more
> than I have

``switchdesk'' also works in text-only mode, I believe.
True, though, that it does not show you any choices in that
mode, so you have to supply your desktop environment/window
manager as the argument.

> I suspect it would be easier to modify a rc file to call
> icewm in the first place. 

I use a bash script called ``ice'', which contains:

#!/bin/bash
startx /usr/bin/icewm -- :0

Take a look at Steve Litt's ``Linux Productivity Magazine''
issue about IceWM at
http://www.troubleshooters.com/lpm/200209/200209.htm.  It's
what convinced me to switch to IceWM.

HTH,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
