From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Deny Remote User Logins
Date: Sun, 28 Jul 2002 06:18:33 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02072806183307.00307@unix.pa3gcu>
References: <200207271736.15360.1stflight@ameritech.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207271736.15360.1stflight@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 1stFlight <1stflight@ameritech.net>, linux newbie <linux-newbie@vger.kernel.org>

On Saturday 27 July 2002 21:36, 1stFlight wrote:
>  I'm running RH7.3 allowing ssh remote access only, I want to create a user
> account that can log on locally (console) but not remotely. Is this
> possible?

Yes, or at least according to 'man sshd', if you had read the man page you 
would have seen that there is a keyword of "DenyUsers".
Remember that there are other ports which accept incomming connections from 
users, you will need to close them, providing of course that you have not 
done so already.

I suggest you read the man page for sshd you will then see what you need to 
do.

>
> Darryl

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
