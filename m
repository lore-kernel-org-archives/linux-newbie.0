From: Christian Pedaschus <cpedaschus@gmx.de>
Subject: Re: images -> DVD-slideshow ?
Date: Sun, 04 Jun 2006 11:49:12 +0200
Message-ID: <4482AC98.9030002@gmx.de>
References: <200606020608.k5268MoK004233@skyinet.net> <44804628.5070106@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44804628.5070106@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

chuck gelm wrote:

> Howdy:
>
> What is your suggestion for an application that will convert
> many (still) images into a DVD slideshow, perhaps with
> background music?  I've been trying to obtain image2mpeg
> with varying sucess.  I was able to get a version downloaded
> and compiled.  I created an image (stream.ppm), but there
> seems to be no mention of how to get the output file onto a DVD.
>
> If the output DVD <image> is small, can it be placed on
> a (650-700MB) CDROM and played on a standard DVD player?
> If yes, how?  'growisofs' balks at writing to my CDROM media.
>
> I am using Slackware v10.2 and understand *.tar.gz.
> I am poorer at installing *.rpm, but will try if that is the only
> offering of another application.  *.deb, I don't know.
>
> Regards, Chuck



I once had to create the same and decided to use mplayer/mencoder, as i
like to automate things if possible.


As a start:

#Create an uncompressed avi-file from all the PNG files in the current
directory (fps defines the time)
mencoder mf://*.png -mf w=800:h=600:fps=25:type=png -ovc raw -oac copy
-o output.avi


#Now add sound using:
mencoder output.avi -audiofile audio.wav -oac copy -ovc copy -o
output_waudio.avi


#and now encode it into a dvd/svcd compliant format using:

13.6.5.1. PAL DVD

  mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=dvd -vf
scale=720:576,\
  harddup -srate 48000 -af lavcresample=48000 -lavcopts vcodec=mpeg2video:\
  vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:keyint=15:acodec=ac3:\
  abitrate=192:aspect=16/9 -ofps 25 \
  -o movie.mpg movie.avi

13.6.5.5. PAL SVCD

  mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xsvcd -vf \
  scale=480:576,harddup -srate 44100 -af lavcresample=44100 -lavcopts \
  vcodec=mpeg2video:mbd=2:keyint=15:vrc_buf_size=917:vrc_minrate=600:\
  vbitrate=2500:vrc_maxrate=2500:acodec=mp2:abitrate=224 -ofps 25 \
  -o movie.mpg movie.avi


You need to adjust the filenames as i just copied the stuff from the
mencoder manual, which you really should read, it's very  interesting
and tells a lot of stuff about various video-formats.

Greets, Chris



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
