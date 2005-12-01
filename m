From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: pppoe * rp-pppoe * pppd?????
Date: Thu, 1 Dec 2005 16:40:01 -0500
Message-ID: <20051201214001.GB1320@lnx2.w8mch.ampr.org>
References: <20051127200334.GA1427@lnx2.w8mch.ampr.org> <438B0490.5050506@gelm.net> <20051128161122.GA1398@lnx2.w8mch.ampr.org> <438B7D4A.2030202@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <438B7D4A.2030202@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

	Annotations follow plus comments to Eric..


On 11-28, chuck gelm wrote:
> Hal MacArgle wrote:
> 
> >On 11-28, chuck gelm wrote:
> > 
> >
> >>Hal MacArgle wrote:
> >>
> >>   
> >>
> >>>Greetings: I'm lost in a bewilderment of HOWTO's, Docs, FAQ's, etc
> >>>about PPPOE and ADSL Modems.. The more I read the worse it gets.
> >>><grin>
> >>>
> >>>However, my one query for the list is:
> >>>
> >>>Using the Roaring Penguin PPPOE client, rp-pppoe; do I really need
> >>>PPP support too?? Or does that client include PPP support.. No success
> >>>yet I've got to eliminate some parameters..
> >>>
> >>>Both are legitimate packages in Slackware 10-l and I'll go ahead and
> >>>try all the different ways but could use some possible comments..
> >>>
> >>>Cheers and TIA..
> >>>
> >>>
> >>>     
> >>>
> >>Hi, Hal:
> >>
> >>"...do I really need PPP support too??"
> >>
> >>Yes!!
> >>
> >>I use Slackware and I used Roaring Penguin for several years
> >>until one year ago (when I switched from aDSL to cable).  I
> >>started with Earthlink (which had excellent support) and later
> >>switched to Ameritech/SBC/Yahoo (which had horrible support).
> >>
> >>It seems to me that you did not describe any problem and you
> >>asked a very specific question.  I am unwilling to offer further
> >>information until you describe your setup.
> >>   
> >>
> >
> >	OK, thanks, bear with this old man.. And, thanks Eric for
> >your reaffirmation that ppp is needed along with pppoe.. But, does
> >rp-pppoe "include" ppp /or/ do I need to setup ppp separately??
> > 
> >
> Stop.
> 
> >Slackware has a script 'pppsetup' that, first off, asks for a
> >telephone number, so that can't be used it seems...
> > 
> >
> Do not 'setup ppp'.

	Now I know that.. Good..



