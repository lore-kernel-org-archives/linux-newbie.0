From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: tovid - videotrans ? (was Re: Convert .avi to .vob/Linux only??)
Date: Tue, 28 Feb 2006 14:57:52 -0500
Message-ID: <20060228195752.GA1048@lnx2.kvinet.com>
References: <20060224152430.GA1275@lnx2.kvinet.com> <43FF57EF.8030803@comarre.com> <4403B178.1070606@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4403B178.1070606@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

On 02-27, chuck gelm wrote:
> I would also like to convert some .avi (and other formats) so they can be
> viewed on a DVD player.  I tried 'videotran' that Ray found.  The spiel
> on http://videotrans.sourceforge.net/
> 
> I downloaded the source and that was only the beginning of a
> wild goose chase.
> 
> ../videotrans-1.4.1... only a 85K .tar.gz however
> ./configure halted with an error that ffmpeg was required.
> 
> I obtained ffmpeg and ./configure && make && make install
> 
> ../videotrans-1.4.1/./configure complained that mpegtools was required
> 
> I obtained mpegtools, ./configure && make && make install
> 
> ../videotrans-1.4.1/./configure complained that spumux was required and 
> spumux was part of dvdauthor.
> 
> I obtained dvdauthor and ./configure, but dvdauthor halted on error 
> that libdvdread (-devel)
> was required and did not mention where it could be found.
> I give up.
> 
> I found 'tovid' and am off on this path:
> http://tovid.berlios.de//en/index.html
> 
> "tovid is a collection of video disc authoring tools; it can help you 
> create your own DVDs, VCDs, and SVCDs for playback on your home DVD 
> player. It has a command-line interface 
> <http://tovid.berlios.de//en/cli.html> as well as a graphical frontend 
> <http://tovid.berlios.de//en/gui.html>. tovid is free software 
> <http://en.wikipedia.org/wiki/Free_software>."
> 
> :-|  Chuck

	Thanks Chuck for saving me a lot of leg work.. I suspect, not
really knowing, that dvdauthor would be a big stumbler because it's a
very powerful program and we only need a, probably, small part of
it..

	Correct me if I'm wrong but I am beginning to see why it's
not __easy__... The .avi file/s/ are viewable by themselves but the
kicker is to get them on a DVD blank in iso9660 format, for one, plus
into the various video_ts--.vob files plus .ifo and .bup files. etc..
For kicks I tried a Win98 scheme and it tought me something, mainly
that you need much more storage than suspected because it writes
everything to a temp file; not simply file direct to DVD... Bottom
line with my Duron 1.3M with 512M memory, in a Win98SE partition it
took almost 3 hours to do the deed, most of the time "converting"
"rather than "burning," with a DVD+RW 2.4X blank.. I bought some 8X
blanks to see if that speeds things up a mite; suspect not that
much... (Plextor PX-708A unit)

	I'm guessing that the various routines with Linux; each
operation is broken down into bits and pieces.. Actually that's what
we do with CD burning anyway, eh?? Please edit any mistakes above.
<grin> And, oh yes, the burned DVD views fine on an old standalone
DVD player, that we use for viewing commercial movies..

	Update: I just found, buried in my shack, a 3 page txt copy of
an article by Chris Stoddard; "DVD Authoring." I haven't a clue where
I fetched it from.. It goes into some good details, some of which may
not be needed for newer drives.. Worth a look see, maybe?

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
