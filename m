From: chuck gelm <chuck@gelm.net>
Subject: Videotrans ... Re: Convert .avi to .vob/Linux only??
Date: Wed, 01 Mar 2006 17:08:26 -0500
Message-ID: <44061B5A.3000309@gelm.net>
References: <20060224152430.GA1275@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060224152430.GA1275@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:

>	Greetings; I just spent two hours trying to find software or
>information converting video .avi files to .vob, in order to burn
>some personal .avi files to a DVD that's playable on a stand alone
>DVD player.. I have the files in .avi format and a Plextor DVD
>burner, etc.. MPlayer lets me view them on the computer monitor of
>course..
>
>	Interesting in that this is the first time I've noticed when
>accessing www.google.com/linux, that I get linked to 100% of the
>MSWindows stuff.. I gave up..
>
>	Anyone have any suggestions?? TIA..
>  
>
Hal et allia:

 I converted three (3) .avi files and burned them to DVD and can
play them on my DVD player.  Text menu also! :-)
I installed videotrans and stumbled through enough required
additional project installations to get it to work.  Thus:

#!/bin/sh
# create a DVD-player for .avi movies

movie-to-dvd -m ntsc -d letterbox -a 4:3 CloseToHomeS01E08.avi 
CloseToHomeS01E09.avi CloseToHomeS01E10.avi

movie-make-title-simple -o title -m ntsc -n none

movie-title -T 2x2 -c none -o title.vob -t title CloseToHomeS01E08.m2v 
CloseToHomeS01E09.m2v CloseToHomeS01E10.m2v

dvdauthor -o dvd_directory -x title.vob-dvdauthor.xml

growisofs -dvd-video -Z /dev/dvd dvd_directory

#end

 There is some word wrapping in my display while entering this note.
The commands are double spaced, so if you see consecutive lines,
there was 'word wrap' and not a newline.  ;-)

HTH, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
