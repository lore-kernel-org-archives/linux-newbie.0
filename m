From: Chuck Gelm <chuck@gelm.net>
Subject: Re: DialUp and ADSL on same machine??
Date: Mon, 20 Nov 2006 15:10:07 -0500
Message-ID: <45620B9F.70501@gelm.net>
References: <20061117205845.GA1319@lnx2.kvinet.com> <455E39ED.9010705@Gelm.net> <20061119200334.GA3151@lnx2>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20061119200334.GA3151@lnx2>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Topic:

As far as I can see I cannot have a pppoe setup and a dialup
setup on the same machine.. It's either one or the other.. Not both..
This machine has a NIC and a hardware modem, with the modem running
for years with little problems.. "Adding" PPPOE for ADSL completely
upsets everything, necessitating an install of the ppp package and
running pppsetup again from scratch, in order to have dial up again..

 Am I wrong??  Any comments most welcome. TIA  Hal.
Discussion:

Sequentially or concurrently?

 Hal, I do not understand why you would want two IP/ISP connections
of such a huge speed difference.  :-|  DSL is usually about 25
times faster than dial-up.  Running both would give you, perhaps,
a 4% gain. Now, you would not only need a custom routing table,
but you would need to configure some way to share the data transfer.
I know that IP sharing exists, but not how to configure it.  :-|

 If I was to switch between DSL and dialup on the same host,
I'd run ppp-setup,
 save the ppp-go/ppp-down scripts and the current rc.local;
Then
 setup PPPOE and save whatever script is created.
Then, create two scripts, ALA...
#/usr/local/bin/makeDSL.sh
cp /etc/rc.d/rc.local.DSL /etc/rc.d/rc.local
/etc/rc.d/rc.local

 &

#/usr/local/bin/makeDIALUP..sh
cp /etc/rc.d/rc.local.dialup /etc/rc.d/rc.local
/etc/rc.d/rc.local

HTH. <more>

Hal wrote:
 > On 11-17, Chuck Gelm wrote:
 >> Hal wrote:
 >>>     <snip>
 >
 >     I'm the only user so it should be simple, eh?? HI.. If they
 > both use PAP, we have a big problem with the way rp-pppoe and
 > pppsetup works.. No work around that so far.. The automatic DNS
 > entries overwrite and no amount futzing has fixed that so far..
 > If one ISP handled all it would be, maybe, easier but Verizon doesn't
 > support POP3 and hands off all it's mail operation to either Yahoo or
 > MSN.. I don't care to use either..
Hal, I'm getting lost among the pronouns.  I cannot tell who
is doing what, with which, nor to whom.

 This may or may not be simple.  I need more information to
tell whether I may have the capacity to assist.

 I do not know what PAP is.

If rp-pppoe (RoaringPenguin) works, we do not have a problem.
If pppsetup works, we do not have a problem.
The need or benefit of running both DSL and dialup has not been 
demonstrated.


I have run one ISP connection and used another's DNS.
I do not see that overwriting DNS entries is a fatal problem.

"Verizon doesn't support POP3"

  Uh, I do not see why you put DSL/dialup and POP in the same sentence. 
I have used POP with dialup, DSL, & cable modem.
What is the core issue here? Verizon-dialup?; Verizon DSL?
Your Verizon-DSL account does not offer POP?
Who is your DSL ISP provider?
Who is your dialup ISP provider?

<snip>
 >> Both packages perform a similar function.  Connect to an ISP.
 >
 >     Yes but they both presume either alone and I cannot, so far,
 > seem to find anyway to circumvent that..

 It is illogical, to me, to use both DSL and dialup.
Why do you wish both?  What benefit?

<snip>

 >     For the time being I'm going to presume I have to use pppoe
 > only and that works very well for Web access but sendmail and ftp are
 > a problem.  My web site is at the same site as my mailboxes and I can
 > web mail, no problem, but my eyes aren't that good.. I'd rather go the
 > POP3 route that's OK with ADSL for receiving mail only using
 > getmail.. I can sendmail to anyone on the same ISP, but nowhere
 > else.. A DNS problem?? I guess so but no way to fix it yet.. To
 > complicate matters my ISP insists on being a remote rather than
 > letting me on the INet myself like I used to do.. The ADSL ISP will
 > not talk to anyone about Linux as long as their MS stuff is working..
 > It's up to me to figure it out someway or another.. I may be able to
 > do something with different partitions.. Any way it's gonna be a lot
 > of leg work, methinks..

"but sendmail and ftp are a problem"
 Would you be more specific?  Exact error message?

 My website is the same as my mailboxes and I can POP and SMTP
and web mail, no problem. I''ve never had a problem with this
nomatter whether I was using dialup, DSL, or cable modem.  :-|

" I can sendmail to anyone on the same ISP, but nowhere
 > else.. A DNS problem?? "

 Exact error message?

"The ADSL ISP will not talk to anyone about Linux as long as their MS 
stuff is working.."

 Uh huh.  Neither will mine.  I did not use any Micro$oft stuff when I
had dialup nor DSL  ISP (and not now with my cable modem).  ?

"It's up to me to figure it out someway or another."
 
I disagree.  You have linux-newbie@vger.org to assist.
You only need to share more information that will help us assist you.
;-)

 So, you are actually having problems sending email
and you are assuming that using dialup and DSL concurrently
is a solution.  :-|  Perhaps not. 
Perhaps one does not get down from an elephant(*).
;-)

Perhaps a new topic should be started, ala;
"Does Verizon-DSL support POP3?"

Regards, Chuck

(*) Sorry, this may not translate internationally.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
