From: Hal <haltec@kvinet.com>
Subject: Re: DialUp and ADSL on same machine??
Date: Sun, 19 Nov 2006 15:03:34 -0500
Message-ID: <20061119200334.GA3151@lnx2>
References: <20061117205845.GA1319@lnx2.kvinet.com> <455E39ED.9010705@Gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <455E39ED.9010705@Gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <Chuck@Gelm.net>
Cc: linux-newbie@vger.kernel.org

On 11-17, Chuck Gelm wrote:
> Hal wrote:
> >	As far as I can see I cannot have a pppoe setup and a dialup
> >setup on the same machine.. It's either one or the other.. Not both..
> >This machine has a NIC and a hardware modem, with the modem running
> >for years with little problems.. "Adding" PPPOE for ADSL completely
> >upsets everything, necessitating an install of the ppp package and
> >running pppsetup again from scratch, in order to have dial up again..
> >
> >	Am I wrong??  Any comments most welcome. TIA
> >  
> Hi, Hal:
> 
> You may be right or wrong, but I think you are ambiguous.  :-|

	More like duh!!



> I used 'pppsetup' for a few years, then RoaringPenguin (PPPOE) a few years
> when I upgraded to DSL, and now I have cable modem internet access.
> 
> Both 'pppsetup' and "PPPOE" are used to connect to an
> Internet Service Provider (ISP).    So...
> 
> "As far as I can see I cannot have a pppoe setup and a dialup setup on 
> the same machine."
> 
> IMHO, is ambiguous and false.  You can have both on the same machine.  
> They may not
> run concurrently unless you edit some configurations. (iptables, 'route 
> -n', /etc/resolv, ...)
> You could share (or not) your DSL connection by allowing users to dial 
> into your
> telephone modem and establish a ppp connection through (or to) your host.

	I'm the only user so it should be simple, eh?? HI.. If they
both use PAP, we have a big problem with the way rp-pppoe and
pppsetup works.. No work around that so far.. The automatic DNS
entries overwrite and no amount futzing has fixed that so far..
If one ISP handled all it would be, maybe, easier but Verizon doesn't
support POP3 and hands off all it's mail operation to either Yahoo or
MSN.. I don't care to use either..


> "completely upsets everything"  IMHO, is ambiguous.  Each may change 
> (upset?)

	Upset a stupid cutsie and, probably, poor metaphor.. It
doesn't work... <grin>



> /etc/resolv, routing tables, DNS, IPTABLES, ... for the other program.  ;-)
> 
> Both packages perform a similar function.  Connect to an ISP.

	Yes but they both presume either alone and I cannot, so far,
seem to find anyway to circumvent that..


> 
> 'pppsetup':
> "... PPPsetup is a bash shell script to help you in creating a chat 
> script, for
> establising a PPP connection to a internet service provider. ..."
> 
> 'rp-pppoe':
> "... pppoe is a user-space redirector which permits the use of PPPoE
> (Point-to-Point Over Ethernet) with Linux.  PPPoE is used by many
> DSL service providers. ..."  i.e. connect to an internet service proveder.

	For the time being I'm going to presume I have to use pppoe
only and that works very well for Web access but sendmail and ftp are
a problem.. My web site is at the same site as my mailboxes and I can
web mail, no problem, but my eyes aren't that good.. I'd rather go the
POP3 route that's OK with ADSL for receiving mail only using
getmail.. I can sendmail to anyone on the same ISP, but nowhere
else.. A DNS problem?? I guess so but no way to fix it yet.. To
complicate matters my ISP insists on being a remote rather than
letting me on the INet myself like I used to do.. The ADSL ISP will
not talk to anyone about Linux as long as their MS stuff is working..
It's up to me to figure it out someway or another.. I may be able to
do something with different partitions.. Any way it's gonna be a lot
of leg work, methinks..



> Just for grins, when I had DSL service. I dialed my '56k' modem to an ISP
> just to see if the DSL telephone frequencies would interfere with the
> telephone modem frequencies.  Whilst doing a download via DSL, I dialed
> and got a 49.333 kbps connection over and over and over...   Which was as
> fast as I ever got before DSL.    :-)

	Thats a good one.. Why do we like computers?? <grin> The
opposite has happened here at least for fetching mail but it could be
a coincidence.. Another anomoly, here, is that my ADSL download speed
hovers around 54kBps for several big file fetches, html, firefox..
I've fetched a few, same size files, via torrent and the reported
download speed is 200-300kBps... Torrent should be slower than
straight peer to peer I would think.. Oh well. Back to the drawing
boards, eh?  Thanks for your comments. It all helps.. At least, with
torrent, I can keep my share over 1.0 instead of being a leech with
dialup..

-- 

         Hal.      GNU/Linux -- Slackware 10.1, kernel 2.4.29
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
