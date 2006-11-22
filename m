From: Chuck Gelm <Chuck@Gelm.net>
Subject: Re: DialUp and ADSL on same machine??
Date: Wed, 22 Nov 2006 10:38:56 -0500
Message-ID: <45646F10.30707@Gelm.net>
References: <LbPE0P3J.1164144314.5657380.haltec@kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <LbPE0P3J.1164144314.5657380.haltec@kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "haltec@kvinet.com" <haltec@kvinet.com>
Cc: linux-newbie@vger.kernel.org

Hi, Hal:

 I firmly believe we need a different topic than "DialUp and ADSL on 
same machine?"

 It seems to me that you have a problem sending email.

 I think that you are NOT having a DNS, resolv.conf,  CHAP,  or PAP 
problem.

 I use Mozilla's Thunderbird to send (and receive) email.

 If you choose to use 'sendmail' or 'Mutt' I cannot help you.

I see that you are trying to use a 'console' rather than a GUI due to 
being 'vision challenged'.

I do not know what linux distribution and version and kernel you are using,
but I don't think this matters.

 Can you read your email ?@kbinet.com and ?@verizon.net
from either dialup or DSL?

 Here is one item I can add that might help.  One security measure that
an ISP's email server can use is to reject inbound email if it is coming
from an IP  address that it did not assign.  e.g.

 You are connected to the internet via Verizon DSL's IP address and
 you are trying to send mail via 'mail.kvinet.com'
  -or-
 you connected via kvinet.com's dialup, with a kvinet.com IP address,
 and you are trying to send mail via 'mail.verizon.net'.

 I have my mail servers (Earthlink.net and gelm.net) setup on various
computers (Windoze & Linux) including my laptop. 
Often I use my laptop at a 'Free WiFi'
server and I can still use POP and SMTP with either mail server,
even though my IP address was issued by whatever the WiFi router's
ISP is.

 My SMTP servers require authentication.  This is the security
needed for a mail server to allow an alien IP address to send it
email.  Perhaps 'sendmail' and 'Mutt' has a configuration setting
for 'My SMTP server requires authentication' as my
'Mozilla Thunderbird' does.

 I truly believe you have a SMTP issue and not a
"DialUp and ADSL on same machine?" problem.

 If this is true and we resolve your problem,
others having the same problem and searching the linux-newbie
archives, may not find the solution.  ;-)

 I recall that you did not mention having difficulty sending email
in your original post.  I believe sending email is your core issue.

 Would all be well,
 if you could send email while using your DSL internet connection?.
-----
True or False?
getmail is working fine with dialup
getmail is working fine with DSL
'sendmail' works fine with dialup
'sendmail' to mail.verizon.net fails with DSL connection
'sendmail' to mail.kvinet.com works fine with DSL connection
-----
Of course, if anything fails, please mention what you were trying to do,
what you did, and the exact error message.

"I could not get my desired setup working and wondered what the solution 
might be."

 The only thing I can see that is not working is SMTP.

"The biggest problem is; that my dialup ISP, kvinet.com, requires they
 be the relay for sending mail out."

 There needs to be more specification here. Do you mean:
"While dialed into my kvinet.com connection...kvinet.com requires they
 be the relay for sending mail out."

HTH, Chuck

