From: Ray Olszewski <ray@comarre.com>
Subject: Re: su fails
Date: Tue, 15 Jul 2003 12:37:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030715122050.01fbba40@celine>
References: <Pine.LNX.4.56.0307151320130.4165@filesrv1.baby-dragons.com>
 <3F133105.7010309@bcgreen.com>
 <5.1.0.14.1.20030714080202.01ef9e68@celine>
 <oprsa696n7hmmv6x@smtp.arrakis.es>
 <oprsbalrywhmmv6x@smtp.arrakis.es>
 <200307142023.43039.pa3gcu@zeelandnet.nl>
 <oprsbc6ofjhmmv6x@smtp.arrakis.es>
 <3F133105.7010309@bcgreen.com>
 <5.1.0.14.1.20030715074706.01faa538@celine>
 <oprsc1u8ichmmv6x@smtp.arrakis.es>
 <1058288791.4987.20.camel@gandalf.ciccio-net.cjb.net>
 <Pine.LNX.4.56.0307151320130.4165@filesrv1.baby-dragons.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <oprsc6khvqhmmv6x@smtp.arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:20 PM 7/15/2003 +0200, Andrew Langdon-Davies wrote:

>>         Now here I'd probably agree IF there is even the slightest doubt
>>         that the system may have been compromised ,  Clear it & start
>>         fresh .  Be extremely careful of re-applying the user(s) data .
>>                 Hth ,  JimL
>>...snip...
>I know this is a very wide-open question, but how likely really is it that 
>my system has been compromised? I use a coyote firewall on a dedicated 486 
>with a dial-up ppp connection. I connect a few hours every day and I 
>actually switch off the modem at night. There are two machines behind the 
>coyote and only one is giving signs of anything odd (the one I was messing 
>about on the other day just before the problems started).

You are right to ask this question. "Reinstall the OS" is easy to say, but 
time-consuming to do. Especially if the system is at all customized (and 
what system isn't?).

Assuming the machines are physically secure (so we can rule out a *local* 
compromise ... you don't say if, for example, you have a teen-ager in the 
house), the likelihood of a compromise in this setting is extremely low. 
Your IP address probably changes every time you connect. Unless you are 
forwarding ports from the router to the Slackware host, no off-site machine 
an initiate a connection to that host, even if something on the Slackware 
host is listening (the NAT prevents it).

Unaddresed possibilities do include:

1. That you somehow were tricked into downloading and installing a trojan 
app on the Slackware host. This is unlikely if you've stuck to "official" 
Slackware update sites, and not even all that likely if you've downloaded 
the sourcve of well-known apps from their sites and installed them. But if 
you installed anything obscure, consider it carefully.

2. You don't say what the other system is, so I'll assume the worst, that 
it runs Windows. Here, the potential for compromise is greater ... more 
trojans target Windows, and active-content capabilities in the core apps 
are an easy vector for contamination, and P2P and IM applications are good 
at making hols in firewalls. So there too, consider what has been 
downloaded. (Once any machine on the LAN is compromised, you have to allow 
for the possibility that it provided a path to compromise other machines.)

3. The Coyote firewall/router may have been compromised. I haven't looked 
at Coyote for years, so I don't know if it is keeping up with security 
patches. How risky this is depends on what the firewall/router runs, but 
risk candidates include kernel-level problems, BIND problems, ssh problems 
... that's what I can think of offhand.

None of us has the information needed to assess these risks. You do.

>By the way, Lilo is behaving perfectly again.
>But what about the
>'stderr is not a tty - where are you?'

I tried a few things here and could not get that message to turn up. But my 
Debian systems are different in detail from your Slackware system, so 
that's not definitive. Normally, whan you start X from a console (using 
startx, most often), both STDOUT and STDERR are mapped to that console. 
With xdm, there is no console to map them to, so an xdm start **might** 
generate that sort of message (does your xdm have a small window, probably 
in the lower right, that logs info? if not, this guess gets more 
convincing). Or they might be an old leftover of some time when that userid 
tried to start X in some way that did not work. But the really odd thing is 
that there is no reason why STDERR *should* be a tty; it is common to 
redirect STDERR to a file (in fact, it is a common practice when debugging 
X problems). So the message is, in a way, objecting to a commonplace practice.

In the absence of something else suggestive (and the other symptoms you've 
discussed here do not count), I would disregard this one.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
