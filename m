From: Eric Bambach <eric@cisu.net>
Subject: Re: head command with make in bash shell
Date: Mon, 29 May 2006 21:12:47 -0500
Message-ID: <200605292112.47219.eric@cisu.net>
References: <4479858C.5090601@laposte.net> <447985ED.7060904@laposte.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <447985ED.7060904@laposte.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ali shahrokni <ali.shahrokni@laposte.net>
Cc: linux-newbie@vger.kernel.org

Hi,

	Try saving the output to a file then analyzing it.

make &> output.txt; head output.txt

On Sunday 28 May 2006 06:13, ali shahrokni wrote:
> Hello,
> Could anyone tell me how I can see the first part of the "make" command
> log using "head" in a bash shell?!
> i.e. what is the bash equivalent of the csh " make | & head " command?
> thanks,
> Ali
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Thanks,

Eric
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
