From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Using a URL to access a variable background image
Date: Sat, 31 May 2003 11:17:45 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305311517.h4VFHj75009802@hartford-hwp.com>
References: <5.1.0.14.1.20030530170647.01f626f0@celine> <5.1.0.14.1.20030530173623.01f4ee30@celine>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20030530173623.01f4ee30@celine> (message from Ray
	Olszewski on Fri, 30 May 2003 17:50:53 -0700)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Ray,

An interesting puzzle, although perhaps a bit academic. The image I'm
talking about are those put out by the National Solar Observatory at
Sacramento Peak, I realized after raising the question that, not only
is the sun not seen when it's cloudy, but not at night. So as a
background image, it would be too often not available.

The URL for the perversely curious is: http://solar.spacew.com/sunnow/

But I could imagine that a resolution of the problem would have some
interesting uses. For example, a video camera aimed at Times Square or
goldfish would produce diversions. The reason for the sun image was
that it displayed extraordinarily powerful solar flairs, the effects
of which just reached earth yesterday and today. For many people,
that's important to know.

> OK. But having said that, what does Haines actually do?
> 
> If, for example, the image being fetched always has the same name
> and is fetched by its name (something_or-other.jpg, for example,
> rather than something_or_other.asp or something_or_other.cgi), then
> Haines could probably imitate the functionality he sees faqirly
> easily,

The images are numbered in sequence. For example, Sun269169.jpg,
Sun269170.jpg...

> But the actual call may be to a changing image name (if it uses the
> Javascript approach, or perhaps a Java applet, it might incorporate
> a timecode, say), or it may require a cookie, or it may be a cgi or
> asp call that requires get or post options. Any of this would be
> harder to emulate ... and that's why I say the devil is in the
> details.

The web page offers no clue how the images are generated. Just an <img
src=sun369177.jpg... tag for example.

> Anyway ... my sense is that this problem is best split into two
> parts.
 
> Haines, in his second message, calls the image "constantly
> changing", and that ("constantly") can't be right.

True. I mispoke. It updates every minute, but since the site worries
about whether the updating occurs, it seems to have an internal
timer. I don't get the impression that the images are uploaded exactly
every minute on the minute, but rather somewhat haphazardly.

Haines 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
