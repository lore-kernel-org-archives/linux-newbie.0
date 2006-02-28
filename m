From: chuck gelm <chuck@gelm.net>
Subject: tovid - videotrans ? (was Re: Convert .avi to .vob/Linux only??)
Date: Mon, 27 Feb 2006 21:12:08 -0500
Message-ID: <4403B178.1070606@gelm.net>
References: <20060224152430.GA1275@lnx2.kvinet.com> <43FF57EF.8030803@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43FF57EF.8030803@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I would also like to convert some .avi (and other formats) so they can be
viewed on a DVD player.  I tried 'videotran' that Ray found.  The spiel
on http://videotrans.sourceforge.net/

 I downloaded the source and that was only the beginning of a
wild goose chase.

.../videotrans-1.4.1... only a 85K .tar.gz however
./configure halted with an error that ffmpeg was required.

 I obtained ffmpeg and ./configure && make && make install

.../videotrans-1.4.1/./configure complained that mpegtools was required

I obtained mpegtools, ./configure && make && make install

.../videotrans-1.4.1/./configure complained that spumux was required and 
spumux was part of dvdauthor.

 I obtained dvdauthor and ./configure, but dvdauthor halted on error 
that libdvdread (-devel)
 was required and did not mention where it could be found.
I give up.

 I found 'tovid' and am off on this path:
http://tovid.berlios.de//en/index.html

"tovid is a collection of video disc authoring tools; it can help you 
create your own DVDs, VCDs, and SVCDs for playback on your home DVD 
player. It has a command-line interface 
<http://tovid.berlios.de//en/cli.html> as well as a graphical frontend 
<http://tovid.berlios.de//en/gui.html>. tovid is free software 
<http://en.wikipedia.org/wiki/Free_software>."

:-|  Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