> 
> >	Anyway; Chuck here's the, more or less, details.. ( My rings
> >to Verizon's tech support, at least the one I got, knew nothing of
> >what I was talking about).. The more I read the more I find that the
> >ISP's are different as well as the modems, not to mention two
> >different encodings; CAP or DMT, neither compatible.. Did your ISP
> >use the same as ours; Verizon?? Who knows.. Verizon, a Baby Bell
> >Telco uses PPPOE, rather than several other options; all designed to
> >confuse even experts... (There was a listing on the Web pertaining to
> >this and Verizon, but it's either gone or down now.) Maybe Verizon
> >"locks" out anything but M$ access??
> > 
> >
> Tell us what you know about this DSL service.
> I assume it is with Verizon.  Is this your service or your neighbor's?

	Yes, Verizon and with a neighbour /or/ was, as they are now
quarreling, so I've shut down the project.. Computers are enough
rather than getting into other conflicts, eh??

	I found that Verizon has supplied bridge modems to some and
router modems to others... Never a dull moment and it looks like I
wont be able to proceed further, as of now..

	I had planned for the details for anyones interest but that's
all moot as I've had to shut down the project due to political
problems.. I'll retain the thread for the possible future..




> >	My neighbour bought the package, paying one year up front and
> >received a 'kit' with the modem & cables plus a setup CD and several
> >micro filters.. Apparently her username and password plus DNS stuff
> >has to be via the software; it's not printed anywhere... I fired up
> >her modem and the ready led blinked then stayed steady indicating the
> >modem has received the DSLAM signal from the CO, one block away, and,
> >IIRC, means the system is in "sync."
> >
> >	I fired up her Gateway XP Home version machine and ran the
> >install CD that visually and verbally took me thru boo coo minutes of
> >really basic stuff about hooking up the microfilters, etc, etc.. It,
> >finally, got to the nitty gritty with the terse comment, "This may
> >take some time." After a half hour of watching a twirling ziggy I
> >turned the machine off.. Back to the drawing board...
> > 
> >
> IIRC, the last item was to turn on the modem.  ???

	Oh, if only I could really try all this.. Maybe in the
future..




> >	Since all M$ stuff intimidates me I thought I'd ring it out
> >with a Linux box, at her site, to see if, perhaps, her NIC card was
> >at fault: Slackware 10.1 w/ both the ppp and rp-pppoe packages
> >installed.. Modprobe ne io=0x300; NIC enabled and OK.. modprobe
> >pppoe, again OK.. ifconfig 10.0.0.1 eth0 mtu 1492, again OK..
> > 
> >
> In both of my DSL services (Earthlink & SBC-Yahoo) the
> network interface was not assigned an IP address
> (manually or automatically).  The IP address was assigned to
> the 'ppp0' interface via 'pppd'. 
> 'rp-pppoe' setup the 'pppd' application.

	Eric says that rp-pppoe is not needed when the modem is a
router.. Again, I'll have to proceed later.. I'm presuming, in both
your cases, that the modem was a bridge type; not a router type..




> >Invoking adsl-setup, I answered with a guessed username, no firewall,
> > 
> >
> Too late. The interface already had an IP address, which it
> should not have.

	Some Verizon setups with a bridge modem is different.. I'll
know more of the peculiars; possibly later. <grin>




> >making sure eth0 was there, and have to stop here because my notes
> >are confusing, except that, since I didn't really connect to the ISP;
> >I tried another, same brand but different model modem; one that had
> >been used before by another person 500 miles from here and was
> >working.. The difference between the modems is that one is marked
> >"bridge modem" and the other, in the kit, a "router modem." Don't
> >know if that tells anything much in this case.. Neither one
> >connected, not that I know what to expect from the ISP, which
> >happens, in this case, to be the same as the Telco, viz, Verizon..
> > 
> >
> Use the modem from the service ISP.

	That's a very good idea but does Verizon support Unix/Linux;
anything other than M$?? We'll see.. Ringing their help desk was a
disaster several times; my marginal hearing plus accents I'm not used
to.. They tried very hard to help but we just didn't click.. The mere
press this, press that for half an hour before a live person doesn't
help... Welcome to progress, eh??




> >	Am I outliving my welcome?? I've got to keep better notes..
> >
> >	Is the above enough for futher comments?? I guess what I
> >basically need to know now is the relationship between rp-pppoe and
> >ppp with the above lashup.. I can't try what I'm used to: 'pppsetup'
> >that Slackware uses because you can't get by the first entry required
> >of the telephone number for dialup.. Does installing rp-pppoe take
> >care of installing the necessary ppp routines?? Or are both needed,
> >separately??
> >
> > 
> >
> rp-pppoe is for DSL service.
> pppsetup is for dial-up service.
> They are not interchangeable

	I can see that now..




> "Does installing rp-pppoe take care of installing the necessary ppp 
> routines??"

	Yes it does but Verizon didn't like it.. Again, Eric says
it's not needed with a router modem..




> Uh, yeah, kind of...  Let us just say that 'rp-pppoe' takes care of the 
> necessary things and let us no bother to define what those things are.
> 
> You need the 'ppp' package, but you do not need 'necessary ppp routines'.
> You need the rp-pppoe package, and you need to configure the rp-pppoe
> routine.
> 
> Do not attempt to obtain an IP address for the NIC associated with the
> DSL modem as it does not need an IP address.  The IP address is assigned
> to the resultant 'ppp0' device.  It will, probably, be assigned by the
> DSL ISP. 

	That's a shame because I have five IP addresses from Ham
Radio operations so could have a static address but I'm sure Verizon
wont co-operate along those lines.. Since it's not really my site,
it's all moot anyway... Verizon wants one to run WinXP period..

	Appreciate!!!

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
