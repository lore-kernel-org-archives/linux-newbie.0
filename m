From: Ray Olszewski <ray@comarre.com>
Subject: Re: pppoe/adsl-modem loopback??
Date: Sat, 12 Nov 2005 11:21:50 -0800
Message-ID: <437640CE.20904@comarre.com>
References: <20051111221155.GA973@lnx2.w8mch.ampr.org> <437530BF.6070602@comarre.com> <20051112182350.GA1138@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051112182350.GA1138@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> On 11-11, Ray Olszewski wrote:
[...]
>>Let me ask a basic question: Do you have DSL service to the phone line 
>>you are trying to use for testing? From the part of your message that 
>>reads "on my bench too far from the CO to connect", I surmise you do not.
> 
> 	Thanks much Ray for your reply: Yes, I am 7 miles from the CO
> and the "cutoff" point is 18,000 ft.. The "neighbour" is one block
> from the CO in town... Telco says we will "never" have *DSL...

I'm sorry, Hal, but your reply makes me think I was not clear enough. 
Even if a customer is next door to the CO, he or she still needs to get 
DSL service on a line before trying to connect. DSL is not like dial-up; 
it uses high frequencies (above the band used for voice), requires 
lowpass filters on the telephones that share the circuit, and requires 
some setup at the telco end. Being within 18K feet is a *necessary* 
condition for DSL service to work, but not a *sufficient* condition ... 
you still need to order DSL explicitly from your telco (or a third-party 
provider, in some cases).

>>Generally speaking, you cannot do DSL troublshooting on your workbench. 
>>You need to do it onsite, using the phone line the DSL modem is intended 
>>to connect to (or at least *some* phone line with DSL service).
>  
> 	The ideal situation, meaning I wouldn't have to bother anyone
> but I wouldn't "learn" anything either, eh? 

Depends. You won't learn much, if anything, about the physical layer 
that way. But if the problem is at the Ethernet layer or above (with 
encapsulations like pppoe the customary layer labels don't fit well, so 
I won't try to use them), you can readily troubleshoot it this way. So 
it sort of depends on what you want to learn, I guess.
[...]

>>From looking around the Web, I gather it is possible to connect two DSL 
>>modems together directly ... though I've never tried this myself. Even 
>>if that gave you a carrier signal, though, you'd then need something at 
>>the other end to act as a pppoe server, so you could test that part (not 
>>undoable; RP used to make a simple server available for testing router 
>>configurations, and they may still do so. It's probably less effort to 
>>troubleshoot onsite, though, as least for a one-time project.
> 
> 	We've done this many times with "old" dialup modems plus all
> kinds of schemes in Amateur Radio; all analogue.. This strictly
> digital stuff is intimidating to me.. Do you have a start URL for the
> above? Maybe I'm carrying this "learning" too far..

I just Googled something like "DSL loopback testing" and one of the 
early hits discussed this. I'm sorry but I did not save the reference.

>>If you post again on this, please include the make and model of the 
>>modem. Westell has a bunch of model numbers.
> 
> 	Its a Westell C90-36R516-01 and there is a lot of information
> on the Web about them.. I fetched a file: westall.setup.exe; and to
> try it I installed Win98SE in a box just to see what cooks..
> 
> 	With the modem on, running that program, the screen flashes
> something then a panel "Westell Modem Browser," with big red
> characters: "NO CARRIER DETECT - DSL NOT CONNECTED," which is to be
> expected...

Yup.

> 	With the modem off, running the same program, screen prints a
> panel "Find Modem:" with two windows; "Available TCP/IP Adapter
> Addresses: 169.254.53.147" --and-- "Computed Broadcast IP Addresses:
> 169.254.255.255".. Another window: Status: "Searching For Media At:
> 169.254.255.255".. Big red characters again: "NO COMMUNICATION WITH
> THE MODEM." Windoze intimidates me too... <grin>
> 
> 	The led's on the modem seem OK.. "Link" Green.. "Power"
> Green.. "Ready" Blinking Green and "Activity" 2 second yellow blinks
> when the program is sending something.. The docs say that the
> blinking Green led in Ready means not connected, which we know..
> 
> 	I understand most of this except the IP Address and can guess
> that that is the IP address of Westall for further diags??? I tried
> pinging that address, on another machine connect to the INet, and got
> "host unreachable." 

Finally, a question I can actually answer! No, the 169.254.53.147 
address is a private-space address, just one that you probably don't 
recognize. The address space 169.254.0.0/16 is a reserved block (like 
192.168.0.0/16, 10.0.0.0/8, and the 172.something/20 one I can never 
remember) for local use. In this case, it is used for self-assignment of 
IP addresses when there is neither an explicit address assigned nor a 
DHCP response.

All modern versions of Windows (even Win98 is modern enough) include 
this default. But usually Linux implementations don't provide it (though 
I think some recent DHCP clients offer it as an option). And it's not as 
silly as it might seem at first; it is a convenient way to link up 2 
laptops with a crossover cable, for example, and to support other ad hoc 
networks.

> 	Linuxwise, setting up pppoe OK, I could get the modem sending
> packets and waiting for an answer, according to DEBUG. So the modem
> seems to be working..
> 
> 	Bottom line is that I have to connect that modem to the
> proper Telco line, as you suggested in the first place..

Yeah. You probably also need to wake up your friend long enough to get 
her to give you the install info she got from the telco. It will have 
info on how to set up an account (userid and password) that the pppoe 
client at her end (not sure if this is actually in the DSL modem or in 
software the attached PC uses; both approaches exist) will use to 
authenticate to the telco's pppoe server.

Some DSL-pppoe implementations allow a connection limited access without 
this authentication ... in my experience, just enough access to reach 
the authentication server and set up an account, but not enough actually 
to use the Internet ... that is, you get an unroutable address assigned 
to you until you have an account setup. Of course, your situation may be 
different; telco DSL implementations still aren't very standardized.

 From what you've written, I'd guess that she has a pppoe problem, not 
any sort of a problem with the hardware itself.

> 	APPRECIATE!!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
