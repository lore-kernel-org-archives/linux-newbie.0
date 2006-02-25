From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Convert .avi to .vob/Linux only??
Date: Sat, 25 Feb 2006 15:34:23 -0500
Message-ID: <20060225203423.GA2241@lnx2.kvinet.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


> Greetings; Ray, Conway, Stephen and Artures--Appreciate!!. This is
> going to take some time; see below..
> 
> 
> On 02-24, Ray Olszewski wrote:
> > Hal MacArgle wrote:
> > >	Greetings; I just spent two hours trying to find software or
> > >information converting video .avi files to .vob, in order to burn
> > >some personal .avi files to a DVD that's playable on a stand alone
> > >DVD player.. I have the files in .avi format and a Plextor DVD
> > >burner, etc.. MPlayer lets me view them on the computer monitor of
> > >course..
> > >
> > >	Interesting in that this is the first time I've noticed when
> > >accessing www.google.com/linux, that I get linked to 100% of the
> > >MSWindows stuff.. I gave up..
> > >
> > >	Anyone have any suggestions?? TIA..
> > >
> > 
> > How did you use the Google site? I searched there on "vob create" and 
> > got, with one intervening step, to a Sourceforge project called 
> > "Videotrans" that says it is "a set of scripts that converts a movie 
> > file in any format that mplayer understands (AVI, etc) to a DVD 
> > compatible VOB file, including all the necessary conversions. Further, 
> > an automatic DVD menu generator is provided."
> 
> 	I searched for 'convert .avi to .vob' on/ google.com/linux..
> 
> 
> 
> 
> > I cannot say how good this project is ... I've never tried to convert 
> > any of my home video to standard DVD format (and it's not in the Debian 
> > archive, which it why it is new to me) ... but it certainly is not a 
> > Windows response. (I did see some of them, BTW, referencing WINE.)
> > 
> > An entry in this thread by "redbeard" --
> > 
> > http://www.linuxforums.org/forum/gaming-games-multimedia-entertainment/52379-mpeg-dvd-vob-format-conversion.html
> > 
> > -- was how I found it (this thread was what the Google search itself 
> > returned, near the top). His description makes it sound pretty 
> > functional. Other messages in this thread mention a couple of other 
> > possibilities too.
> 
> 	I will try that site but it looks like I've got a long run
> ahead of me.. <grin>
> 
> 
> 
> 
> > Perhaps if you give videotrans a test run, you can tell us how good it 
> > actually is?
> 
> 	I fetched videotrans-1.4.0 from SF and configure balked right
> off the bat requiring ffmpeg, which I had on another machine so I
> installed it (trial because I dont know which version.) Configure
> balked again requiring mpeg2enc, which I don't have.. Thought I'd
> better peruse the configure file and sure enough needed a bunch more;
> png2yuv, jpeg2yuv, dvdauthor's spumux which, in turn needs qt, which
> I have and imagemagicks convert which I have.. Of course mplayer 1.0,
> pre7, try2 is needed and that in turn, when I installed it, needed no
> less than 8 libs; 7 easy and 1 hard to find.. Bottom line, I'm going
> to need so many libraries there wont be enough room on the HD for the
> video files.. <grin>  Plenty of learning power there and a lot of
> time, for me... Get to work. :^).. A far cry from running CP/M on a
> Commodore 128, eh?? I may be pushing my envelope..
> 
> -- 
> 
>     Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
> .
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
