From: Ray Olszewski <ray@comarre.com>
Subject: Re: vpn connection problem
Date: Thu, 18 Apr 2002 09:18:26 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020418161826.00c78608@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: ahrao@yukthi.com, linux-newbie@vger.kernel.org

I am not sure is there is enough VPN expertise on this list to help you. You
might do better reading the FAQ materials at, say, the LEAF project
(leaf.sourceforge.net). Though they would be oriented to LEAF, not Red Hat
... for much of this stuff, Linux is Linux, and you should be able to get
some help that way.

To have a chance of getting more help here, you need to tell us:

1. What sort of VPN you are running (there are several possibilities, and
some have serious problems with NAT). There is at least one proprietary VPN
package -- its name slips my mind -- that I believe cannot be made to run
through NAT.

2. How you have tried to set it up (in particular, what port forwarding you
have done, if any).

3. How it fails.

You should also confirm that the clients in question can reach the outside
VPN server in a normal fashion ... say with pings and ssh connections. If
they cannot, then your problem is in routing (or in DNS), not in the VPN
itself, and you will need to fix that first. And that the VPN server is set
up correctly (can it make VPN connections when no Linux rotuer is involved?).

Other basics to include (from the Red Hat router) are

        what kernel ("uname -a")
        what interfaces ("ifconfig -a")
        what firewalling (probably "ipchains -nvL", but this
                depends on which kernel you are using)
        what port forwarding (I forget the command for this; check
                the man page for ipmasqadm)
        what routing table ("netstat -nr" is one way to display this)

PS. I saw your other, "register" message. I assume you are trying to join
the list. That's not hhow to do it. Send a message to
        majordomo@vger.kernel.org
with this as its body
        subscribe linux-newbie ahrao@yukthi.com
        

At 09:05 PM 4/18/02 +0530, Hanumanth Rao wrote:
>Hi Gurus,
>
>I have a situation for which i want a solution, hope somebody out there
>has got a solution.
>
>I have win98 and win2k professional vpn clients to be connected through
>a linux 6.1 box (gateway with ISDN connection) to a vpn server on the
>internet.  Im not able to get connected to the vpn server please
>suggest.
>
>Scenario
>
>Win98 & Win2K Professional (vpn clients)
>                   |
>                  V
>Red Hat Linux 6.1 (Gateway, ISDN Connection,  MASQ enabled, IP_Forward
>enabled)
>                   |
>                  V
>VPN Server (on Internet with real ip)
>
>
>Please let me know if anything to be done on the linux gateway.
>
>Regards
>Rao



--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
