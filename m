From: Ray Olszewski <ray@comarre.com>
Subject: tape transfer with mencoder (was: Re: Cinelerra--Video Editing??)
Date: Tue, 01 Aug 2006 10:57:31 -0700
Message-ID: <44CF960B.4060009@comarre.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com> <449346E4.8000702@comarre.com> <20060617194133.GA1262@lnx2.kvinet.com> <4494F3BD.5090102@comarre.com> <20060801150244.GA1134@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060801150244.GA1134@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> On 06-17, Ray Olszewski wrote:
> 
>>Since you are using mplayer anyway ... have you tried using mencoder for 
>>the captures? Try a command something like this (assuming you're 
>>capturing from tapes via NTSC video and sound-card audio):
>>
>>	mencoder tv:// -tv driver=v4l:device=/dev/video0:input=1: \
>>		immediatemode=1:forceaudio:adevice=/dev/dsp:norm=NTSC \
>>		:audiorate=32000:width=320:height=240:fps=29.97 \
>>		-oac copy    -oac mp3lame -lameopts preset=medium \
>>		-ovc lavc -lavcopts vcodec=mpeg4:vbitrate=9 \
>>		-ofps 29.97 -endpos $whichtime -o $filename
>>
>>replacing $whichtime (number of seconds to record) and $filename with 
>>appropriate values. (Your bttv card may require input=3, but you'll know 
>>that from using it with xawtv and streamer.)
> 
> 
> 	This should be directed to Ray I guess but was wondering what
> speed CPU he uses with the above to get 29.97fps without pauses and
> if the HD is UDMA100?? (NTSC tapes, sound-card line in audio and bttv
> BT878 capture card..
> 

I do video capture on two different machines. I've only done tape 
transfer on the higher quality of the two, which is also my main 
fileserver. Its specs are:

	Athlon64 3000
	1 GB DDR 400 (3200) RAM
	main HD is a Seagate 300 GB drive, I think UDMA 100 (maybe 133),
		with (of course) DMA enabled
	kernel 2.4.27, compiled for Athlon, Debian-Sid install

And all the stuff you put in parentheses represents correct assumptions 
about my setup:

	Soundblaster sound card (es1371 driver)
	AverMedia TV card (bttv driver), with jumper cable to sound card
	several different VHS-NTSC VCRs

Offhand, I don't recall what CPU use I see when transferring tapes (I 
haven't done any recently). Recording off the air (analog cable, 
actually), it's under 10%.

For off-the-air capture, my other machine is a Celeron 1.7 GHz, with 256 
MB RAM, some UDMA100 hard disk, and the same sound and TV cards. Taping 
off the air (digital cable this time), it only runs at about 20% CPU use 
... but tapes are noisier than my cable feed, so they place more demand 
on the codec, so I don't know if this machine would do tapes well.

Note, though, that I only capture at 320x240. I've tried 640x480 but run 
into problems there, for reasons I don't really understand (not CPU 
limits, at least not on the Athlon ... maybe problems with deinterlacing?).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
