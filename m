From: Ray Olszewski <ray@comarre.com>
Subject: RE: Using a URL to access a variable background image
Date: Fri, 30 May 2003 17:50:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030530173623.01f4ee30@celine>
References: <5.1.0.14.1.20030530170647.01f626f0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEGKPICNAKILKJKMHCAOEGFECAA.Riley@Williams.Name>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:23 AM 5/31/2003 +0100, Riley Williams wrote:
[...]
>Actually, there's enough detail above for me to make a reasonable guess
>as to what is going on, although the actual URL would confirm it. One of
>the following is happening:
>
>  1. The web page with the image on is setting a value that tells the
>     browser "refetch me in X seconds". This is a standard HTML header,
>     similar to the one that tells web proxies not to cache that page.
>
>  2. The web page with the image on contains some JavaScript that runs
>     automatically on a timer, and refetches just the actual image at
>     regular intervals.
>
>Both of the above are in regular use for just this sort of task. Search
>in Google (or your favourite web search engine) for "WebCam" and explore
>the HTML source of some of the pages you see.

OK. But having said that, what does Haines actually do?

If, for example, the image being fetched always has the same name and is 
fetched by its name (something_or-other.jpg, for example, rather than 
something_or_other.asp or something_or_other.cgi), then Haines could 
probably imitate the functionality he sees faqirly easily,  using a mix of 
crond, wget, and some standard X command (the one that sets the background 
window characteristics, which slips my mind at the moment).

But the actual call may be to a changing image name (if it uses the 
Javascript approach, or perhaps a Java applet, it might incorporate a 
timecode, say), or it may require a cookie, or it may be a cgi or asp call 
that requires get or post options. Any of this would be harder to emulate 
... and that's why I say the devil is in the details.

Anyway ... my sense is that this problem is best split into two parts.

1. Every minute, use crond to run some standard X app to update the 
background image.

2. Immediately after, use crond to run another app that gets the next 
image. This might be wget, or a custom Perl script, or ... well, that part 
depends on the stuff we do not know.

Haines, in his second message, calls the image "constantly changing", and 
that ("constantly") can't be right. He means "frequently", and another 
detail that matters is the frequency ... his first message said "every 
minute". My approach outline assumes he is right and needs only one update 
a minute, the best crond can deliver. If updating actually needs to be 
faster than that, then you'd need a daemon process that runs its own 
internal timer (still no big deal, once we know what we are looking for in 
the way of an http message).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
