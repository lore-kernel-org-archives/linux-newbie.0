From: John Kelly <bilbo@waitrose.com>
Subject: Re: how-to: one command for repeat OR iterate shell OR bash command
 delay OR interval
Date: Sun, 17 Jul 2005 06:35:08 +0100
Message-ID: <20050717063508.302cbafe.bilbo@waitrose.com>
References: <200507171157.35066.admarshall@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200507171157.35066.admarshall@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
On Sun, 17 Jul 2005 11:57:34 +0700
AD Marshall <admarshall@gmail.com> wrote:

> Is there already one bash command to do what the following script
> does (poorly or incompletely), ie repeat "command" indefinitely
> every "x" seconds:
> 
> #!/bin/sh
> # usage: repeat [x] <command>
> while true ; do $2 ; sleep $1 ; done
> 
> < rest deleted > 

The watch command might tbe what you want.
Or maybe not, if you don't want anything output to screen.
 
Try man watch for details.

regards,

John Kelly
 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
