From: Robin Doer <robin@robind.de>
Subject: Re: bash_logout -> KDE
Date: Sun, 20 Jul 2003 13:44:34 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307201344.16825.robin@robind.de>
References: <1058650465.1955.3.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1058650465.1955.3.camel@localhost.localdomain>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ramzez <r4mz3z@yahoo.es>, linux-newbie <linux-newbie@vger.kernel.org>

Hello!

Am Samstag, 19. Juli 2003 21:37 schrieb ramzez:
> Hi friends...
>
>   How do I can always execute some script just before logout from any
> KDE session (just like .bash_logout in text mode)?
>
> thanks

Well, It depends, like so often, on the display manager you are using.
For example xdm supports a Xreset-script which runs after terminating an 
user-session. Check the xdm-man page for more detailed information (section 
RESET PROGRAM).

So long,
Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
