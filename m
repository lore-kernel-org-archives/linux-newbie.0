From: Ray Olszewski <ray@comarre.com>
Subject: Re: Firewall's performance
Date: Fri, 01 Nov 2002 12:39:11 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021101121744.020ba730@celine>
References: <5.1.0.14.1.20021031230329.020baa10@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021101190705.47795.qmail@web40414.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Mike Ni <cba20032002@yahoo.com>
Cc: linux-newbie@vger.kernel.org

I added the linux-newbie list back into this discussion, since I prefer to 
limit my free-advice correspondence to the context of public lists.

I should begin by making it clear that while I have some expertise 
regarding firewalls, it is all in the context of Linux-based firewalls 
geared to low-traffic sites (homes and small businesses). From your 
questions, I get no sense of the scale of your project (are you talking 
about protecting a small business Web site, Yahoo, or something in 
between?), so I don't know how well my knowledge applies to your situation. 
With that disclaimer, see below for some specific responses ... though I 
fear you will find their value somewhat limited.

At 11:07 AM 11/1/02 -0800, Mike Ni wrote:
>Hi Ray,
>
>Thanks for your response & tips.
>You are right about the firewall's performance. I am a
>little confused about the performance's definition
>when dealing with firewall. This is one of the reason
>I sent out the mail.
>
>Someone told me a way to determine the performance
>should be:
>
>(1) How many session the firewall can sustain at any
>given moment
>(2) How many new connection the firewall can establish
>at any moment
>
>I would certainly appreciate your input so that I can
>determine a more complete set of definition when
>dealing with firewall's performance.

Well, they are two important factors in the firewall's speed. Another is 
its raw ability to move packets. All of these performance measures need to 
be viewed in the context of the site's base connection speed to the 
Internet ... the ability to support 10,000 new connections per second won't 
be of much use on a 256 kbps line, for example. All of my expeirence is in 
contexts where these are not binding considerations, though.

In the contexts I am more familiar with, the important criteria for judging 
firewalls are its own basic security, the flexibility of its ruleset, its 
ability to handle "problem" services (like ftp and irc) well, and some 
considerations that really apply only to firewalls that protect LANs, not 
ones that protect DMZs.

>Another thing was discussed about the need to allocate
>a dedicated firewall to protect the webserver. I
>thought this is another thing I can use your input, if
>I may:
>
>I would image all the hostile traffic coming from the
>Internet are really targeted on the website & email
>rather than the remote server, SIP server or mobile
>server since only the website & email are configured
>to accept public access.

Hostile traffic is "targeted" at anything that is vulnerable to known 
exploits. That list is, inevitably, specific to particular OSs and 
versions, applications and versions ... but it is true that a particular 
server's vulnerability to Internet attacks is tied to the sorts of packets 
it will accept (basically its "listening" ports, but also some icmp 
possibilities). One role of firewalls is to protect misconfigured servers 
and workstations behind them, so in a way, the importance of a good 
firewall is related to your skills as a sysadmin (and your authority over 
the configuration details of workstations).

>Whilas the remote server or mobile server are really
>designed to accept traffic with encryption & login
>authentication. Therefore, I would think there isn't
>too much intersted of hacking toward such server.
>(or even VPN server or gateway)

I wouldn't count on it. Especially since we have, in recent months, seen 
reports of exploitable flaws in both ssh and ssl.

>That said, It would make sense to allocate a firewall
>protecting the remote server or mobile server. While
>allocate another one to proetct the webserver & email
>server.
>My thinking behind such approach is to isolate the
>risk of firewall failure according to the usage.
>Specifically, my thinking is that there is no need to
>have the remote/VPN/mobile server to share the risk
>from website & email server. Is this making sense?

As a general matter, I am sympathetic to this thinking ... you want to 
isolate visible hosts as much as you can, so the scope of a break-in is 
limited to the compromised host. But firewalls are not the only way to do 
this; you can also control things by limiting what is available on each 
host to only what its assigned responsibilities require. Remember that 
firewalls are not magic shields; they too are computers, and every firewall 
is itself another target of opportunity for attackers. Also, since 
firewalls are not free (even if the software is, they have hardware, 
maintenance, space, and electricity costs), all these concerns need to be 
weighed against the costs they add.

>Lastly, what i meant by "overrrun" I mean the DDOS/DOS
>attack. I keep hearing the danger of such threat. Yet,
>I have no ideal of how prevailing they really are. Any
>ideal where I can find out?

Nothing specific; I'd just do standard searches to find out what is 
generally known. In any case, if you are on a limited-bandwidth connection 
(DS-1 or slower), I'm pretty sure a DoS attack will clobber you by flooding 
your bandwidth, not your firewall (or servers) as such, so approaches like 
multiple firewalls will not help defend you.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