haltec@kvinet.com wrote:
> Only way I can reply at the present time; as an attachment..
>
> Hal
>   
> ------------------------------------------------------------------------
>
>
> I have to use the kvinet.com's web mail to post this...
> Greetings, thanks and Chuck wrote:
>   
>> Topic:
>>
>> As far as I can see I cannot have a pppoe setup and a dialup
>> setup on the same machine.. It's either one or the other.. Not both..
>> This machine has a NIC and a hardware modem, with the modem running
>> for years with little problems.. "Adding" PPPOE for ADSL completely
>> upsets everything, necessitating an install of the ppp package and
>> running pppsetup again from scratch, in order to have dial up again..
>>
>> Am I wrong??  Any comments most welcome. TIA  Hal.
>> Discussion:
>>
>> Sequentially or concurrently?
>>     
>
> 	Don't need concurrent and wish I didn't need sequential
> except I could not get my desired setup working and wondered what the
> solution might be.. Basically I want the box ADSL, Verizon.net, but
> to be able to getmymail and compose offline, then sendmail.. The
> getmail is working fine and, as you say, very fast.. Answering any
> mailbox incoming mail, on my machine, using Mutt as MUA, still NG..
> The biggest problem is; that my dialup ISP, kvinet.com, requires they
> be the relay for sending mail out.. This is a simple entry in
> sendmails submit.cf file and works fine dialup only..
>
>
>
>   
>> Hal, I do not understand why you would want two IP/ISP connections
>> of such a huge speed difference.  :-|  DSL is usually about 25
>> times faster than dial-up.  Running both would give you, perhaps,
>> a 4% gain. Now, you would not only need a custom routing table,
>> but you would need to configure some way to share the data transfer.
>> I know that IP sharing exists, but not how to configure it.  :-|
>>     
>
> 	I don't want two options, only ADSL, but I must be able to
> sendmail by using my original ISP and our mailboxes there.. I, at one
> time and the original post, was I thought the only answer might be
> having both setups on one machine..
>
>
>
>   
>> If I was to switch between DSL and dialup on the same host,
>> I'd run ppp-setup,
>> save the ppp-go/ppp-down scripts and the current rc.local;
>> Then
>> setup PPPOE and save whatever script is created.
>> Then, create two scripts, ALA...
>> #/usr/local/bin/makeDSL.sh
>> cp /etc/rc.d/rc.local.DSL /etc/rc.d/rc.local
>> /etc/rc.d/rc.local
>>
>> &
>>
>> #/usr/local/bin/makeDIALUP..sh
>> cp /etc/rc.d/rc.local.dialup /etc/rc.d/rc.local
>> /etc/rc.d/rc.local
>>
>> HTH. <more>
>>     
>
> 	The scripts would have to be more complicated, in my case,
> because pppoe.conf overwrites /etc/resolv.conf with verizons DNS
> address that kvinet.com wont or cant use.. I've not gotten into that
> too heavily.. Manually entering both DNS's doesn't work because,
> every time adsl-start is invoked, it rewrites resolv.conf to a
> symlink to /etc/ppp/resolv.conf, that is verizons DNS.. Another
> enigma is that adsl-start has been replaced by pppoe-start in later
> versions.. I tried all this on another machine to try and learn more
> and got more frustrated.. <grin>
>
>
>
>   
>> Hal wrote:
>>     
>>> On 11-17, Chuck Gelm wrote:
>>>       
>>>> Hal wrote:
>>>>         
>>>>>     <snip>
>>>>>           
>>>     I'm the only user so it should be simple, eh?? HI.. If they
>>> both use PAP, we have a big problem with the way rp-pppoe and
>>> pppsetup works.. No work around that so far.. The automatic DNS
>>> entries overwrite and no amount futzing has fixed that so far..
>>> If one ISP handled all it would be, maybe, easier but Verizon doesn't
>>> support POP3 and hands off all it's mail operation to either Yahoo or
>>> MSN.. I don't care to use either..
>>>       
>> Hal, I'm getting lost among the pronouns.  I cannot tell who
>> is doing what, with which, nor to whom.
>>
>> This may or may not be simple.  I need more information to
>> tell whether I may have the capacity to assist.
>>
>> I do not know what PAP is.
>>     
>
> 	I know it's confusing, especially to me who didn't have these
> INet problems 20 years ago... Ugh.. PAP and CHAP, you must use one or
> the other, are authentication routines.. Do you not have pap-secrets
> and/or chap-secrets in /etc/ppp, moving the password into a more
> secure position?? Both kvinet.com and verizon.net use PAP, except the
> entries are different.. When pppoe is run over a normal ppp setup, it
> renames ppp-secrets and chap-secrets to .bak files, so dial up can't
> possibly work after that..
>
>
>
>   
>> If rp-pppoe (RoaringPenguin) works, we do not have a problem.
>> If pppsetup works, we do not have a problem.
>> The need or benefit of running both DSL and dialup has not been 
>> demonstrated.
>>
>>
>> I have run one ISP connection and used another's DNS.
>> I do not see that overwriting DNS entries is a fatal problem.
>>
>> "Verizon doesn't support POP3"
>>
>>  Uh, I do not see why you put DSL/dialup and POP in the same sentence. 
>> I have used POP with dialup, DSL, & cable modem.
>> What is the core issue here? Verizon-dialup?; Verizon DSL?
>>     
>
> 	The BIG problem is that I'm not doing what Verizon wants me
> to do.. They only want M$ and their version of IE6 with all it's
> advertising and popups/popdowns.. That part is no problem, of course,
> it's just the eMail sending.. Kvinet.com allows mailbox access from
> the INet with no blocking so their accounts can getmail without
> having to use webmail, just POP3 for speed and efficiency.. In
> retrospect I don't think I should fault Verizon for their policy..
> They have to go with the market share like any business..
>
>
>
>   
>> Your Verizon-DSL account does not offer POP?
>>     
>
> 	I'm almost sure they don't but not, honestly, sure.. Anyway I
> don't want to use their lashup for mail because they hand off all
> eMail stuff to either MSN or Yahoo.. They don't have their own
> mailboxes.. I want to keep things "simple." Dream on with that one,
> eh? One main reason is that kvinet.com is GREAT people.. The SysAdm
> is trying to help me and is even doing some things at home to try and
> help.. Huge Verizon cannot possibly serve that well.. My wife will
> continue to use her dialup and mailboxes at kvinet.com, no matter I
> have Vz ADSL.. She doesn't want to rock the boat and I can understand
> why now.. <grin>
>
>   
>> Who is your DSL ISP provider?
>>     
>
> 	Verizon.net -- Formerly Bell Atlantic, one of the baby
> bells.. Huge outfit.. Also our landline telephone provider.. No other
> outfit available for broadband.. I think you presumed, above, that
> Verizon was both dialup and ADSL provider.. I wasn't clear enough I
> bet..
>
>   
>> Who is your dialup ISP provider?
>>     
>
> 	kvinet.com in Charleston, WV, accessed via a local number.. A
> fantastic outfit, IMHO.. We wont desert them..
>
>
>
>   
>> <snip>
>>     
>>>> Both packages perform a similar function.  Connect to an ISP.
>>>>         
>>>     Yes but they both presume either alone and I cannot, so far,
>>> seem to find anyway to circumvent that..
>>>       
>> It is illogical, to me, to use both DSL and dialup.
>> Why do you wish both?  What benefit?
>>     
>
> 	As above; don't need both, just ADSL but sending mail as
> outlined.. Receiving mail no problem using getmail...
>
>
>
>   
>> <snip>
>>
>>     
>>>     For the time being I'm going to presume I have to use pppoe
>>> only and that works very well for Web access but sendmail and ftp are
>>> a problem.  My web site is at the same site as my mailboxes and I can
>>> web mail, no problem, but my eyes aren't that good.. I'd rather go the
>>> POP3 route that's OK with ADSL for receiving mail only using
>>> getmail.. I can sendmail to anyone on the same ISP, but nowhere
>>> else.. A DNS problem?? I guess so but no way to fix it yet.. To
>>> complicate matters my ISP insists on being a remote rather than
>>> letting me on the INet myself like I used to do.. The ADSL ISP will
>>> not talk to anyone about Linux as long as their MS stuff is working..
>>> It's up to me to figure it out someway or another.. I may be able to
>>> do something with different partitions.. Any way it's gonna be a lot
>>> of leg work, methinks..
>>>       
>> "but sendmail and ftp are a problem"
>> Would you be more specific?  Exact error message?
>>     
>
> 	I'm sorting this out now with so many and a blown mind..
> Clearly cut and try is not working so far.. Separate partitions would
> solve the problem /or/ separate boxes, but that would be counter
> productive.. Web mail works, but my bad eyes can't stand much of the
> GUI display for text.. My wife can't use GUI at all with her
> glaucoma.. Old age sucks... <grin>
>
>
>
>   
>> My website is the same as my mailboxes and I can POP and SMTP
>> and web mail, no problem. I''ve never had a problem with this
>> nomatter whether I was using dialup, DSL, or cable modem.  :-|
>>     
>
> 	You are lucky or in the right place at the right time.. We're
> very rural, our own choosing, so have to suffer the consequences..
> Refusing to run M$ has it's problems too, as we all know..
>
>
>
>   
>> " I can sendmail to anyone on the same ISP, but nowhere
>>     
>>> else.. A DNS problem?? "
>>>       
>> Exact error message?
>>     
>
> 	My notes terrible: "Relay access denied "Service unavailable"
> then "Connection refused by 127.0.0.1" I've tried various telnet
> schemes to port 25 and have become more confused, not having to do
> that previously..
>
>
>
>   
>> "The ADSL ISP will not talk to anyone about Linux as long as their MS 
>> stuff is working.."
>>
>> Uh huh.  Neither will mine.  I did not use any Micro$oft stuff when I
>> had dialup nor DSL  ISP (and not now with my cable modem).  ?
>>
>> "It's up to me to figure it out someway or another."
>>
>> I disagree.  You have linux-newbie@vger.org to assist.
>> You only need to share more information that will help us assist you.
>> ;-)
>>     
>
> 	I really APPRECIATE this list but hate to bother busy people
> with my problems, especially when they're complicate and verbose..
> Computers, today, are not KISS, thanks to so many crackers, spammers,
> etc.. Most sites have telnet, ping and finger, etc, disabled these
> days.. The more security, the higher the fence..
>
>
>
>   
>> So, you are actually having problems sending email
>> and you are assuming that using dialup and DSL concurrently
>> is a solution.  :-|  Perhaps not. 
>> Perhaps one does not get down from an elephant(*).
>> ;-)
>>     
>
> 	Not without breaking a leg, eh?? No, maybe the above clears
> up what we need to do.
>
>
>
>   
>> Perhaps a new topic should be started, ala;
>> "Does Verizon-DSL support POP3?"
>>     
>
> 	Not really, in my case, as I want to retain my mailboxes at
> kvinet.com..
>
> 	Maybe a summation is in order: ADSL Web access working fine..
> Getmail working fine, fetching my mail sent to haltec@kvinet.com;
> plus the other four different users mailboxes.. Or to
> lnx2.kvinet.com, a MX record to the former.. Whilst connected to the
> VerizonDSL server using pppoe; I cannot answer, forward, etc any of
> the received mail in the normal way, at least with Sendmail 8.13.3;
> one of the versions that's more secure than old Sendmail, not running
> as root... It uses "smmsp" as user 25, much like Postfix has it's
> special user too.. I am not completely savvy on either.. Am I an
> iconoclast?? I think so, as are all Linuxers, eh??
>
>
> Hal..
>   

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
