From: Ray Olszewski <ray@comarre.com>
Subject: Re: xcdroast errors
Date: Sun, 04 Apr 2004 18:44:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040404182705.01f3a678@celine>
References: <200404022058.54255.pa3gcu@zeelandnet.nl>
 <20040402153836.GA27294@panix.com>
 <200404022058.54255.pa3gcu@zeelandnet.nl> <20040405005616.GA18489@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040405005616.GA18489@panix.com>
References: <200404022058.54255.pa3gcu@zeelandnet.nl>
 <20040402153836.GA27294@panix.com>
 <200404022058.54255.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:56 PM 4/4/2004 -0400, Rei Shinozuka wrote:

>just a more complete rendering of the story.  i also built xcdroast
>from source and am running version 15 instead of 14, but i still get
>what looks like a spurious error:
>
>http://www.shinozuka-family.com/xcdroast/
>
>thanks,
[old stuff deleted]

What exactly are you referring to when you say "a spurious error"? If the 
software neither reports nor logs any errors, where does a *spurious* error 
appear?

Does the CD work after burning or not? If it does not work, how does it 
fail? If it does work, than what are you asking us about?

In looking at your screenshots, I notice that xcdroast reports the ISO 
source image as (I think - the text is a bit blurry so I may be misreading) 
"803 MB / 79:38:16", requiring an 80-minute CD, not a standard 700 MB/ 
70-minute CD. I also note that you are copying a CD from another drive, not 
burning from an ISO, as I had previously assumed.

Are you using appropriate media? If not, cdrecord is probably quitting when 
it runs out of room on the target disk (after a bit over 700 MB, that is), 
not when the ISO image is completedly written. If this is what's happening, 
I'm a bit suprised that nothing -- not cdrecord or xcdroast -- generates an 
error message ... but it's been a very long time since I tried to burn an 
oversize ISO, so I don't actually recall how cdrecord deals with size overruns.

In an earlier message, I asked you if the problem occurred with smaller ISO 
images or only ones that pushed the allowable size. You said you'd test 
that. Did you? To what effect?

If you copy the existing CD to an ISO file, what is its size?

Your earlier message also seemed to say that this hardware worked fine with 
some CD writing software that ran on some version of Windows. If you can 
still run that setup, will it copy the exact same Knoppix CD successfully?

I did check and verified that standard Knoppix ISO images are 700 MB, so if 
there is a size problem with this duplication, it is probably something 
non-standard about the image on the source CD.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
