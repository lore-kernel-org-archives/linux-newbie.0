From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: start up script
Date: Tue, 09 Mar 2004 06:09:47 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <404DD02B.5080903@bcgreen.com>
References: <20040306104303.4475.qmail@web60602.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040306104303.4475.qmail@web60602.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ravi Kumar Munnangi <munnangi_ivar@yahoo.com>
Cc: linux-newbie@vger.kernel.org

Ravi Kumar Munnangi wrote:
> Users,
>  
>   Iam working in a LAN with a number of systems.
>   A system has X hardware address and another has Y
> hardware address.
>   I want to set the hardware address of the second
> system
>   also to X.

ifconfig eth0 hw ether  00:56:BA:A4:81:02

>   I also want to set the primary IP addresses of both
>   systems to 172.31.19.30.
>   So when I ping to 172.31.19.30, both the systems
>   should respond.
ifconfig eth0 172.31.19.30   [[ may want to set netmask/BC]]
> 
>   The topology of LAN we are using is star. All
> systems
>   are connected to a Switch.
>   Does the settings change when we are using a bus
>   topology?
Some switches may get confused by having the same
MAC address on two ports... In somes cases, it may
only send a packet to one fo the machines (usually
the last one to use that MAC address))

>   
>   Do I have to write a start up script?
>   How should I write?
Write a regular shell script and then put it in
the proper place.  If you have proper rc2.d
script directories, then you can put it near the
SNNnetwork scripts

For RedHat, that would be /etc/rc.d/rc[2345].d/S10network
so you could try S09
Otherwise, put it in the r.local file for those kinds of systems.

Setting the MAC addr needs to be done *BEFORE* you
bring the card up. (or you need to bring it down).
(under Linux)

For RedHat systems, however, you can use the MACADDR=
variable in /etc/sysconfig/network-scripts/ifcfg-eth0
and IPADDR=

The RH scripts do the rest.



For the person who said that some cards don't support this,
I would say that that is very rare to nonexistent..
the MAC address needs to be softwar settable for
things like prosxy arp and bridgng... In 17 years
of playing with ethernet, Idon't rememember *ever* seeing
a card that you couldn't set the MAC address on.



>   My actual goal is to start 2 web servers on two
>   systems with same hardware address and same 
>   primary IP address but with different secondary
>   IP addresses. So when a request comes from a 
>   client, the request has to be seen by both 
>   systems. I will write some mechanism by which only
>   one will respond finally.


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
