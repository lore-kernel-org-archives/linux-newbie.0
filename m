From: "Lee Chin" <leechin@mail.com>
Subject: Re: usleep
Date: Wed, 11 Jun 2003 20:04:58 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030612010459.63803.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: cat@zip.com.au
Cc: linux-newbie@vger.kernel.org

Sorry everyone, I had initially posed my for loop wrong... I meant to say for(i = 0; i < 1000; i++).

Mark Hahn clarified the issue and usleep is not actually accurate (provably) and the man page actually has a disclaimer.  To me, it seems like usleep(2000) * 50 itterations actually gives a reasonably accurate 1 second delay on machines from 800 mgz to 2 ghz.

Mark Hahn actually gave me some more accurate code to do usleep too.  Thanks Mark!
Thanks
Lee
----- Original Message -----
From: CaT <cat@zip.com.au>
Date: Thu, 12 Jun 2003 09:21:46 +1000
To: Lee Chin <leechin@mail.com>
Subject: Re: usleep

> On Wed, Jun 11, 2003 at 05:55:02PM -0500, Lee Chin wrote:
> > I would think the following code would wait for 1 second each itteration
> > before printing hello, but it waits way too long.  Replacing the for
> > loop body with a usleep(1000000) works great... what am I missing here?
> 
> usleep = micro sleep = sleep in 1/1000000 second incrememnts.
> 
> -- 
> Martin's distress was in contrast to the bitter satisfaction of some
> of his fellow marines as they surveyed the scene. "The Iraqis are sick
> people and we are the chemotherapy," said Corporal Ryan Dupre. "I am
> starting to hate this country. Wait till I get hold of a friggin' Iraqi.
> No, I won't get hold of one. I'll just kill him."
> 	- http://www.informationclearinghouse.info/article2479.htm

-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
