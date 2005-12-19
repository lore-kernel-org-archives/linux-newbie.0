From: chuck gelm <chuck@gelm.net>
Subject: Re: adsl, firewalls, etc.
Date: Mon, 19 Dec 2005 12:25:02 -0500
Message-ID: <43A6ECEE.3080109@gelm.net>
References: <43A66B34.6070102@arrakis.es> <43A6D298.1020203@gelm.net> <43A6DE4F.5070103@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43A6DE4F.5070103@arrakis.es>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Andrew <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

Andrew wrote:

>
>>> The free modem my isp provided has no support under Linux so I had 
>>> to take the router option. It's a Draytek Vigor 2500. The defect 
>>> configuration leaves ports 20 (ftp-data),  23 (telnet) and 80 (http) 
>>> open, the rest are stealthed (according to Shields Up). Am I right 
>>> in thinking this is not such a good idea? I haven't yet had any 
>>> success in trying to add rules to close these ports, and my isp 
>>> 'cordially' informs me that this is up to me to sort out, so for the 
>>> time being I am simply disconnecting when not in use (about 16 hours 
>>> a day). Am I being over-paranoid?
>>>
>> "The free modem my isp provided has no support under Linux so I had 
>> to take the router option."
>>
>> I disagree.
>
Hi, Andrew:

 Uh, I disagree that you needed to take the router option.
I do not disagree that your ISP's free modem did not come with Linux 
support.  :-|
<more>

>>
>> I have had two aDSL acounts; Earthlink and the local telephone 
>> company Ameritech (now SBC/Yahoo).
>> Each setup came with a DSL modem and an ethernet card at no charge 
>> other than a one year commitment.
>> Both accounts came with Windows(r) software and not Linux software.
>> Both modems worked flawlessly with Linux.  I used RoaringPenguin 
>> (PPPOE).
>> I don't know what protocol your ISP (Spain?) uses, but there may 
>> already be a Linux application for it.
>
>
> OK. I'll add that to my growing list of todos. The modem is a Vigor 318.

 You look it up (Google, "Draytek Vigor 2500", "Draytek Vigor 318").  
You will need to
know what protocol the modem is speaking to the host computer 
(workstation or your
own 'homebrew' 80486 router. OBTW, I am using an old (1992) Compaq 80486dx33
as my router.  I am not using any of the available enterprise firewall 
packages:
 Smoothwall, Shorewall, Freesco, ..., but I use an eleven (11) line 
IPTABLES script
I found (modified to suit my fun and games). )

# google search: setting up a linux home gateway
#newbiedoc.sourceforge.net/networking/homegateway.html#IPMASQSETTINGSETH
# 9.2.2 For Iptables Users
#For users connecting to external network on ethernet & using iptables:
...

 Chances are that your router's LAN ports default to 192.168.0.1 or 192.168.1.1
and you will find a web server at port 80.  Username may be = Admin and password
may be = password or [blank].  YMMV.
...


http://www.roaringpenguin.com/penguin/open_source_rp-pppoe.php

"PPPoE (Point-to-Point Protocol over Ethernet) is a protocol used by 
many ADSL Internet Service Providers. Roaring Penguin has a free PPPoE 
client for Linux and Solaris systems to connect to PPPoE service providers.

Dubbed RP-PPPoE, this open-source product is ideal for Linux users with 
a DSL "modem" whose Internet service provider uses PPPoE. Before you 
download this software, check whether or not you really need it. If your 
ISP uses PPPoE, but has given you a router, you may not need a PPPoE 
client on your Linux box. DHCP may work fine."

 If your ISP does not use PPPOE, it may still use some other compatible 
protocol.

<more>

>
>> There may be no need for explicit Linux support from the ISP as 
>> current Linux distributions may already contain
>> the needed application(s).  Sorry that this information is not your 
>> current solution, but I wanted to post
>> this response so that others may opt to accept the standard modem.
>>
>> Your answer, now, lies in the configuration of the router.
>
>
> Since I'm going to need more ports than there are on the router 
> anyway, and since I have some familiarity with Freesco and shorewall, 
> as well as about half a dozen 486s and similar, would it be 
> simplest/advisable to put everything behind a dedicated firewall and 
> not bother to mess about with the router? (Or get the free modem 
> working and sell the router).


Simplest would be to use the Draytek router
Sure you can.  I have several 10/100 ethernet switches after my 80486 
router and several
($5 after rebates) wired and wired/wireless routers that I can drop into 
my LAN.
All my routers have four (4) port switched included.  Does yours?  You 
can add
multiport switches to the LAN port of the router.
<more>

>
>
>> Unless you are offering a service to other internet hosts
>> or want to enable remote access to your router, you do not need any 
>> open ports
>> on the WAN side of your router.
>
>
> I'm not.
>
>> IMHO, disconnecting two thirds of the time is a silly solution.
>
>
> Not so much 'silly' as a PITA (and only a stopgap).
>
>> OBTW, are you disconnecting the modem from the telephone line or 
>> disconnecting your computer from the modem?
>
>
> Modem from telephone line.

Hmmmm, I seem to recall that these modems ask that the user keep them 
powered up
and connected to the data line for up to ten (10) days as the modems at 
each end decide
what data tones to use.  I'd recommend in some point in the future that 
before connecting
the router to the telephone line, do a 'reset' and disable remote 
access.  Your router may
already be compromised.

HTH, Chuck


>
>>
>> Suggestion:
>> Disable remote access to the router via WAN (and wireless, if 
>> applicable).
>> Else; Change the router's internal web server to a different port;
>>         e.g. between 2000 - 65535 and not 8080.
>
>
> Thanks for your answers.
>
> Andrew


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
