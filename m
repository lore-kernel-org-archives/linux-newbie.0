From: Ray Olszewski <ray@comarre.com>
Subject: Re: su fails
Date: Tue, 15 Jul 2003 08:13:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030715074706.01faa538@celine>
References: <3F133105.7010309@bcgreen.com>
 <5.1.0.14.1.20030714080202.01ef9e68@celine>
 <oprsa696n7hmmv6x@smtp.arrakis.es>
 <oprsbalrywhmmv6x@smtp.arrakis.es>
 <200307142023.43039.pa3gcu@zeelandnet.nl>
 <oprsbc6ofjhmmv6x@smtp.arrakis.es>
 <3F133105.7010309@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <oprsckcjqyhmmv6x@smtp.arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:20 PM 7/15/2003 +0200, Andrew Langdon-Davies wrote:
>On Mon, 14 Jul 2003 15:39:01 -0700, Stephen Samuel <samuel@bcgreen.com> wrote:
>
>>It sounds to me like you've been rooted, and somebody installed
>>a trojan.  I'd do a full hunt for signs of a rootkit. When in
>>doubt (especially if there are ony a few people on your system),
>>I'd just load a new OS and migrate the user data over to it.
>
>
>Now you've got me worried.

I don't want to sound like Pollyanna, but interpreting your initial trouble 
report as evidence of a breakin seems to me like an enormous leap. I didn't 
see Stephen's full reply (was it sent to the list? I can't find it here), 
but I would encourage him to explain *why* he interprets the report as an 
indication that "you've been rooted, and somebody installed a trojan". 
Especially when your initial report indicated that you had installed an 
unspecified number of unnamed packages (including one that require you to 
use a forcing parameter to install) recently.

>What would signs of a rootkit be?

Tough question. Rootkits are designed to hide themselves, so a well-written 
one would leave no signs. There was a good set of articles on intrustion 
detection about a year ago in Dr. Dobbs Journal, but they are probably not 
frely available online anywhere. Generally, you need to examine your system 
for instances of anomalous behavior, pretty much what you are already doing.

I would not associate *failure* of the "su" program with use of a rootkit 
... at least not a *good* rootkit. It isn't being very stealthy, after all. 
Nor does it deny you root access to the system.

>I thought reinstalling shadow had put everything right, but there are 
>still hiccups. For example, although I can now su again --that is, it now 
>recognises the password-- if I give the wrong password I still get just 
>'sorry'.

I presume you mean "Sorry." This is not a quibble; it is an example of the 
kind of thing (a capitalization difference, and a missing period) you look 
for to spot a (clumsy) trojan. But whether your result matches what Richard 
and I expect matters less than whether it has changed from what it used to 
do (or, if you don't remember, what a similar Slackware system normally 
does). Linux systems do vary in their details, and I don't run Slackware 
here, so expecting my responses to match yours *exactly* is too much to ask 
... certainly not a justification for reinstalling the OS.

Do you recall if you used to get a response more like the one Richard and I 
posted here? If you did, and now it is different, this change means either 
you inadvertantly changed something, or someone else deliberately changed 
something.

>Lilo failed to load again and I have had to reinstall it.

Without details of your setup, this one is impossible to diagnose. But why 
would a rootkit mess with the bootloader?

>And I get a very strange message in my user .xsession-errors file. It says:
>'stderr is not a tty - where are you?'

Context, please. Is that the full line? How do you normally run X? What userid?

>Do I assume the worst?
>For what it's worth, GRC reports most ports as stealthed and 113 IDENT and 
>5000 UPnP as closed.

Does it report ANY ports as open? What does "netstat -ln" report?

What sort of Internet connection do you have? Do other users have physical 
access to the system, or remote access to shell accounts? What services do 
you normally run? Are you keeping up to date on security patches for 
Slackware? Do your logs show anything unusual? Are there any implausible 
logins (reported by "last")? Do you run an iptables-based (or ipchains-) 
firewall on the system (or does the system run behind a NAT'ing firewall)? 
What kernel, and it is patched for the recent rash of kernel-level security 
problems I saw reported (on the debian-security list)?

You need not post the answers to these questions. (Though feel free to do 
so if you like.)  I offer them as the kinds fo questions one asks when 
evaluating the likelihood of a breakin.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
