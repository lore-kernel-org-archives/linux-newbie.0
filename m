From: "Phillip Morgan" <pmorgan@qpbd999.quickpages.net.au>
Subject: Re: Port 20 blocked. How to unblock
Date: Mon, 15 Jul 2002 13:57:25 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207150357.g6F3vPt21413@qpbd999.quickpages.net.au>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello Ray,

Thanks for your reply.

See below for my answers.

> You may have a firewall problem. ftp is one of the "problem" services 
that requires special handling by firewalls, or even use of passive 
mode only by the client. 

> Can you connect to the ftp server from onsite?
Yes. Provided I use the private address 192.168.0.3. Using the public 
address of 61.95.1.222 fails (of course)

> For more help. you will need to provide the details of how your 
> site is reachable from offsite. 
The ip address is 61.95.1.222. Port 21. DNS: ftp.quickpages.net.au

I don't really allow anonymouse ftp logins as a rule, but it is set up 
with a couple of test files. I only need ftp access for myself and 
support staff, so we have our own logins.

> Are we ttalking about a NAT'd LAN with port forwarding 
> to the ftp server, or a real IP address behind a firewall, or 
> what? If you are using a firewalling router, is it Linux based or 
something else (include the details in either case).
Yes, it is NAT'd, as per the following

Router - 61.95.1.220 / 192.168.0.1
NT server - IIS - 61.95.1.221 / 192.168.0.2
Linux ftp/mail/web server - 61.95.1.222 / 192.168.0.3
Linux secondary DNS - 61.95.1.223 / 192.168.0.4

The ISP tells me there is no port forwarding. Packets are passed 
straight through to the target IP (after being NAT'd). So a packet 
going to 61.1.95.222:21 is sent to 192.168.0.3:21 and so on.

The router is a DSL cable modem/almost-a-router.

The symptoms: 

Internally I can upload and download files using PORT and PASV using 
any Win32 ftp client I choose.

Offsite, I can connect, authenticate and that's it - with Win32 
clients. I've tried both PASV and PORT modes and neither work. I can't 
upload, download, change directories etc.

If I use an old DOS based (antique :-) ftp client it works. But this is 
a real pain in the ... ( I upload and download LOTS of stuff).

Any action results in a message (using my favorite program -
cuteftp), "Requested action not taken. Folder does not exist or no 
permission". I changed the folder permissions to 777 for all files and 
subfolders and tried again. As I would expect, it made no difference.

I've spoken with the ISP many times, and they are about as useful as a 
hot fire on a 100 degree day. To be honest, they have little interest 
in sovling any problems.

hth

Cheers,
Phill


> I can tell you that the one disagnostic you reported was irrelevant. 
> Working ftp servers do not listen on port 20, only on port 21. They 
use 
> port 20 only for data transfer, like the name implies, not for 
initiating 
> sessions. My fully functional (on-LAN) ftp server behaves exactly as 
you 
> describe yours doing for telnets to ports 21 and 20.
> 
> At 04:40 PM 7/12/02 +1000, Phillip Morgan wrote:
> >Hi All,
> >
> >When trying to ftp from offsite I can connect to my proftpd-1.2.5
> >server but cannot upload or download. I'm told file does not exist or
> >no permission, but the files and directories do exist, and I've even
> >tried chainging owners and permissions to 777, with no luck.
> >
> >I tried to telnet to port 21 and found that works, but telnet'ing to
> >port 20 (ftp-data), fails (connection refused).
> >
> >I looked in /etc/services and port 20 is defined (both tcp and udp).
> >
> >I'm running proftpd-1.2.5 via inetd and tcp wrapper. I'm using the
> >wrapper so I can implement the hosts.allow and hosts.deny functions. 
I
> >have nothing in either of these files that blocks ftp or ports 20/21.
> >
> >So why would a connect to port 20 be refused?
> 
> 
> 
> --
> -----------------------------------------------"Never tell me the 
> odds!"--------------
> Ray Olszewski					     -- Han Solo
> Palo Alto, California, USA				ray@comarre.com
> ----------------------------------------------------------------------
---------------------
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-
newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 

-- 
Quickpages Technical Support
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
