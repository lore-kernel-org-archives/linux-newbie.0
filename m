From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: vpn connection problem
Date: 18 Apr 2002 16:56:09 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1019145369.15384.25.camel@Zebra>
References: <3CBEE7A7.305A895B@yukthi.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3CBEE7A7.305A895B@yukthi.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ahrao@yukthi.com
Cc: linux-newbie@vger.kernel.org

Hmm. Can you connect to the gateway from the windows machines (does ping
or telnet work)? If you can't reach the gateway, then obviously the
problem is with the windows configuration or the local network.

From the gateway, can you see the vpn server (ping / telnet etc)? If
not, then check the connections and also the routing table on the
gateway (if it defaults to the wrong interface, you might not get a
connection).

If the windows machines _can_ see the gateway and the gateawy _can_ see
the vpn server, but the windows machines _can't_ see the vpon server,
then it could be that you do not have IP forwarding working properly on
the gateway.

Good places to look for extra information are the HOWTO's on networking,
Firewalling, Masquerading and IPChains.

Paul.

On Thu, 2002-04-18 at 16:35, Hanumanth Rao wrote:
> Hi Gurus,
> 
> I have a situation for which i want a solution, hope somebody out there
> has got a solution.
> 
> I have win98 and win2k professional vpn clients to be connected through
> a linux 6.1 box (gateway with ISDN connection) to a vpn server on the
> internet.  Im not able to get connected to the vpn server please
> suggest.
> 
> Scenario
> 
> Win98 & Win2K Professional (vpn clients)
>                    |
>                   V
> Red Hat Linux 6.1 (Gateway, ISDN Connection,  MASQ enabled, IP_Forward
> enabled)
>                    |
>                   V
> VPN Server (on Internet with real ip)
> 
> 
> Please let me know if anything to be done on the linux gateway.
> 
> Regards
> Rao
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
