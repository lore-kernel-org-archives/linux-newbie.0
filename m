From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Cinelerra--Video Editing??
Date: Tue, 1 Aug 2006 11:02:44 -0400
Message-ID: <20060801150244.GA1134@lnx2.kvinet.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com> <449346E4.8000702@comarre.com> <20060617194133.GA1262@lnx2.kvinet.com> <4494F3BD.5090102@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4494F3BD.5090102@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 06-17, Ray Olszewski wrote:
> Since you are using mplayer anyway ... have you tried using mencoder for 
> the captures? Try a command something like this (assuming you're 
> capturing from tapes via NTSC video and sound-card audio):
> 
> 	mencoder tv:// -tv driver=v4l:device=/dev/video0:input=1: \
> 		immediatemode=1:forceaudio:adevice=/dev/dsp:norm=NTSC \
> 		:audiorate=32000:width=320:height=240:fps=29.97 \
> 		-oac copy    -oac mp3lame -lameopts preset=medium \
> 		-ovc lavc -lavcopts vcodec=mpeg4:vbitrate=9 \
> 		-ofps 29.97 -endpos $whichtime -o $filename
> 
> replacing $whichtime (number of seconds to record) and $filename with 
> appropriate values. (Your bttv card may require input=3, but you'll know 
> that from using it with xawtv and streamer.)

	This should be directed to Ray I guess but was wondering what
speed CPU he uses with the above to get 29.97fps without pauses and
if the HD is UDMA100?? (NTSC tapes, sound-card line in audio and bttv
BT878 capture card..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
