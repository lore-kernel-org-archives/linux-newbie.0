From: Ray Olszewski <ray@comarre.com>
Subject: RE: Optimizing I/O via kernel changes
Date: Wed, 12 May 2004 10:40:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040512103731.02031ad0@celine>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF025613FA@s99mail06>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <9BBB7C9EFEF1874BAC4DC204E867EFAF025613FA@s99mail06>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Both Chris and Mark have replied to me privately on this, but replies to 
the list are more useful.

I aldready discarded Mark's reply, so I cannot forward it ... but he said 
he asked for more details and was told that the speedup issue involves SCSI 
I/O of some sort ... I've forgotten the specifics ... a topic way outside 
my expertise.

So while Chris was closer to the target than I, Mark really needs to post a 
more specific follopup to the list in order to get help.

At 09:30 AM 5/12/2004 -0500, Little, Chris wrote:
>see, i took this to mean disk i/o.  the next guy might take it as video i/o.
>vague questions lead to vague answers, eh?
>
> > -----Original Message-----
> > From: Ray Olszewski [mailto:ray@comarre.com]
> > Sent: Tuesday, May 11, 2004 11:52 AM
> > To: linux-newbie@vger.kernel.org
> > Subject: Re: Optimizing I/O via kernel changes
> >
> >
> > At 11:30 AM 5/11/2004 -0400, Gosselin, Mark wrote:
> > >Hi List,
> > >
> > >I've been asked the following question by our VP of Development.
> > >
> > >Is there some kernel parameter (or parameters) that we can tweak to
> > >improve our I/O on a Linux Server??
> > >
> > >Since I'm new to Linux, I figured someone one one of these
> > lists might
> > >have a concise answer to that
> > >question. Can we use the kernel tomincrease I/O rates, or
> > are we bound by
> > >hardware??
> >
> > This question is too vague to elicit a meaningful answer.
> > Even assuming you
> > mean Mbps on an Ethernet by "I/O rates" (there are other
> > possible meanings,
> > of course), knowing whether your particular setup is hardware
> > or software
> > bound requires knowledge of your hardware and software ...
> >
> >          what NIC? (if not 100 Mbps, mention speed)
> >          what CPU? (type and speed)
> >          how much RAM?
> >                  is the system *ever* using swap?
> >          any relevant IRQ sharing?
> >
> >          what Linux distro and version?
> >          what Linux kernel ("uname -a")?
> >          custom or stock kernel?
> >          what NIC module and parameters?
> >          what (if any) iptables rules are you running?
> >          does "ifconfig" show any appreciable error rate?
> >
> >          what relevant services are you running?
> >          what "I/O rates" are you currently seeing?
> >          if the relevant connectivity is not just Ethernet
> > (for example, if
> > it is a DSL connection to the Internet), what type and speed
> > of connection
> > is it?
> >          how "busy" is the system during normal operation?
> >                  what % CPU use does "top" report?
> >                  what blocking ("load averages") does "uptime" report?
> >
> > Depending on the details of the response, there could be ways
> > to speed up
> > throughput, such as reducing the complexity of firewall
> > rulesets,  tweaking
> > NIC module settings, rearranging IRQ assignments, conceivably
> > doing some
> > tailoring to specific service needs, possibly tailoring
> > packet size (MTU)
> > settings to a link layer other than Ethernet.
> >
> >   As a general matter, you may want to look at the settings
> > described in
> > your kernel Documentation under
> > ./Documentation/networking/ip-sysctl.txt
> > and at the doc file in the same directory for your NIC. But
> > there is no
> > magic "faster" switch in the kernel (or at least none I know
> > of) that is
> > turned off by default (why would there be?).
> >
> > In practice, 100 Mbps Ethernet NICs under Linux seem to
> > deliver somewhere
> > between 50 Mbps and 80 Mbps on a sustained basis, depending
> > on things I'm
> > not sure of (kernel version? specific NIC hardware?).
> >
> > And, of course, if I have misinterpreted your use of "I/O
> > rates", this
> > entire response is meaningless for your purposes.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
