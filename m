From: "J." <mailing-lists@xs4all.nl>
Subject: Re: filtering .mp3 packets
Date: Wed, 27 Apr 2005 16:15:08 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0504271523260.951-100000@hestia>
References: <001101c54a54$2e0dc5d0$660aa8c0@descartes2>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001101c54a54$2e0dc5d0$660aa8c0@descartes2>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 26 Apr 2005, John T. Williams wrote:

> From: "William Stanard" <wstanard@palmertrinity.org>
> To: <linux-newbie@vger.kernel.org>
> Sent: Monday, April 25, 2005 7:27 AM
> Subject: filtering .mp3 packets
> 
> > We've been having some difficulty finding the vocabulary to describe
> > filtering content (for example .mp3 files) over TCP-IP. We would like to
> > set up our Linux server to do some "trapping" of packets containing .mp3
> > files with an eye toward using Linux enabled routing to clean our campus
> > of an overwhelming dose of music downloads and trading. To do this
> > exploration, I need to know what I should call the process I'm trying to
> > perform. Any vocabulary that you can suggest?
> >
> > Bill Stanard
> > Academic Computing
> > Palmer Trinity School
> > 305.969.4239

> Bill Stanard,
> 
> There are many ways to attack the mp3 problem, but the one you trying for is
> probably the most problematic.  You would not only need to check packets for
> mp3's, but you would also have to understand the various protocols used by
> file sharing software.   My university tracks the amount of bytes uploaded
> by a user and limits bandwidth of users who upload too much. (indicating
> that the user is doing something of which the school wouldn't approve).
> There are very few uses for massive uploads which would not violate the
> average university's Internet use agreement, and those cases could be
> addressed on a user by user bases.
> 
> However the only way to truly limit the behavior will be to convince the
> students not to do it.  Otherwise there will always be a work around.
> Packet sniffing is questionable ethical and in some states may violate the
> rights of the users, however you can probably do ports scans to protect the
> network security and find people running servers on ports which are commonly
> used for file sharing.  If someone is running a publicly open server, I
> cannot see any problem with finding out what content is being served.  You
> could probably write a robot of some sort that could search the file sharing
> ports, and raise a flag if it finds contents with *.avi or *.mp3 on it, but
> I would check with your legal department before doing so.

I have to agree with that. Especially the legal part. From a
legal point [europe, dont know 'bout the states] filtering in itself is 
not so much of a legal problem if you have informed all the clients of 
your network in a proper legal way and made sure they understood it;
and they did agree with it. 

It's what you do with the results and what your intentions are. You can
filter what you want on your own network but it's no use if your not
allowed to use it. 

From a pratical point what you can do is detect the biggest traffic
generators and isolate them from the rest of the pack. Small script that
analyzes stats from the firewall etc..

Here we run several OpenBSD firewalls [sorry] and analyze all trafic on a
weekly basis, protocol by protocol, port, quantity. We know what to expect
and what's reasonable in terms of traffic amount, what protocols etc..

Excessive uploaders and downloaders are put into a special watch queue
for some specific amount of time. When they cross a certain boundry the
case is presented and analyzed by a small group of people consisting out
of several non-techno's, dean etc. And they decide what to do with that
knowledge. It doesn't so much matter what the content is in most cases.

The solution is in the combination of different tools, education of the
students, good user legal contract and a simple but robust admin plan that
keeps itself intact.

Filtering on specific content can be done, but is costly very costly in
usertime, in admin time, hardware spec's e.g. money... 

Filtering in user space is praticly undo'able after a certain amount of
traffic. Try to run an app. like driftnet for 30min's on a sniffer
machine that listens to a network with 100/200 users. ;-) And that can
easily be bypassed by clients.

In the early days picking out for example napster with pcap was easy.
((ip[2:2] - ((ip[0]&0x0f)<<2) - (tcp[12]>>2)) = 4 && \
 tcp[(tcp[12]>>2):4] = 0x53454e44) || \
 ((ip[2:2] - ((ip[0]&0x0f)<<2) - (tcp[12]>>2)) = 3 && \
 tcp[(tcp[12]>>2):2] = 0x4745 && tcp[(tcp[12]>>2)+2]=0x54)

Or later by using something like `ngrep' .

Easy because the amount of traffic was reasonable low, and the p2p hadn't
hit the scene that hard. P2p has also a quirck, like the 90/10 rule
or 80/20 rule, where 80 percent of the users are often sharing constantly 
20 percent of the total content.

If you analyze your traffic carefully and you notice that only one or two
protocols are being used you could make a tcpdump filter like the one
listed above and save a number of push packets for each
connection. After that run a program over it trying to guess what data it
may or may not contains but you will always be behind.

There are commercial systems for gov. and large companies available
some tux based. Most of them require either special hardware and/or a
big budget. While the results are variable. Afterall we are all subject to
the same limitations.

Filtering on just .mp3 files is hel .

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
