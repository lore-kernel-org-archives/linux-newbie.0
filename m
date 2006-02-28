From: chuck gelm <chuck@gelm.net>
Subject: Re: tovid - videotrans ? (was Re: Convert .avi to .vob/Linux only??)
Date: Tue, 28 Feb 2006 18:08:20 -0500
Message-ID: <4404D7E4.70301@gelm.net>
References: <20060224152430.GA1275@lnx2.kvinet.com> <43FF57EF.8030803@comarre.com> <4403B178.1070606@gelm.net> <20060228195752.GA1048@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060228195752.GA1048@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Hal MacArgle wrote:

> <snip>
>
>
>	Thanks Chuck for saving me a lot of leg work.. I suspect, not
>really knowing, that dvdauthor would be a big stumbler because it's a
>very powerful program and we only need a, probably, small part of
>it..
>
>	Correct me if I'm wrong but I am beginning to see why it's
>not __easy__... The .avi file/s/ are viewable by themselves but the
>kicker is to get them on a DVD blank in iso9660 format, for one, plus
>  
>
I can create an iso9660 DVD without much difficulty.
I used 'growisofs'. 
This cannot be viewed on my DVD player, however. :-(

I revisited 'videotrans ./configure' after aquiring the items
required by 'tovid'.  Videotrans then 'configure'd, 'make'd, and 'make 
install'd.
 :-)
It creates folders AUDIO_TS and VIDEO_TS.
However, the 'man' page leaves me lost at the last step:

'a_command_to_burn_a_dvd_from dvd_directory'.  :-|

So, what is the command?
---
My 2 GHz Athlon takes over 40 minutes per 350 MB .avi,
so compare this file size and time to your own. :-|

Please show your commands that resulted in a viewable DVD.
Especially your 'a_command_to_burn_a_dvd_from dvd_directory'.

Regards, Chuck

p.s. Perhaps we should take this off list or to a videotrans/tovid list.?!

>into the various video_ts--.vob files plus .ifo and .bup files. etc..
>For kicks I tried a Win98 scheme and it tought me something, mainly
>that you need much more storage than suspected because it writes
>everything to a temp file; not simply file direct to DVD... Bottom
>line with my Duron 1.3M with 512M memory, in a Win98SE partition it
>took almost 3 hours to do the deed, most of the time "converting"
>"rather than "burning," with a DVD+RW 2.4X blank.. I bought some 8X
>blanks to see if that speeds things up a mite; suspect not that
>much... (Plextor PX-708A unit)
>
>	I'm guessing that the various routines with Linux; each
>operation is broken down into bits and pieces.. Actually that's what
>we do with CD burning anyway, eh?? Please edit any mistakes above.
><grin> And, oh yes, the burned DVD views fine on an old standalone
>DVD player, that we use for viewing commercial movies..
>
>	Update: I just found, buried in my shack, a 3 page txt copy of
>an article by Chris Stoddard; "DVD Authoring." I haven't a clue where
>I fetched it from.. It goes into some good details, some of which may
>not be needed for newer drives.. Worth a look see, maybe?
>
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
