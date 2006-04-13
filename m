From: Mac <macduineabhan@yahoo.com>
Subject: Re: Problems with Scanner class in Blackdown JDK
Date: Wed, 12 Apr 2006 17:04:12 -0700 (PDT)
Message-ID: <20060413000412.63671.qmail@web37802.mail.mud.yahoo.com>
References: <efc7f7d00604080045r2ab6fa1bm4255e9aca88d722c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <efc7f7d00604080045r2ab6fa1bm4255e9aca88d722c@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I figured out that the problem was that my system
wasn't using Sun's JDK as the default, even though it
said it was using Sun's JVM.  I ended up having to do
a few things manually, instead of using the Gentoo
java-config tool, and it finally worked.

Thanks for the help!

Mac


>
http://java.sun.com/j2se/1.5.0/docs/api/java/util/Scanner.html
> says
> java.util.Scanner has only been present in the API
> since version 1.5.
> You need to use the latest version of the JDK.
> 
> --


__________________________________________________
Do You Yahoo!?
Tired of spam?  Yahoo! Mail has the best spam protection around 
http://mail.yahoo.com 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
