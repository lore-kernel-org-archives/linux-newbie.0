From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: striking X server
Date: Sun, 10 Nov 2002 12:32:40 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021110123240.B25979@neutrino.particles.org>
References: <200211100419.gAA4Jpq08040@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211100419.gAA4Jpq08040@ev6.be.wanadoo.com>; from hammer@revobild.net on Sun, Nov 10, 2002 at 10:18:19AM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org

On Sun, Nov 10, 2002 at 10:18:19AM +0000, Heimo Claasen wrote:
> AND - I almost forgot - there was indeed a nearly 600 M(!)B large
> "core.nnnn" file somewhere on that HD's system ... only that, as far
> as I could remember, THERE HAS NOT BEEN ANY program crash I _remember_
> of with that system in the time preceding the sudden strike of the
> X server.

Just do:

% gdb --core=/path/to/core.nnnn

And you'll get the name of the application that crashed (most probably it
is your X Server). 

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
