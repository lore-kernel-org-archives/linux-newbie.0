From: 1stFlight <1stflight@ameritech.net>
Subject: Re: The best way to remote administer a Linux server?
Date: Mon, 08 Apr 2002 11:26:08 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CB1B690.7DA05A63@ameritech.net>
References: <FC79D1F4C922D511983400104BC30388019556@DELL1>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ola Theander <ola.theander@connective.se>
Cc: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

How about the best of both worlds? Take a look at this
http://www.uk.research.att.com/vnc/sshvnc.html  it describes how to run  VNC
over SSH, albeit not the fastest way of doing things, it does provide security
and maintain the use of a familiar GUI environment with a variety of clients.


Darryl

Ola Theander wrote:

> Dear subscribers.
>
> I'm planning to host a server running Linux at a remote location, where I
> will need to administer it remotely. The problem is that it will be a bit of
> hassle to access the server physically, therefore I must find a solution
> where I can minimize the need of physical access to the server.
>
> The server will host web pages, run a PostgreSQL database, Q-Mail and some
> other stuff. I would like to be able to manage most (all) administrative
> tasks remotely, like starting a backup, adding/modifying web pages and
> performing database maintenance. All this must be in a secure way to prevent
> unauthorized administration.
>
> My question is, what's the best way to configure this king of remote
> administration? Is it using SSH or should I look at something like remote
> desktop software such as VNC?
>
> Kind regards, Ola Theander
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--
"Though we are not now that strength which in old days moved earth and heaven,
that which we are, we are; one equal temper of heroic hearts made weak by time
and fate but strong in will to strive, to seek, to find and not to yield"

Tennyson's "Ulysses"


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
