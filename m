From: Peter Garrett <peterg@fishinternet.com.au>
Subject: Re: multiple X sessions
Date: Tue, 09 Dec 2003 13:54:06 +1100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1070938446.10356.7.camel@DebiAnarchist>
References: <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

One way is to type at the prompt:

startx -- :1

which will start x on tty8 if tty7 is the default.
Of course, you can also do

startx -- :2 and so on but -- :1 would be the usual second session.

Hope this helps.
 To switch between them you would type alt-F8 0r alt-F7 or perhaps
ctrl-alt-F7 or F8 if already in X. The numbers vary with distributions
but those are the usual ones AFAIK.

On Tue, 2003-12-09 at 12:46, Karthik Vishwanath wrote:
> Hello,
> 
> Could someone point out how I could setup my machine so that a second user
> may log in to the machine and run a 'startx' even though the first user is
> logged in and has an active X session running, without killing the first
> user's X session?
> 
> 
> Thanks,
> 
> -K
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
