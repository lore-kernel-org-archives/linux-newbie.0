From: Ray Olszewski <ray@comarre.com>
Subject: Re: Cable Modems??
Date: Sun, 08 Sep 2002 11:44:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020908112631.02284880@celine>
References: <20020908130053.A417@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020908130053.A417@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: haltec@iceweb.net, linux-newbie@vger.kernel.org

Hal -- Without some details, I doubt anyone here is going to be able to 
help you. To the extent that the problems derive from details of Windows XP 
... well, this is a Linux list, so I doubt we'll be of much help at that 
level in any case.

First, what is the address? How stable is it? (What I mean is that cable 
modem ISPs usually use DHCP to assign addresses, and in some cases the 
leases have amazingly short lives, even as short as 15-30 minutes between 
address changes.) For ISPs to use Class A addresses isn't that odd, BTW; I 
see a lot of 24.b.c.d adresses, just as an example.

Second, what are the symptoms in the failures? When telnet or ping fails, 
it usually does so with some sort of error message, and the error message 
tells one (if one is experienced) something about the likely source of the 
problem. If they fail silently, there is usually a delay before they fail; 
knowing roughly how long it is is also informative. I'm not sure what you 
mean by "the 'new' lashups", but if ping has become obsolete, it is news to me.

Third, what does "traceroute" tell you? Where does it stop?

Fourth, when you are connected, can your son ping you? Can you ping other, 
known-good sites (big names, say, or even me, if you need a target)? Can 
he? In any cases where the answer is no, what does the failure look like?

Fifth, I'm no Windows expert (though I do use Windows machines) and I've 
never run XP. Is your son sure he is running a telnet server on his 
machine? (I'm putting aside for the moment the usual concerns about the 
safety of using telnet in the interest of troubleshooting the immediate 
problem.) If you are running a telnet daemon, can he telnet to you?

Sixth, does your son run any sort of firewalling package on his system? If 
so, might it be interfering with connectivity somehow?

At 01:00 PM 9/8/02 -0400, Hal MacArgle wrote:
>Greetings: In the country we'll probably never have a cable modem but
>my son does and that opens the query box as to how I can learn more
>about them and their use..
>
>He gave me his IPv4 address, which is, to me, odd that it's Class A,
>and I used 'nslookup' and 'DiG' to get his human address..
>
>Trying 'telnet' to the address fails as well as 'ping'... I've
>studied networking and have two older books on TCP/IP - neither of
>much use here - I don't believe - unless I've missed something..
>I would like to become a user on his machine sending mail direct,
>etc, if possible..
>
>A former Unix programmer but running WindowsXP on his machine 24/7,
>he is stumped, for the time being, too.. I believe I remember reading
>that 'ping' is obsolete with the "new" lashups, but can't find much
>info.. Maybe he's suffering from Microsofitis.. :^)..


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
