From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: pppoe * rp-pppoe * pppd?????
Date: Mon, 28 Nov 2005 11:11:22 -0500
Message-ID: <20051128161122.GA1398@lnx2.w8mch.ampr.org>
References: <20051127200334.GA1427@lnx2.w8mch.ampr.org> <438B0490.5050506@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <438B0490.5050506@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org, eric@cisu.net

On 11-28, chuck gelm wrote:
> Hal MacArgle wrote:
> 
> >Greetings: I'm lost in a bewilderment of HOWTO's, Docs, FAQ's, etc
> >about PPPOE and ADSL Modems.. The more I read the worse it gets.
> ><grin>
> >
> >However, my one query for the list is:
> >
> >Using the Roaring Penguin PPPOE client, rp-pppoe; do I really need
> >PPP support too?? Or does that client include PPP support.. No success
> >yet I've got to eliminate some parameters..
> >
> >Both are legitimate packages in Slackware 10-l and I'll go ahead and
> >try all the different ways but could use some possible comments..
> >
> >Cheers and TIA..
> > 
> >
> Hi, Hal:
> 
> "...do I really need PPP support too??"
> 
> Yes!!
> 
> I use Slackware and I used Roaring Penguin for several years
> until one year ago (when I switched from aDSL to cable).  I
> started with Earthlink (which had excellent support) and later
> switched to Ameritech/SBC/Yahoo (which had horrible support).
> 
> It seems to me that you did not describe any problem and you
> asked a very specific question.  I am unwilling to offer further
> information until you describe your setup.

	OK, thanks, bear with this old man.. And, thanks Eric for
your reaffirmation that ppp is needed along with pppoe.. But, does
rp-pppoe "include" ppp /or/ do I need to setup ppp separately??
Slackware has a script 'pppsetup' that, first off, asks for a
telephone number, so that can't be used it seems...

	Anyway; Chuck here's the, more or less, details.. ( My rings
to Verizon's tech support, at least the one I got, knew nothing of
what I was talking about).. The more I read the more I find that the
ISP's are different as well as the modems, not to mention two
different encodings; CAP or DMT, neither compatible.. Did your ISP
use the same as ours; Verizon?? Who knows.. Verizon, a Baby Bell
Telco uses PPPOE, rather than several other options; all designed to
confuse even experts... (There was a listing on the Web pertaining to
this and Verizon, but it's either gone or down now.) Maybe Verizon
"locks" out anything but M$ access??

	My neighbour bought the package, paying one year up front and
received a 'kit' with the modem & cables plus a setup CD and several
micro filters.. Apparently her username and password plus DNS stuff
has to be via the software; it's not printed anywhere... I fired up
her modem and the ready led blinked then stayed steady indicating the
modem has received the DSLAM signal from the CO, one block away, and,
IIRC, means the system is in "sync."

	I fired up her Gateway XP Home version machine and ran the
install CD that visually and verbally took me thru boo coo minutes of
really basic stuff about hooking up the microfilters, etc, etc.. It,
finally, got to the nitty gritty with the terse comment, "This may
take some time." After a half hour of watching a twirling ziggy I
turned the machine off.. Back to the drawing board...

	Since all M$ stuff intimidates me I thought I'd ring it out
with a Linux box, at her site, to see if, perhaps, her NIC card was
at fault: Slackware 10.1 w/ both the ppp and rp-pppoe packages
installed.. Modprobe ne io=0x300; NIC enabled and OK.. modprobe
pppoe, again OK.. ifconfig 10.0.0.1 eth0 mtu 1492, again OK..
Invoking adsl-setup, I answered with a guessed username, no firewall,
making sure eth0 was there, and have to stop here because my notes
are confusing, except that, since I didn't really connect to the ISP;
I tried another, same brand but different model modem; one that had
been used before by another person 500 miles from here and was
working.. The difference between the modems is that one is marked
"bridge modem" and the other, in the kit, a "router modem." Don't
know if that tells anything much in this case.. Neither one
connected, not that I know what to expect from the ISP, which
happens, in this case, to be the same as the Telco, viz, Verizon..

	Am I outliving my welcome?? I've got to keep better notes..

	Is the above enough for futher comments?? I guess what I
basically need to know now is the relationship between rp-pppoe and
ppp with the above lashup.. I can't try what I'm used to: 'pppsetup'
that Slackware uses because you can't get by the first entry required
of the telephone number for dialup.. Does installing rp-pppoe take
care of installing the necessary ppp routines?? Or are both needed,
separately??

	Appreciate!
-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
