From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: firewall blocks ppp0?
Date: Mon, 25 Nov 2002 15:57:22 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211252057.gAPKvMu04359@hartford-hwp.com>
References: <3DE102FA.85D8F85D@gelm.net>
 <200211232355.gANNtx703441@hartford-hwp.com>
 <3DE102FA.85D8F85D@gelm.net> <5.1.0.14.1.20021124102855.02154730@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021124102855.02154730@celine> (message from Ray
	Olszewski on Sun, 24 Nov 2002 10:58:43 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org, brownh@hartford-hwp.com

Ray,

I've cleaned up some difficulties due to my floundering about (a
strangely gummed up configuration), and while the situyation seems a
bit simpler now, it still remains obscure to me. One exemple of my
confusion is that if I run adsl-status when adsl is down, it tells me
it can't find /etc/ppp/pppoe.conf, but that file no longer holds pppoe
configuration information under RH 8.0.

The simplest way to describe the present situation is to provide a bit
of the debug log:

> ...
> sent [LCP EchoRep id=0x0 magic=0xb81d9109]
> rcvd [IPCP ConfReq id=0x6c <addr 64.252.160.1>]
> sent [IPCP ConfAck id=0x6c <addr 64.252.160.1>]
> rcvd [IPCP ConfNak id=0x1 <addr 64.252.164.224>]
> sent [IPCP ConfReq id=0x2 <addr 64.252.164.224>]
> rcvd [IPCP ConfAck id=0x2 <addr 64.252.164.224>]
> local  IP address 64.252.164.224
> remote IP address 64.252.160.1
> Script /etc/ppp/ip-up started (pid 4916)
> rcvd [LCP EchoReq id=0x0 magic=0x3ddca2a6]
> sent [LCP EchoRep id=0x0 magic=0xb81d9109]
> Script /etc/ppp/ip-up finished (pid 4916), status = 0x0
> Script /usr/sbin/pppoe 
>       -p 
>	-I eth0 
>	-T 20 
>	-U  
>	-m 1412    
>	-D 0-0 
>	finished (pid 4906), status = 0x1
> Modem hangup
> Script /etc/ppp/ip-down started (pid 4950)
> Connection terminated.
> Connect time 0.4 minutes.
> Sent 30 bytes, received 58 bytes.
> Waiting for 1 child processes...
> script /etc/ppp/ip-down, pid 4950
> Script /etc/ppp/ip-down finished (pid 4950), status = 0x0

What this looks like to me is that I've actually shook hands with my
DSL provider and gotten back an IP address. The script ip-up seems to
have done its job succecssfully (exit code 0). Then the command pppoe
-p is issued to write the pppoe process ID to the file
/var/run/pppoe-adsl.pid.pppoe.

It finishes with status 0x1. I know about exit code 0 or 1, but have
no idea what 0x1 implies. Did the process complete satisfactorily or
not?  In any case, I get a hangup at that point. Apparently timing out
after a series of: "ipchains: Protocol not available" statements.

I don't understand why a successful connection results in a
hangup. The -T timeout option of 20 seconds seems about the time it takes for
my connection to die. I gather that timeout can cause trouble if
there's no traffic. The solution is to use lcp-echo-internal option
for pppd. The pppoe timeout should be about four times the LCP echo
interval. Any idea where one implements the LCP echo option?

The -m clamp value of 1412 for TCP max segment size is appropriate for
a LAN behind a gateway. Since I'm not in that situation, the option
could be omitted, I guess.

The -D option specifies the file in which to dump debug informaitno. I
gather this really slows down the process, and so wonder if it might
be causeing a timeout.

Is it possible that the dump slows things down too much, and the
Protocol not available statements just is the result of waiting for
pppoe to got going?

What I'm running now on my old system is 
  ...
  PPPOE_TIMEOUT=20
  LCP_FAILURE=3
  LCP_INTERVAL=20
  CLAMPMSS=1412
  CONNECT_POLL=6
  CONNECT_TIMEOUT=60

I don't think I have the new system configured much differently.

I'm profoundly ignorant about all these things, but something is
triggering a shutdown.

>   As I read both this and your earlier posting, you have three
>   independent configuration issues, namely --
>
>   1. ppp0 "cycles between active and inactive". If you are using
>   RP-PPPoE in "on demand" mode, this may be normal.

Yes. I set up pppoe to be run when I ask it to run, and I've concluded
the irregularity may be normal as the connection is established.

>   2. "ipchains -L" does not work ("got the error message that this
>   command is incompabible with my kernel."). Odd,

Yes, but my getting rid of a flakey configuration seems to have
stopped that behavior.

>   But your firewall and your PPPoE connection may be interfering
>   with each other in a different way. If ppp0 stops and restarts,
>   its IP address probably changes. Most firewalls (especially ones
>   set to "high" protection, as you say yours is) block all
>   external-interface traffic not to your external IP address. If
>   your external (ppp0) IP address changes, the ipchains rulesets
>   have to be cleared and restored to reflect the new IP
>   address. RP-PPPoE has a way to do this, but whether it works with
>   your firewall package ... well, who can guess? What firewall
>   package are you using? Did you provide for RP-PPPoE to restart the
>   firewall whenever it comes up?

I can't give good answers here. The firewall package is that which
shipped with RH8.0. While I've since run Bastille, I didn't use it to
mess with IPchains. But what you say may again point to timing as
pppoe tries to readjust to a new ipaddress. As for your last question,
the only configuration parameter in roaring penguin pppoe utility is
to state that I've a stand alone machine. Did you have something else
in mind here?

   One last thought ... what does it mean when you say "My eth0 is
   made active during boot, for I can run ifconfig and see that it is
   up as soon as I've finished booting"? The term "active" has no
   specific meaning,

I originally had diven my machine an IP address (something like
168.192.0.1) because I've had my mahcine on a LAN, but now am just
happy to get it to work as a stand-along workstation. When eth0 had an
address, ifconfig recported it; when I made a DSL connection, the
number changed to whatever my provider provides. I subsequently tried
to cut the IP address, and I believe (not sure) that now ifconfig
shows the eth0 as up, but with noi address until pppoe is started..


Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
