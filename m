From: Horia Chirculescu <horia@ct2.eltop.ro>
Subject: Re: Setting up a LAN to use DSL - Getting quite desparate - using
 public IP on router with private IP on clients
Date: Tue, 14 May 2002 10:39:49 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <abqfbh$d2b$2@main.gmane.org>
References: <003101c1fb08$cda53130$0c00a8c0@qpbd103>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003101c1fb08$cda53130$0c00a8c0@qpbd103>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Phillp Morgan <pmorgan@quickpages.net.au>
Cc: linux-newbie@vger.kernel.org, linux-admin@vger.kernel.org

There are few problems with your configuration files.
The most important concearn the routing process. It seems that you don't
route the 61.95.1.X class over your internal 192.168.0.0 network.

The fastest way to do that is to use ip alias for your linux boxes , that
is to enable ip alias into your kernel and to write into your rc.inet1
something like this:
ifconfig eth0:1 61.95.1.221
and 
ifconfig eth0:1 61.95.1.222
on the second linux box.

Your routing table will have entries for the 61.95.1.X network.
Of course, if you have only a small part of the ip address class, you have
to use the coresponding subclass. Ask your ISP about your subclass. It
will give you something like (sample): 61.95.1.204/255.255.255.224 that is
32 ip addresses. 

Another way to solve this is to masquerade the 192.168.0.0/255.255.255.0
class with your DSL router (if the router can perform this task) or to use
the secondaru DNS linux box with 2 network cards as a router. 

I recently (today) scanned your web server and I noticed that no apache
server is running.

Don't use NameVirtualHost line (Delete or comment out the line). Use only
VirtualHost directive.
VirtualHost 61.95.1.222
Also, you shuld use the directive "Listen" like this:
Listen 61.95.1.222:80

(Also, see below for a few more comments)

Have a nice day.

                           ____    ____    o           ~ 
               //     //  / __ \  //   \  // //''''  //\\
              //_____//  / / / / //___ / // //      //  \\
             //     //  / /_/ / // \    // //      //____\\ 
            //     //   \____/ //   \  //  \\.... //      \\
 ------------------------------------------------------------------------
                          Comtec Net Romania
           ----------------------------------------------------
         WEB: www.eltop.ro IRC: irc.eltop.ro NEWS: news.eltop.ro
           ----------------------------------------------------
                    Horia Chirculescu root@eltop.ro
                         Mobil: +40 93 205 086

On Tue, 14 May 2002, Phillp Morgan wrote:

> Hi all,
> 
> Around three weeks ago our new ISP sent us an OpenNetworks 501R DSL router
> that they say supports multiuple IP addresses and static-NAT. We've been up
> and down so many times, we are getting desparate to resolve this issue once
> and for all...
> 
> I have included the contents of all of the configuration files I can find in
> the hope that this will help quickly identify a solution. Please forgive me
> for the length of this email.
> 
> We have two linux servers and an NT server, with a dozen or so XP clients,
> and a couple of MACs.
> 
> The first Linux server runs as primary DNS (Bind 8), email server (sendmail
> 8.9.3), and Web server (apache 1.3.6). I also use Telnet and ftp on the
> server from out of the office, and we provide a web based email service to
> our staff.
> 
> The second Linux server is used for secondary DNS, and as a simple means of
> backing up files from the primary server.
> 
> The NT server is used for our Primary Domain Controller for network access,
> storage of our company data and some applications.
> 
> I can telnet and ftp to the primary linux server from outside the office.
> But I can't get any web sites working. Any browsers I use say "Server not
> found or DNS error".
> 
> As the ISP will not give us public IP addresses for each machine, I've
> converted from IP based web site hosting to name based using the
> NameVirtualHost directive in Apache.
> 
> The router supposedly NATs all traffic from a public IP address to the
> private IP address, regardless of port. This is required because we
> telnet/ftp etc to all of the servers from time to time, and portmapping
> would be quite cumbersome (we'd have to assign different port numbers for
> telnet on each machine etc)...
> 
> Email in and out appears to be working fine, for all domains. But I haven't
> really got virtual hosting for email configured, so the addresses are global
> (right?)

