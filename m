From: "Jerry T" <linuxl1@hotmail.com>
Subject: Re: ssh - connection refused
Date: Sun, 14 Apr 2002 04:27:19 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <F119Kc81VGE3dasKUYh00003e70@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org


To answer your more recent question first: I use port forwarding *to* the 
Linux box.

Now to address the questions as stated below...

It is clear from your response (and that of others) that a typical ssh 
connection should be fairly painless and requires little setup. The fact 
that I never receive a log in screen and quickly get a "Connection refused" 
is becoming more of a concern.

On my Linux box I have uncovered these issues:

When I tried to check ipchains using "ipchains -nVL" as you suggested, I 
receieved "ipchains: Incompatile with this kernel" and when I tried 
"iptables -L" I received /lib/modules.../netfilter/iptables.o: unresolvable 
symbol nf_unregister_sockopt.

Now I have no idea what state my firewall is in. I did rebuild my kernel 
from the 2.4.18 kernel directly from www.kernel.org. Now my questions are 
growing in number. Does the fact that ipchains and iptables are not working 
keep me from connecting through ssh? Are there other kernel settings that 
would directly effect ssh but not telnet or ftp? Could my firewall be in an 
undefined state where it allows some access but not others?

When I try to run the firewall tool "lokkit", it errors out with an 
"end-of-file" error at the end when it tries to test the mail relay.

Is all of this another problem for another day, or (i'm afraid to ask) is 
this all probably related to my ssh connectivity problem?



>From: Ray Olszewski <ray@comarre.com>
>To: "Jerry T" <linuxl1@hotmail.com>
>CC: linux-newbie@vger.kernel.org
>Subject: Re: Fwd: Re: ssh - connection refused
>Date: Sat, 13 Apr 2002 09:23:03 -0700
>
>At 03:18 PM 4/13/02 +0000, Jerry T wrote:
> >The /etc/ssh/sshd_config file already had the lines in it that you have
> >listed.
> >
> >I have been able to successfully ssh from my Linux box back to itself. 
>sshd
> >seems to be running fine. (sshd appears in the list of services that you 
>see
> >during bootup, sshd comes on just before xinetd)
>
>Good. So sshd is actually running. Now try the *next* thing I already
>suggested; use putty to do a normal userid/password login. To do this, load
>your connection profile in putty, then check to make sure all 
>authentication
>options (in Connection ->SSH) are unchecked (so it won't even attempt RSA
>authentication). Start the session, and putty should display first a prompt
>for userid, then one for password. Enter values for a valid account with a
>real login shell (typically bash) on the Linux host and see if that lets 
>you
>connect. Don't use root for this test unless you've enabled root logins in
>sshd_config.
>
>If you CAN connect this way, then your problem is specific to the RSA key
>generation, so please post again with ALL the details of how you did it 
>(you
>told us some of this, but you left out stuff like what userid is involved,
>the full path to the key file, and the keyfile's mode ... and what sshd
>daemon you are running). With this sort of configuration problem, the devil
>is in the details, so we need to know the details if you want anything more
>than wild guesses.
>
>If you CANNOT connect this way, then something is blocking access from your
>workstation to port 22 on the Linux host. You say you are running no
>firewall (you can verify this with the command, for 2.2.x kernels, 
>"ipchains
>-nVL", or the corresponding commands for other kernels), so that's not it.
>Check if entries in /etc/hosts.allow and /etc/hosts.deny are consistent 
>with
>the access you want to get. Make sure the putty settings are right (I can't
>tell you what "right" is without knowing more about the sshd you are 
>running
>... basics are making sure the SSH radio button is selected and that the
>right preferred SSH protocol is chosen).
>
>What still troubles me here is the "Connection Refused" message you report
>getting. That almost always means nothing is listening on the target port.
>If I try to ssh to my Linux system with an invalid userid/password combo, I
>get "access denied" (then another password: prompt), not "Connection
>Refused". If I'm using the wrong protocol (SSH1 on a system that wants
>SSH2), I get an error about packet length. This makes me lean toward either
>sshd not running (apparently the wrong answer, since you report checking
>this) or blocking via the hosts.deny file. Or a connectivity problem 
>between
>the two systems ... but if you CAN telnet and ftp, we've eliminated that
>possibility too.
>
>
>--
>------------------------------------"Never tell me the odds!"---
>Ray Olszewski                                        -- Han Solo
>Palo Alto, CA           	 	         ray@comarre.com
>----------------------------------------------------------------
>




_________________________________________________________________
Chat with friends online, try MSN Messenger: http://messenger.msn.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
