From: Ray Olszewski <ray@comarre.com>
Subject: Re: video editing
Date: Wed, 18 Sep 2002 17:12:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020918170432.024ec8d0@celine>
References: <6240DAD5.69D267D2.0006BEFC@netscape.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6240DAD5.69D267D2.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: neil t <wa4chq@netscape.net>, linux-newbie@vger.kernel.org

At 07:13 PM 9/18/02 -0400, neil t wrote:
>Greetings-
>Is there hardware available for linux for grabbing video
>from my camcorder or vcr?  I have something already but it has
>to be used with .....(windoze....).......ugggg

Yes. A lot of Windows vidcap hardware works with Linux. I use the Hauppauge 
WinTVGo card here, with the video4linux kernel subsystem. It tunes and 
captures TV, and it has a composite-video input as well. Linux supports 
most (not quite all) of the Hauppauge and ATI vidcap cards, as well as others.

I know from my reading that v4l also supports some of the cards that 
interface digital cameras (USB? FireWire? not sure), but I don't know the 
details (since I don't own that stuff). A search on "video4linux" will let 
you track them down.

There is also plenty of applications software. Here, I use the avifile 
libraries with a (currently unsupported, unfortunately ... only the Debian 
version for it is up to date, I believe) application called "vcr" to do 
vidcaps. There are many to choose from ... xawtv is a well-known one, and 
avifile itself has capture and playback utilities. For playback, I use 
xine; mplayer is another popular application.

This is just an outline of part of what is available. The usual searches, 
both on google and (probably) in the database of your distro's package 
list, will turn up plenty more. Hope this is enough to get you started.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
