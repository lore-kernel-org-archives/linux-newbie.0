From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: filtering .mp3 packets
Date: Fri, 29 Apr 2005 20:54:49 +0530
Message-ID: <4b0d6e0d0504290824427d7beb@mail.gmail.com>
References: <Pine.LNX.4.21.0504272136300.1172-100000@hestia>
	 <001a01c54b7c$6da1b7f0$660aa8c0@descartes2>
	 <427030A8.8020604@comarre.com>
	 <4b0d6e0d050428200525186e50@mail.gmail.com>
	 <42721DEE.7020102@mrmighty.net>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <42721DEE.7020102@mrmighty.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Stephen Ray <stephen@mrmighty.net>
Cc: linux-newbie@vger.kernel.org

Hi,

Was going through lartc HOWTO and it says  that Linux
can throttle b/w TO certain computers on the network....
this can assure that all computers get the same amount of b/w
p2p or no p2p.......
how 'bout it, setting some amount of bandwidth to each user,
so he cannot receive or send more than his quota
and hose the network.......

Joy

On 4/29/05, Stephen Ray <stephen@mrmighty.net> wrote:
> I don't know about compression, but I see two problems with filtering
> based on mp3 headers (other than the apparent lack of tools supporting
> it).  The first is that some p2p protocols, such as Bittorrent, divide
> the files into chunks, sending and receiving them out of order.  So the
> header may be the last part of the file to be sent.  The other problem
> is that in any protocol, an mp3 file is going to be too big for a tcp/ip
> packet.  It seems very likely that an mp3 packet will be split across
> two or more packets.  That would make identification more problematic,
> as you would have to make sure that a header fragment was a header
> fragment, and not part of a legitimate file that happens to be
> coincidentally identical to part of a mp3 header.
> 
> Stephen
> 
> joy merwin monteiro wrote:
> > Hi,
> >
> > Since this thread dealt mainly with blocking p2p downloading of
> > mp3s since they consume large b/w, and has come to a discussion of
> > https and scp,
> > I wanted to know wether any p2p protocol uses the above......
> > or even wehter they use compression.......
> >
> > if neither is the case, what John said seems to be reasonable,, since
> > MP3 _has_ to have a header......
> >
> > blocking all outgoing http requests for or blocking all incoming MP3's
> > will prevent genuine users who need it. alternatively, there should be
> > a limit of connections that a user can open at a single time to get
> > MP3s... since most p2p protocol that i've encountered always try to process
> > the waiting list as fast as possible by downloading multiple files all
> > at once....
> >
> > Comments. anyone?
> >
> > regards,
> > Joy
> >
> >
> 


-- 
<ed__> riel: if it were a vax, gcc would probably be an opcode

	- excerpt from #kernelnewbies
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
