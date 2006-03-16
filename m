From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Convert .avi to .vob/Linux only??
Date: Thu, 16 Mar 2006 14:58:10 -0500
Message-ID: <20060316195810.GA1027@lnx2.kvinet.com>
References: <20060224152430.GA1275@lnx2.kvinet.com> <44061B5A.3000309@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44061B5A.3000309@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

On 03-01, chuck gelm wrote:
> Hal et allia:
> 
> I converted three (3) .avi files and burned them to DVD and can
> play them on my DVD player.  Text menu also! :-)
> I installed videotrans and stumbled through enough required
> additional project installations to get it to work.  Thus:
> 
> #!/bin/sh
> # create a DVD-player for .avi movies
> 
> movie-to-dvd -m ntsc -d letterbox -a 4:3 CloseToHomeS01E08.avi 
> CloseToHomeS01E09.avi CloseToHomeS01E10.avi
> 
> movie-make-title-simple -o title -m ntsc -n none
> 
> movie-title -T 2x2 -c none -o title.vob -t title CloseToHomeS01E08.m2v 
> CloseToHomeS01E09.m2v CloseToHomeS01E10.m2v
> 
> dvdauthor -o dvd_directory -x title.vob-dvdauthor.xml
> 
> growisofs -dvd-video -Z /dev/dvd dvd_directory
> 
> #end
> 
> There is some word wrapping in my display while entering this note.
> The commands are double spaced, so if you see consecutive lines,
> there was 'word wrap' and not a newline.  ;-)
> 
> HTH, Chuck

	Greetings: Helped immensely in that I am now, routinely,
burning DVD's from tapes; which spawns more questions.. Of course.

	Typically using xawtv, and a BT878 card, to grab a 50 minute
total analogue tape to an avi file and then following the above to
burn the final DVD on either DVD+R or DVD+RW blanks I notice one
thing:

The burn "shading" on the blank is only 1/3 the width of the surface
and; mounting the DVD reports less than 1gB in length.. It's obvious
that something is crunching the data more than, what, "normal." I
note the blanks list four different Modes from "HQ" as 60 minutes on
a 4.7gB disc thru "EP" 240 minutes each disc, but I see no reference
to select these modes, that I can find... I would like to burn the
best quality; closer to the original if possible..

	With everything else the same, TV set; monitor etc, the view
quality of the original VHS tape is better than the view of the DVD
copy, so something is happening, somewhere /or/ I'm doing something
wrong... (The blanks I'm using are not white box but so called prime)

	I'm learning but, obviously, have a long way to go. <grin>
TIA.

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
