From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: disabling X display Manager
Date: Wed, 11 Jun 2003 22:30:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306112230.02595.pa3gcu@zeelandnet.nl>
References: <20030611.160313.-280611.0.matthewstapleton@juno.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030611.160313.-280611.0.matthewstapleton@juno.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matthew Stapleton <matthewstapleton@juno.com>, linux-newbie@vger.kernel.org

On Wednesday 11 June 2003 22:03, Matthew Stapleton wrote:
> Hello,
>
> When I boot into linux (I have a dual boot system) the XDM is
> automatically started.  What file or files do I need to modify in order
> to disable this? Is there a linux equivalent to DOS's autoexec.bat?

Depends on which distor you use, in slackware you edit /etc/inittab and make 
the default runlevel 3 as in;

id:3:initdefault:

Its around line 24 of the file.

Some other distros work the same, last time i commented on this it seemed some 
distos do it in other ways, i am sure the users of those distros will comment 
and help you further on your way.

Your other question is a script file with executable permissions, an example 
would be.
Create a file called my-first-script,

#!/bin/sh

/bin/echo "This is my first try at a script..."

/bin/date

/bin/echo "That is tdays date"

close file, change permissions;
chmod a+x my-first-script
Now type ./my-first-script

There is a man page for this sort of thing, 
man bash

> Thanks,
> Matthew Stapleton
> %%%%%%%%%%%%%%%%%%
> http://webpages.marshall.edu/~staple12
> %%%%%%%%%%%%%%%%%%

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