Yes, the addresses are global.
The record form DNS database says that qpbd999 is the responsable NS for
the entire domain. You should use a lower preference value (curently you
use 30 - notice that lower value represents higher logical
preference). This is becouse qpbd999 is your primary mail exchanger. 5
will be a great choice. Increment the serial no. and then restart the
named daemon afther you alter the number.

> 
> There are essentially three problems.
> 
> 1. nslookup will not work
> 2. Web pages are not served, for any of the hosted sites, from external
> clients
> 3. Web pages are not served, for any of the hosted sites, from internal
> clients
> 
> The server machines in question are named thus:
> 
> qpbd999 - 192.168.0.3 - Primary DNS/Apache 1.3.6/Sendmail 8.9.3/Bind 8
> qpbd998 - 192.168.0.4 - Secondary DNS, Slackware, Linux 2.2.6, bind 8
> qpbd000 - 192.168.0.2 - PDC. Windows NT 4, service pack 6a
> 
> The clients use Windows XP, and have private 192.168.0.??/255.255.255.0
> addresses, using 192.168.0.1 as the gateway and 192.168.0.3 as the primary
> DNS and 192.168.0.4 as the secondary DNS.
> 
> I suspect my DNS is set up incorrectly, and the web server too. But there
> may be more. For example, the reverse lookup fails. nslookup reports it
> cannot find the name for 61.95.1.222 (the primary DNS), the secondary
> doesn't respond then nslookup dies (goes back to bash prompt).
> 
> 192.168.0.1 is the gateway (the router). 61.95.1.220 is the WAN ip.
> 
> The router is supposedly natting as follows...
> 
> 61.95.1.221 <--> 192.168.0.2 qpbd000
> 61.95.1.222 <--> 192.168.0.3 qpbd999
> 61.95.1.223 <--> 192.168.0.3 qpbd998
>
> The primary DNS server is running on 192.168.0.3
> The secondary DNS server is running on 192.168.0.4
> 
> The primary is also running sendmail and apache.
> 
> I can ping any private address from any server or client. I can only ping
> the public address from the machine to which it is "assigned" (NAT'd). Eg I
> can't go to 61.95.1.223 (192.168.0.4), and ping 61.95.1.222 and vice versa.
> My ISP tells me this is normal behaviour for at least this router (huh?).

This has nothing to do with NAT. You are on the local machine, wich knows
(from his internal ip table) the route to the local interface. So pinging
the address is usefull only to see that the eth0 is up and the ip table is
set up correctly.

> 
> I want to be able to get to all 5 hosted sites from our internal clients and
> want the public to be able to get to them from outside. I also need to be
> able to telnet and ftp to server from outside for support.
> 
> So the configuration....
> 
> Firstly. pinging www.quickpages.net.au from internally (at the server), gets
> this response...
> 
> qpbd999:/etc# ping www.quickpages.net.au
> PING qpbd999.quickpages.net.au (61.95.1.222): 56 data bytes
> 64 bytes from 61.95.1.222: icmp_seq=0 ttl=254 time=3.0 ms
> 64 bytes from 61.95.1.222: icmp_seq=1 ttl=254 time=3.1 ms
> 64 bytes from 61.95.1.222: icmp_seq=2 ttl=254 time=3.0 ms
> 
> Pinging 192.168.0.3 gets this response...
> 
> qpbd999:/etc# ping www.quickpages.net.au
> PING qpbd999.quickpages.net.au (61.95.1.222): 56 data bytes
> 64 bytes from 61.95.1.222: icmp_seq=0 ttl=254 time=3.0 ms
> 64 bytes from 61.95.1.222: icmp_seq=1 ttl=254 time=3.1 ms
> 64 bytes from 61.95.1.222: icmp_seq=2 ttl=254 time=3.0 ms
> 
> Pinging 61.95.1.222 from 192.168.0.3 gets this response...
> 
> qpbd999:/etc# ping 61.95.1.222
> PING 61.95.1.222 (61.95.1.222): 56 data bytes
> 64 bytes from 61.95.1.222: icmp_seq=0 ttl=254 time=3.0 ms
> 64 bytes from 61.95.1.222: icmp_seq=1 ttl=254 time=3.0 ms
> 64 bytes from 61.95.1.222: icmp_seq=2 ttl=254 time=3.0 ms
> 
> Pinging 61.95.1.222 from outside also works.
> Pinging www.quickpages.net.au responds with 'reply from 61.95.1.222...
> time=35.3ms' (ie it works).
> Attempting to get to the site via a browser fails with DNS error.
> 
> --
> The output from ifconfig...
> qpbd999:/var/log# ifconfig
> eth0      Link encap:Ethernet  HWaddr 00:20:AF:11:CF:B5
>           inet addr:192.168.0.3  Bcast:192.168.0.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:8042 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:8162 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:32 txqueuelen:100
>           Interrupt:5 Base address:0x210
> 
> lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:3924  Metric:1
>           RX packets:58 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:58 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
> 
> ---
> The output from route is this...
> 
> qpbd999:/etc# route
> Kernel IP routing table
> Destination     Gateway         Genmask         Flags Metric Ref    Use
> Iface
> localnet        192.168.0.3     255.255.255.0   UG    0      0        0 eth0
> localnet        *               255.255.255.0   U     0      0        0 eth0
> loopback        *               255.0.0.0       U     0      0        0 lo
> default         192.168.0.1     0.0.0.0         UG    1      0        0 eth0
> 
> ---
> Primary DNS zone file (/etc/namedb/pri/db.quickpages.hosts)... (I know the
> comments in the SOA don't match the values).
> 
> quickpages.net.au.    IN      SOA  qpbd999.quickpages.net.au.
> pmorgan.quickpages.net.au.
>   (
>                                 2002010702      ; Serial no.
>                                 900        	; refresh after 3 hours
>                                 90              ; retry after one hour
>                                 86400           ; expire after one week
>                                 0               ; TTL of 1 day
>                                 )
> ;
> ; Name servers and mail exchangers
> ;
> quickpages.net.au.      IN      NS      qpbd999.quickpages.net.au.
>                         IN      NS      qpbd998.quickpages.net.au.
> 
> quickpages.net.au.      IN      MX      30 qpbd999.quickpages.net.au.
> ;
> qpbd999                 IN      A       61.95.1.222
> qpbd998                 IN      A       61.95.1.223
> qpbd000                 IN      A       61.95.1.221
> ;
> www                     IN      CNAME   qpbd999
> proxy                   IN      CNAME   qpbd999
> mail                    IN      CNAME   qpbd999
> news                    IN      CNAME   qpbd999
> 
> The reverse lookup file (/etc/namedb/pri/rev.quickpages.hosts)...
> 
> @               IN      SOA     qpbd999.quickpages.net.au.
> pmorgan.quickpages.net.au.
> (
>                                 1997121036      ; serial no.
>                                 900             ; refresh per day
>                                 90              ; retry hourly
>                                 86400           ; expire in 42 days
>                                 0               ; mininium ttl 1 week
>                                 )
> ;
>                 IN      NS      qpbd999.quickpages.net.au.
>                 IN      NS      qpbd998.quickpages.net.au.
> ;
> 3                       IN      PTR     qpbd999.quickpages.net.au.
> 4                       IN      PTR     qpbd998.quickpages.net.au.


This is wrong. It seems that you mixt up 192.168.0.0 with 61.95.1.X
It must be like that: 
222 IN PTR qpbd999.quickpages.net.au.
223 IN PTR qpbd998.quickpages.net.au.
221 IN PTR qpbd000.quickpages.net.au. 
This is the reverse zone for the 61.95.1.X zone. You should modify the
named.conf file also.


> 
> /etc/named.conf
> options {
>         directory "/etc/namedb";
> };
> logging {
>         category lame-servers { null; };
> };
> zone "quickpages.net.au" in {
>         type master;
>         file "pri/db.quickpages.hosts";

> zone "0.0.168.192.in-addr.arpa" in {
>         type master;
>         file "pri/rev.quickpages.hosts";
> };
This should be like that:

zone "start_ip_address-stop_ip-address.1.95.61-in-addr.arpa" in {
type master
file pri/rev.quickpages.hosts";
};
where start and stop ip addresses must be the first (network) and the
last-1 (broadcast-1) ones from your subclass (as I said before, ask
your ISP).

> zone "." in {
>         type hint;
>         file "local/root.cache";
> };
> zone "0.0.127.in-addr.arpa" in {
>         type master;
>         file "local/db.quickpages";
> };
> 
> The /etc/namedb/local/db.quickpages file...
> @               IN      SOA  qpbd999.quickpages.net.au.
> pmorgan.quickpages.net.au. (
>                                 1997032019      ; serial no.
>                                 360000  ; refresh it every 100 hours.
>                                 3600    ; retry it every hour
>                                 3600000 ; expire it every 42 days
>                                 360000  ; mininium ttl 100hrs
>                                 )
> ;
> ;       Nameserver(s)
> ;
>                 IN      NS      qpbd999.quickpages.net.au.
>                 IN      NS      qpbd998.quickpages.net.au.
> 3               IN      PTR     localhost
> 
> It appears to me that there are several inconsistencies. the 3 and 4 in the
> revers lookup implies 192.168.0.3 and 192.168.0.4 doesn't it? If I put
> 222/223 in they don't work either (would they imply 192.168.0.222 and
> 192.168.0.223).


You must add a separate zone (in fact 2 of them, one for the direct
another for the reverse of the 192.168.0.0 network - this is if you want
to resolve the 192.168.0.network.

> 
> /etc/rc.d/rc.inet1
> # Edit for your setup.
> IPADDR="192.168.0.3"            # REPLACE with your IP address
> NETMASK="255.255.255.0"
> NETWORK="192.168.0.0"           # REPLACE with YOUR network address!
> BROADCAST="192.168.0.255"       # REPLACE with YOUR broadcast address, if
> you
>                                 # have one. If not, leave blank and edit
> below.
> GATEWAY="192.168.0.1"           # REPLACE with YOUR gateway address!
> 
> # Uncomment the line below to configure your ethernet card.
> /sbin/ifconfig eth0 ${IPADDR} broadcast ${BROADCAST} netmask ${NETMASK}
> 
> # Uncomment this to set up your gateway route:
> if [ ! "$GATEWAY" = "" ]; then
>  /sbin/route add default gw ${GATEWAY} netmask 0.0.0.0 metric 1
> fi
> 
> ---
> Apache configuration (relevant portions)...
> Port 80
> # Listen: Allows you to bind Apache to specific IP addresses and/or
> # ports, in addition to the default. See also the <VirtualHost>
> # directive.
> Listen 61.95.1.222
> <Directory />
>     Options FollowSymLinks IncludesNoExec
>     AllowOverride None
>     allow from all		<<< I know this is insecure... for testing
>     order allow,deny
> </Directory>
> #
> # Allow server status reports, with the URL of
> http://servername/server-status
> # Change the ".your_domain.com" to match your domain to enable.
> #
> <Location /server-status>
>     SetHandler server-status
>     Order deny,allow
>     Deny from all
>     Allow from .quickpages.net.au
> </Location>
> 
> #
> # Allow remote server configuration reports, with the URL of
> #  http://servername/server-info (requires that mod_info.c be loaded).
> # Change the ".your_domain.com" to match your domain to enable.
> #
> <Location /server-info>
>     SetHandler server-info
>     Order deny,allow
>     Deny from all
>     Allow from .quickpages.net.au
> </Location>
> # If you want to use name-based virtual hosts you need to define at
> # least one IP address (and port number) for them.
> # NameVirtualHost 61.95.1.222
> NameVirtualHost 192.168.0.3
> #<VirtualHost 61.95.1.222>	<< as you can see, I've tried bnoth addresses.
> <VirtualHost 192.168.0.3>
>   ServerAdmin webmaster@quickpages.net.au
>   DocumentRoot /var/lib/apache/htdocs
>   ServerName www.quickpages.net.au
>   ServerAlias quickpages.net.au *.quickpages.net.au
> </VirtualHost>
> 
> ---
> NDC restart produces this in /var/log/messages...
> May 14 10:47:27 qpbd999 named[316]: Sent NOTIFY for
> "0.0.168.192.in-addr.arpa IN SOA" (0
> .0.168.192.in-addr.arpa); 1 NS, 1 A
> May 14 10:47:30 qpbd999 named[316]: Sent NOTIFY for "0.0.127.in-addr.arpa IN
> SOA" (0.0.1
> 27.in-addr.arpa); 1 NS, 1 A
> May 14 10:47:36 qpbd999 named[316]: Sent NOTIFY for "quickpages.net.au IN
> SOA" (quickpag
> es.net.au); 1 NS, 1 A
> 
> ---
> nslookup <enter> produces this output... (and subsequently hangs).
> qpbd999:/var/log# nslookup
> *** Can't find server name for address 61.95.1.222: Non-existent host/domain
> 
> nslookup www.quickpages.net.au produces this output, then hangs.
> d999:/var/log# nslookup www.quickpages.net.au
> *** Can't find server name for address 61.95.1.222: Non-existent host/domain
> 
> ---
> /etc/hosts (You can see I've tried both sets of addresses).
> 127.0.0.1       localhost
> 61.95.1.221     qpbd000.quickpages.net.au qpbd000
> 61.95.1.222     qpbd999.quickpages.net.au qpbd999
> 61.95.1.223     qpbd998.quickpages.net.au qpbd998
> #192.168.0.3    qpbd999.quickpages.net.au qpbd999
> #192.168.0.4    qpbd998.quickpages.net.au qpbd998
> 
> ---
> /etc/HOSTNAME
> qpbd999.quickpages.net.au
> 
> ---
> /etc/resolv.conf (again, I've tried the 192... addresses).
> qpbd999:/etc# l resolv.conf
> search quickpages.net.au
> nameserver 61.95.1.222
> nameserver 61.95.1.223
> 
> ---
> Sendmail reports this when starting up... (two different attempts after
> reboot and changing DNS).
> May 14 10:38:40 qpbd999 sendmail[73]: gethostbyaddr(192.168.0.3) failed: 1
> May 13 11:11:51 qpbd999 sendmail[72]: gethostbyaddr(192.168.0.3) failed: 2
> 
> ---
> Traceroute www.quickpages.net.au from the server produces this output...
> qpbd999:/etc# traceroute www.quickpages.net.au
> traceroute to qpbd999.quickpages.net.au (61.95.1.222), 30 hops max, 40 byte
> packets
>  1  192.168.0.1 (192.168.0.1)  14.753 ms  14.955 ms  15.081 ms
>  2  * * *
>  3  * * *
>  4  * * *
> etc...
> 
> ---
> Traceroute www.quickpages.net.au from offsite produces this...
> Tracing route to www.quickpages.net.au (61.95.1.222), over a maximum of 30
> hops,
>  1 <10ms 1ms 1ms co3047479-a (192.168.1.1)
>  2 9ms 8ms 8ms 10.38.0.1
>  3 9ms 9ms 9ms meb1-pos4-3.gw.optusnet.com.au (198.142.192.37)
>  4 9ms 9ms 9ms meb2-ge1.gw.optusnet.com.au (198.142.168.177)
>  5 11ms 10ms 10ms pos2-3.mg1.optus.net.au (202.139.0.37)
>  6 11ms 7ms 11ms powertel.mn1.optus.net.au (202.139.138.106)
>     :
> 10 29ms 27ms 28ms www.quickpages.net.au (61.95.1.222)
> 
> ---
> Traceroute 192.168.0.3 from server
> qpbd999:/etc# traceroute 192.168.0.3
> traceroute to 192.168.0.3 (192.168.0.3), 30 hops max, 40 byte packets
>  1  192.168.0.3 (192.168.0.3)  0.303 ms  0.161 ms  0.11 ms
> 
> ---
> Traceroute 61.95.1.222 from server
> qpbd999:/etc# traceroute 61.95.1.222
> traceroute to 61.95.1.222 (61.95.1.222), 30 hops max, 40 byte packets
>  1  192.168.0.1 (192.168.0.1)  17.1 ms  16.009 ms  16.062 ms
>  2  * * *
>  3  * * *
> 
> Server processes...
> qpbd999:/etc# ps -awx|more
>   PID TTY      STAT   TIME COMMAND
>     1 ?        S      0:03 init [3]
>     2 ?        SW     0:00 [kflushd]
>     3 ?        SW     0:00 [kpiod]
>     4 ?        SW     0:00 [kswapd]
>    10 ?        S      0:00 /sbin/update
>    47 ?        S      0:00 /sbin/rpc.portmap
>    51 ?        S      0:03 /usr/sbin/syslogd
>    54 ?        S      0:00 /usr/sbin/klogd
>    56 ?        S      0:00 /usr/sbin/inetd
>    60 ?        S      0:00 /usr/sbin/lpd
>    63 ?        S      0:00 /usr/sbin/rpc.mountd
>    65 ?        S      0:00 /usr/sbin/rpc.nfsd
>    67 ?        S      0:00 /usr/sbin/crond -l10
>    89 tty1     S      0:00 -bash
>    90 tty2     S      0:00 -bash
>    91 tty3     S      0:00 -bash
>    92 tty4     S      0:00 -bash
>    93 tty5     S      0:00 /sbin/agetty 38400 tty5 linux
>    94 tty6     S      0:00 /sbin/agetty 38400 tty6 linux
>   117 tty2     S      0:00 tail -f /var/log/syslog
>   123 tty3     S      0:00 tail -f /var/log/messages
>   151 ?        S      0:00 routed
>   184 ?        S      0:00 /var/lib/apache/sbin/httpd
>   185 ?        S      0:00 /var/lib/apache/sbin/httpd
>   186 ?        S      0:00 /var/lib/apache/sbin/httpd
>   187 ?        S      0:00 /var/lib/apache/sbin/httpd
>   188 ?        S      0:00 /var/lib/apache/sbin/httpd
>   189 ?        S      0:00 /var/lib/apache/sbin/httpd
>   236 ?        S      0:00 sendmail: accepting connections on port 25
>   316 ?        S      0:00 /usr/sbin/named
>   345 ?        S      0:01 telnetd: 192.168.0.12 [xterm]
>   346 ttyp0    S      0:00 -sh
>   352 ttyp0    S      0:00 bash
>   533 ?        S      0:00 sendmail: NAA00520 mailin-03.mx.aol.com.: client
> MAIL
>   545 ?        S      0:00 in.comsat
>   557 ttyp0    R      0:00 ps -awx
>   558 ttyp0    S      0:00 more
> 
> I've also had routed running... But I've turned that off for the time being.
> 
> Any help would be greatly appreviated.
> 
> Thanks
> Phill Morgan
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-admin" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
