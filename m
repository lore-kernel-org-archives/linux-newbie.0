From: Chuck Gelm <chuck@gelm.net>
Subject: Re: Torrent and it's clients??
Date: Sun, 08 Oct 2006 20:14:44 -0400
Message-ID: <45299474.4050000@gelm.net>
References: <20061008143918.GA974@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20061008143918.GA974@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Hal wrote:

>Stumbled on torrentreactor.net and became quite curious.. Many
>available clients but I selected Azureus; reading two tutorials and
>one FAQ about it..
>
>With our puny dial up lines averaging 3.0kBs, large files would be a
>huge problem so I tried two 50mB files first and was able to d/l them
>successfully, on line from 2100E to 0700E the following day with a
>couple stops and starts, resuming the next day, etc..
>
>Flushed with pride I tried two small files, 3mB and 9mB and the
>bottom dropped out of it.. The d/l started at a typical 3.0kBs then
>after half the first file it went to zero and stayed there for the
>next 8 hours... What happened??  Can I presume that one of the
>servers was down or extremely busy, if I'm reading how it works??
>
>In all cases I note the report that the tracker is OK and NAT OK and
>the azureus smiley is green.. Top reports about 40% cpu usage.. 380mB
>RAM and no swap used, if that means anything..
>
>I don't completely understand the concept of "seeds" and "peers," so
>am trying to learn more about that..
>
>I've, more or less, concluded that wide band would not help with that
>system, much like a vehicle capable of 180MPH on a Calfornia thruway
>averaging 5MPH.. <grin>
>
>Maybe I'm way over my head; again... TIA.. Oh yes, using Slack10.1,
>2.4.29 on that machine, and a USR Sportster V90 internal modem..
>  
>
Hi, Hal:

 I use Azureus also.  I use it on my Linux and Windoze workstations.
When you download the torrent and start a download, you are a
'peer'.  When you have the entire 'file' and you stay active, you are
a 'seed'.  There must be either of two situations to complete a d/l:
At least one 'seed' or
all the pieces of the entire file must have been accumulated among
the active 'peers'.

 I choose available downloads with the number of most (active) 'seeds'.
I try to stay active as a 'seed' until I have uploaded 2x to 3x
the size of the downloaded file.  Though, I have a cable modem and can
get 4-5 MB/sec downloads. :-)

O,BTW, I've been upgrading some of my workstations to Slackware 11.0.
I obtained the 11.0 .iso CDs and DVD via BitTorrent. ;-)

I'll probably keep these active for a week or so at a resonable upload rate.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
