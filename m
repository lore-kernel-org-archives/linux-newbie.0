From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: Re: aterm pseudo transparancy tint
Date: Tue, 18 Jan 2005 14:01:29 +0000
Message-ID: <41ED16B9.3080206@comcast.net>
References: <41ED13B5.8000903@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41ED13B5.8000903@comcast.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Jeremy Abbott wrote:

> Does anyone know if there is a way to set the tint color of an aterm 
> to be random?  Right now I am executing the following:
>
> aterm -tr -tint blue -trsb -rv -geometry 179x33 --font4
>
> I know I can write a script to randomize the color if I need to, I'm 
> just not sure how to implement it with the -tint switch.
>
> Thanks,
> Jeremy Abbott
> jkbullfrog@comcast.net
>
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
It just occured to me that I can do this by writing a script to randomly 
choose from a list of aterm calls, rather than just randomizing the tint 
color.  I can do this if need be, but am still curious if just the tint 
color by itself can be randomized.



Jeremy Abbott
jkbullfrog@comcast.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
