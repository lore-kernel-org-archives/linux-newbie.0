From: beolach@juno.com
Subject: Re: Linux Networking problem...please help..
Date: Wed, 16 Jul 2003 17:45:19 GMT
Sender: linux-net-owner@vger.kernel.org
Message-ID: <20030716.104558.487.56969@webmail14.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-net-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: skpobox@yahoo.com
Cc: linux-net@vger.kernel.org, linux-newbie@vger.kernel.org


I reasonably certain everything below is correct,
but don't sue me if it doesn't work.  :)

Here is what's causing your problem. Because you
are using IP addresses 192.168.200.??? and also
IPs 192.168.250.???, you need to either use for
netmask 255.255.0.0, or change all your IPs so
they start with either 192.168.200 or 192.168.250,
but NOT both. The problem is, with your current
netmasks, you're trying to communicate between
two seperate subnets, 192.168.200.??? and
192.168.250.???.  M$ Windows will not like this.
Changing the subnet mask to 255.255.0.0 will put
all your boxes on one subnet, 192.168.???.???.

I suppose there might be someway to set up your
firewall to bridge the two subnets, but that would
probably be more complicated.

Hope this helps,
Conway S. Smith

--- Sanjay Arora <skpobox@yahoo.com> wrote:
>
>Netmask is 255.255.255.0 on all machines.
>
>Point is that the WinXP machine is being given a
>redirect by the Linux firewall and that is being
>ignored, either due to inability of WinXP or some
>misconfiguration by me.
>
>Sanjay.
>
>--- Stephen Samuel <samuel@bcgreen.com> wrote:
>> What are the netmasks for the two machines?? If you
>> give them a /18
>> (or a /16) netmask and the associated broadcast
>> addresses, then they'll
>> know to just talk directly to each other.
>> 
>> Of course, I barely trust Windows to understand
>> netmasks, but it
>> should be OK -- far better than trying to get it to
>> accept ICMP
>> redirects.
>> 
>> 
>> Sanjay Arora wrote:
>> > Network Scenario: RH 8 Linux Firewall Server using
>> three ethernet cards, 
>> > IPs 172.16.0.141 (connected to Cable Ethernet ISP
>> doing NAT), 
>> > 192.168.200.1 connected to an ethernet hub, &
>> 192.168.100.1 (presently 
>> > not being used). Using a hub two lans are
>> connected to 192.168.200.1, 
>> > each presently having one machine each having IP
>> addresses 192.168.200.2 
>> > (Windows XP machine, having Gateway address of
>> 192.168.200.1 in TCP/IP 
>> > settings) and 192.168.250.1 (RH8 Linux Server,
>> again having 
>> > 192.168.200.1 as GW address).
>> > 
>> > 1. When I ftp from 192.168.200.2 (WinXP) to
>> 192.168.250.1 (RH Linux File 
>> > Server), the firewall shows an error message
>> saying that WinXP machine 
>> > is ignoring redirects to 192.168.250.1 The
>> transfer speed is also around 
>> > 3.5 MB instead of full 10 MB which I get between
>> the two Linux Servers. 
>> > What's the reason? What do I do to correct this
>> behaviour?
>> > 
>> > 2. The RH fileserver machine is very
>> underutilized. I am thinking of 
>> > putting another ethernet card in it and connect is
>> to the cable ISP and 
>> > Firewall server using a hub. I plan to put a
>> firewall on the new 
>> > ethernet/IP address denying all outgoing packets
>> and put a sniffer on 
>> > it. What are the security implications of this?
>> Mind the IP that sniffer 
>> > is running on is denying all outgoing traffic and
>> dropping all incoming 
>> > traffic and providing no services at all. On the
>> other hand the machine 
>> > is inside the firewall.... a compromise here would
>> provide direct access 
>> > to all local network resources. Is a compromise
>> possible on an IP that 
>> > denies all traffic inbound and outbound? Should I
>> waste one machine for 
>> > this task on my proposed small network (less than
>> 20 machines)?
>> > 
>> > With thanks in advance ;-))
>> > Sanjay.
>> 
>> 
>> -- 
>> Stephen Samuel +1(604)876-0426               
>> samuel@bcgreen.com
>> 		   http://www.bcgreen.com/~samuel/
>>     Powerful committed communication. Transformation
>> touching
>>         the jewel within each person and bring it to
>> life.
>> 

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
