From: Ray Olszewski <ray@comarre.com>
Subject: Re: Using a URL to access a variable background image
Date: Sat, 31 May 2003 09:07:47 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030531085308.01f74668@celine>
References: <5.1.0.14.1.20030530173623.01f4ee30@celine>
 <5.1.0.14.1.20030530170647.01f626f0@celine>
 <5.1.0.14.1.20030530173623.01f4ee30@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305311517.h4VFHj75009802@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Actually, Haines, 2 minutes looking at the site tells me exactly what they 
are doing (or at least the part visible on the Web ... I can't see all the 
way behind the curtain). The web page offers plenty of clues as to what is 
going on.

First, update timing controlled by the browser, not the server. IF you look 
at the source, you'll see near the top this line:

         <META HTTP-EQUIV="refresh" CONTENT="60">

This is what Riley was describing as one of the two possible approaches; it 
tells your browser to re-request the page in 60 seconds. If there is some 
variation in updates, that derives from one of several possibilities: (a) 
your browser doesn't time the refresh exactly; (b) connection delays slow 
down the update; (c) the specified refresh time is not always 60 seconds.

Second, what gets refreshed is the entire page, not just the image. Since 
there is not much to the page besides the image, this may not be visually 
apparent just from watching the update process.

Third, the image name changes every minute (or, more exactly, every time 
the image changes). You noted this yourself.

How they update the source is not apparent from what we can see ... but 
that part does not matter to your problem.

So ... were I to automate this process, I would probably do it by way of a 
Perl program that did the following:

1. Use wget (or the appropriate Perl library) to download the page, using 
its URL, to a scratch file.

2. Parse the page text to extract the image name (which I assume will 
always have the form sun*.jpg).

3.  Use wget (or the appropriate Perl library) to download the image file 
to a scratch location.

4. Use some suitable program to display the image on the X display.

Either run this program through crond, every minute, or run it in the 
background continuously, with its own internal timer (a crude one using 
sleep, or a more active one checking the clock ragularly, or a mix of the 2).

The problem with all of this, Haines, is merely what I said before ... 
there is no standard way to do this sort of browser updating. So for any 
site you want to tap into this way, you need to look at the specifics of 
how the site does the updates (or, I suppose, write an update client that 
has the full capabilities of a browser, but this approach seems a bit too 
ambitious to me).

BTW, were I interested in this, I would just look for 2 more sites that do 
something similar, in different parts of the world, and extend the Perl 
program to switch among them based on the time of day ... at least this 
deals with sunrise/sunset limitations, though not stormy weather.

At 11:17 AM 5/31/2003 -0400, Haines Brown wrote:
>Ray,
>
>An interesting puzzle, although perhaps a bit academic. The image I'm
>talking about are those put out by the National Solar Observatory at
>Sacramento Peak, I realized after raising the question that, not only
>is the sun not seen when it's cloudy, but not at night. So as a
>background image, it would be too often not available.
>
>The URL for the perversely curious is: http://solar.spacew.com/sunnow/
>
>But I could imagine that a resolution of the problem would have some
>interesting uses. For example, a video camera aimed at Times Square or
>goldfish would produce diversions. The reason for the sun image was
>that it displayed extraordinarily powerful solar flairs, the effects
>of which just reached earth yesterday and today. For many people,
>that's important to know.
>
> > OK. But having said that, what does Haines actually do?
> >
> > If, for example, the image being fetched always has the same name
> > and is fetched by its name (something_or-other.jpg, for example,
> > rather than something_or_other.asp or something_or_other.cgi), then
> > Haines could probably imitate the functionality he sees faqirly
> > easily,
>
>The images are numbered in sequence. For example, Sun269169.jpg,
>Sun269170.jpg...
>
> > But the actual call may be to a changing image name (if it uses the
> > Javascript approach, or perhaps a Java applet, it might incorporate
> > a timecode, say), or it may require a cookie, or it may be a cgi or
> > asp call that requires get or post options. Any of this would be
> > harder to emulate ... and that's why I say the devil is in the
> > details.
>
>The web page offers no clue how the images are generated. Just an <img
>src=sun369177.jpg... tag for example.
>
> > Anyway ... my sense is that this problem is best split into two
> > parts.
>
> > Haines, in his second message, calls the image "constantly
> > changing", and that ("constantly") can't be right.
>
>True. I mispoke. It updates every minute, but since the site worries
>about whether the updating occurs, it seems to have an internal
>timer. I don't get the impression that the images are uploaded exactly
>every minute on the minute, but rather somewhat haphazardly.
>
>Haines


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
