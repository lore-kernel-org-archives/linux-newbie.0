From: "Philippe De Neve" <Philippe.deneve@intec.ugent.be>
Subject: php systemcall question
Date: Fri, 3 Feb 2006 23:22:08 +0100
Message-ID: <00dd01c62910$45c48380$bbd6c19d@King>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"; reply-type="original"
To: linux-newbie@vger.kernel.org

Hi all,

First of all I do not know wether this is the correct place to post this 
question so my apologies if not!

I want to try to execute a command from within a php script.  I'm trying to 
transcode a file with ffmpeg,
These are the commands:

<?php
if(!system('ffmpeg -i /var/www/video/upload/movie.mov -vcodec flv -b 
500 -an -r 30 /var/www/video/adapted/movie.flv'))
    echo 'script failed';
else
    echo 'script succesfull';
?>

Now when I run the script this is the output:

ffmpeg version 0.4.9-pre1, build 4738, Copyright (c) 2000-2004 Fabrice 
Bellard configuration: --build 
i386-linux --enable-gpl --enable-pp --enable-zlib --enable-vorbis --enable-a52 
 --enable-dts --disable-mmx --disable-debug --prefix=/usr built on Jan 21 
2005 19:24:19, gcc: 3.3.5 (Debian 1:3.3.5-6)

script succesfull

So ffmpeg was started but stops immediately and no file was transcoded

Normal output would be:

ffmpeg version 0.4.9-pre1, build 4738, Copyright (c) 2000-2004 Fabrice 
Bellard  configuration:  --build 
i386-linux --enable-gpl --enable-pp --enable-zlib --enable-vorbis --enable-a52 
 --enable-dts --disable-mmx --disable-debug --prefix=/usr  built on Jan 21 
2005 19:24:19, gcc: 3.3.5 (Debian 1:3.3.5-6)

Input #0, mov,mp4,m4a,3gp, from '/var/www/video/upload/movie.mov':
  Duration: 00:00:10.0, start: 0.000000, bitrate: 723 kb/s
  Stream #0.0: Video: h263, 352x288, 30.00 fps
Output #0, flv, to '/var/www/video/adapted/movie.flv':
  Stream #0.0: Video: flv, 352x288, 30.00 fps, q=2-31, 500 kb/s
Stream mapping:
  Stream #0.0 -> #0.0
[flv @ 0x82e363c]removing common factors from framerate

Press [q] to stop encoding
frame=  130 q=0.0 Lsize=     403kB time=4.3 bitrate= 761.7kbits/s
video:401kB audio:0kB global headers:0kB muxing overhead 0.509926%

Why does the program stops after the first few lines? Is the system call 
dependent on the type of program it starts?

Thanks for all help, Philippe. 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
