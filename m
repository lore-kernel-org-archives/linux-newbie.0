From: John Kelly <bilbo@waitrose.com>
Subject: Re: start up script
Date: Sat, 6 Mar 2004 12:00:14 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040306120014.30049a77.bilbo@waitrose.com>
References: <20040306104303.4475.qmail@web60602.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040306104303.4475.qmail@web60602.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
On Sat, 6 Mar 2004 02:43:03 -0800 (PST)
Ravi Kumar Munnangi <munnangi_ivar@yahoo.com> wrote:

> Users,
>  
>   Iam working in a LAN with a number of systems.
>   A system has X hardware address and another has Y
> hardware address.
>   I want to set the hardware address of the second
> system
>   also to X.
>   I also want to set the primary IP addresses of both
>   systems to 172.31.19.30.
>   So when I ping to 172.31.19.30, both the systems
>   should respond.
> 
>   The topology of LAN we are using is star. All
> systems
>   are connected to a Switch.
>   Does the settings change when we are using a bus
>   topology?

First up I don't think you should be doing this. having two systems with the same 
hardware address on a LAN is going to break things in 'interesting' ways. ARP requests 
are not likely to work as you expect and the switch is likely to get very confused if 
it has the same hardware address answering on two different ports.
But then maybe I am wrong.
For what it is worth, here is an extract from the ifconfig man page:
===================================================================
 
hw class address
       Set  the hardware address of this interface, if the device driver supports this
       operation.  The keyword must be followed by the name of the hardware class  and
       the  printable ASCII equivalent of the hardware address.  Hardware classes cur-
       rently supported include ether (Ethernet), ax25 (AMPR AX.25), ARCnet and netrom
       (AMPR NET/ROM).

====================================================================
So if the hardware supports it, ifconfig can do it.

> My actual goal is to start 2 web servers on two
> systems with same hardware address and same 
> primary IP address but with different secondary
> IP addresses. So when a request comes from a 
> client, the request has to be seen by both 
> systems. I will write some mechanism by which only
> one will respond finally.

To me it sounds like you want some kind of load balancing mechanism. 
If it is really necessary for both systems to see a packet, then some form
of forwarding might be what you need. 

Hope this helps.

regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
