From: Ray Olszewski <ray@comarre.com>
Subject: Re: CDDA ->MP3 Conversion
Date: Mon, 15 Jul 2002 07:40:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020715073143.021531b0@celine>
References: <20020715.081447.-455505.1.matthewstapleton@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020715.081447.-455505.1.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Matthew Stapleton <matthewstapleton@juno.com>
Cc: linux-newbie@vger.kernel.org

At 08:14 AM 7/15/02 -0400, Matthew Stapleton wrote:
>How might one go about ripping a CD into OGG files?

[old stuff deleted]

The actual ripping part is the same as with MP3; you use an app that 
converts the CD tracks into WAV files. The change is at the next step, 
compressing the WAV files into ogg format instead of MP3.

Exactly how you do it probably depends on what is prepackaged for whichever 
Linux distro you use. I use a "super-app" called abcde, which is just a 
bunch of wrappers (in Perl, I believe) that runs a series of other apps to 
download CD info (wget), rip to WAVs (cdparanoia), compress to MP3 (any mp3 
encoder) or OGG (oggenc), create a playlist,  put the results someplace 
sensible, and clean up the temporary files. Installing the Debian version 
of abcde gets all the other stuff installed (thanks to a good dependency 
system); YMMV on that, depending on your distro.





--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
