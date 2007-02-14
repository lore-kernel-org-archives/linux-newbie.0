From: Hal <haltec@kvinet.com>
Subject: Re: aDSL modems, PVC, can two clients crossover?
Date: Wed, 14 Feb 2007 14:05:43 -0500
Message-ID: <20070214190543.GA1856@lnx2>
References: <45D33F81.1090901@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <45D33F81.1090901@gelm.net>
Content-disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

On 02-14, Chuck Gelm wrote:
> Howdy:
> 
> Where can I read about aDSL modems.

Greetings: My adsl 'library' is sketchy but did come up with the following:

http://roaringpenguin.luky.org/pppoe/how-to-connect.txt

and--files: DSL-HOWTO and DSL-HOWTO.pdf.. Dunno where I got them.. Sorry.



> I am considering Verizon ADSL at a residence in Union, Ohio, USA.
> Verizon offers an account without modem and claims to be
> compatible with the Westell 515 and 516.  I have an Efficient
> Networks SpeedStream 5360.
> 
> I have found some information on the SpeedStream, but not
> the Westell.

	Good luck with Verizon; wear a hat so you don't pull out much
hair... <grin> If all above are pppoe, I suspect they should work OK..

	If Verizon, Ohio, same as WV; I have used a Westell Wirespeed; and
Westell 6100, modem only, with my Verizon pppoe setup.. I've also used an
Actiontec GT704WG combination wireless/wire router modem.. The two former
ones were no problem using rp-pppoe, Slackware 10.1 and 10.2 with the 2.4.XX
kernels, once I got my username and password assigned, that took a long
time, because Vz said Linux wasn't supported... One caveat with the
Actiontec is that I had to use the 192.168.x.x group of private addresses
for the wireless and wire ports.. It didn't like my usual 10.x.x.x
assignments.. The first two modems didn't care of course, being "dumb"
modems..

	I had to borrow an XP machine to use their setup disk but once
getting the proper username and password installed; went to Linux for
operating plus my normal mail and browser setups, but that's another story..
The Vz web mail is full of ads and some other restrictions I'm not used to,
or don't like... <grin>

	I've retained my older ISP's mail boxes that caused a little problem
with SMTP relaying because Vz didn't like that.. Have that figured out now..
I connect to the INet ADSL, 'getmail' from kvinet.com and browse the Web with
either FireFox or Opera.. My MTA is Sendmail, relaying via
outgoing.verizon.net which means I had to enable the smtp auth lashup.. All
is now well and awesome.. :^)..

	Played around with one wireless card on another machine, just for
fun, but the Actiontec has 4 wire/RJ45 ports that is all I need for now..
Again, wireless, the caveat (can I change this?) is that the LAN must be the
192.168.x.x addresses.. I think M$ uses them, so there you go... ????



> http://kb.efficient.com/display/1n/index.asp?c=&cpc=&cid=&r=0.4739191

	I will look at that site..



> Lastly, I've been wondering if two DSL modems can be
> connected back-to-back.  Any links about this would be nice.
> 
> aDSLmodem <RJ11crossoverRJ11> aDSLmodem
> 
> Ethernet|ATM<>ATM|Ethernet

	Well, lemma see.. Normal Telco POT red and green pair are, when
enabled, a serial loop.. In olden times the CO battery, on hook, to the
subscriber was nominally negative 48 volts on the red measured to the
green.. Lately, I notice they don't observe that "rule" anymore noting that
they hooked me up in the reverse and it works OK, except for one very old
speaker phone that needs a special RJ11 cable to power it's electronics..
Also, our drop line is no longer red and green, but blue and white/blue...
Go figure..

	How the ADSL is configured on top of this--I would like to know
too.. I do know we're muxed in this complex with only 150 subscribers going
to a switch that routes to the CO with fibre.. Our "frequencies" are,
obviously, above the standard voice band cutting off around 3kHz-- as the Vz
supplied "DSL filters" will confirm, that go on each POT device..

	A long winded way to say that I don't think a RJ11 reversal or
crossover would work.. BUT--I sure have been wrong before. <grin> HTH, as
you have bailed me out countless times in the past..

	One last thing: The Actiontec modem/router will work fine allowing a
LAN like normal hub with up to 4X wire/ethernet connections plus many
wireless connections; as long as--here anyway--all use the 192.168.x.x
assignment setup.. The modem/router itself is 192.168.1.1 for configuring,
etc and the other devices should be 192.168.1.=>64... (In WV; Vz supplys the
Actiontec for $30.00, payable in 3 installments on the phone bill.)

	Best regards,

-- 

                 Hal        GNU/Linux - Slackware 10.2, 2.4.31
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
