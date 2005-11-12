From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: pppoe/adsl-modem loopback??
Date: Sat, 12 Nov 2005 13:23:50 -0500
Message-ID: <20051112182350.GA1138@lnx2.w8mch.ampr.org>
References: <20051111221155.GA973@lnx2.w8mch.ampr.org> <437530BF.6070602@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <437530BF.6070602@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 11-11, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >Greetings: Trying to "help" a neighbour with her Westell ADSL modem
> >on my bench too far from the CO to connect.. I know "help" is a
> >mis-nomer because she knows more about ADSL than I... <grin> I've
> >fetched all the docs etc from the Web and Westell that I can..
> >
> >Does anyone know of a hardware "loopback" scheme, whatever, I can
> >try? I know this info is sparce but I've found the modem using
> >rp-pppoe but it fails because there is no carrier signal..
> >
> >Does this make sense?? I'm almost positive there's nothing I can do
> >except lug my desktop to town nearer the Central Office..
> >
> >Any comments? TIA..
> 


> Let me ask a basic question: Do you have DSL service to the phone line 
> you are trying to use for testing? From the part of your message that 
> reads "on my bench too far from the CO to connect", I surmise you do not.

	Thanks much Ray for your reply: Yes, I am 7 miles from the CO
and the "cutoff" point is 18,000 ft.. The "neighbour" is one block
from the CO in town... Telco says we will "never" have *DSL...




> Generally speaking, you cannot do DSL troublshooting on your workbench. 
> You need to do it onsite, using the phone line the DSL modem is intended 
> to connect to (or at least *some* phone line with DSL service).

	The ideal situation, meaning I wouldn't have to bother anyone
but I wouldn't "learn" anything either, eh? I have a "political"
problem in that the neighbour is a night owl and doesn't get out of
bed until after 5PM each day; and I can't drive at night so.........
I should refuse to try and help but I'm so bloody curious.... <grin>




> I apologize if I'm going over things here that you already know, Hal ... 
> but if you do misunderstand the situation at this basic a level, you'll 
> just be banging your head against the wall uselessly.

	Repetition is the best teacher, Ray; no one knows it all and
we learn something new each and every day.. The brain needs it I
read.. Certainly mine does.. <grin>




> From looking around the Web, I gather it is possible to connect two DSL 
> modems together directly ... though I've never tried this myself. Even 
> if that gave you a carrier signal, though, you'd then need something at 
> the other end to act as a pppoe server, so you could test that part (not 
> undoable; RP used to make a simple server available for testing router 
> configurations, and they may still do so. It's probably less effort to 
> troubleshoot onsite, though, as least for a one-time project.

	We've done this many times with "old" dialup modems plus all
kinds of schemes in Amateur Radio; all analogue.. This strictly
digital stuff is intimidating to me.. Do you have a start URL for the
above? Maybe I'm carrying this "learning" too far..




> If you post again on this, please include the make and model of the 
> modem. Westell has a bunch of model numbers.

	Its a Westell C90-36R516-01 and there is a lot of information
on the Web about them.. I fetched a file: westall.setup.exe; and to
try it I installed Win98SE in a box just to see what cooks..

	With the modem on, running that program, the screen flashes
something then a panel "Westell Modem Browser," with big red
characters: "NO CARRIER DETECT - DSL NOT CONNECTED," which is to be
expected...

	With the modem off, running the same program, screen prints a
panel "Find Modem:" with two windows; "Available TCP/IP Adapter
Addresses: 169.254.53.147" --and-- "Computed Broadcast IP Addresses:
169.254.255.255".. Another window: Status: "Searching For Media At:
169.254.255.255".. Big red characters again: "NO COMMUNICATION WITH
THE MODEM." Windoze intimidates me too... <grin>

	The led's on the modem seem OK.. "Link" Green.. "Power"
Green.. "Ready" Blinking Green and "Activity" 2 second yellow blinks
when the program is sending something.. The docs say that the
blinking Green led in Ready means not connected, which we know..

	I understand most of this except the IP Address and can guess
that that is the IP address of Westall for further diags??? I tried
pinging that address, on another machine connect to the INet, and got
"host unreachable." 

	Linuxwise, setting up pppoe OK, I could get the modem sending
packets and waiting for an answer, according to DEBUG. So the modem
seems to be working..

	Bottom line is that I have to connect that modem to the
proper Telco line, as you suggested in the first place..

	APPRECIATE!!
-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
