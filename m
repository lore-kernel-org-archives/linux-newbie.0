From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: setting up X under Slackware
Date: Fri, 16 Aug 2002 18:49:51 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02081618495100.02805@unix.pa3gcu>
References: <20020816.094311.134670320.14.lawson_whitney@juno.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020816.094311.134670320.14.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: lawson_whitney@juno.com, ray@comarre.com
Cc: matthewstapleton@juno.com, linux-newbie@vger.kernel.org

On Friday 16 August 2002 13:12, lawson_whitney@juno.com wrote:
> On Thu, 15 Aug 2002, Ray Olszewski wrote:
> > 3. What errors get reported when startx runs?
>
> To see these, you are probably going to need to do something like:
>
> startx >~/oops 2>&1
>
> ~/oops should then give the X version, driver used, and some interesting
> error messages.
>
> If your shell is bash, you can use
>
> startx &>~/oops

Chances are he needs not to do this, newer versions of Xfree create a log 
automaticly into /var/log
I think it was XFree86-4.0 when that was added as standard.

>
> Lawson

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
