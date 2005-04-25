From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to d/w form the CVS?
Date: Mon, 25 Apr 2005 08:21:50 -0700
Message-ID: <426D0B0E.7050209@comarre.com>
References: <4EE0CBA31942E547B99B3D4BFAB34811454A1F@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB34811454A1F@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Mukund JB. wrote:
> Hi All,
> 
> I got the tslib package on the link below in a CVS repository of
> arm.linux.org.uk. I am trying to do get that. I have a doubt here. 
> 
> Do I need to have a public IP to connect to the CVS? 

It depends on what you mean. Your workstation needs to have some sort of 
access to a public IP address to make any connections to the Internet. 
If it has a private address, it needs to be behind a NAT'ing router or 
use a proxy server. If it does the second of these, you are likely to 
have a problem, since proxy servers do not usually support connections 
to arbitrary servers, just a few well-known ones like http and ftp.

> I have executed it as follows:
> export CVSROOT=:pserver:cvs@pubcvs.arm.linux.org.uk:/mnt/src/cvsroot
> 
> where "/mnt/src/cvsroot" exists. What does the pserver mean?

This line identifies a remote server that the cvs command will try  to 
connect to. The entry is in the same form used with scp: 
username@FQDN:remote directory.

I don't know what you mean by "where "/mnt/src/cvsroot" exists". Just to 
be clear: this path needs to exist not on your host but on the remote 
host you are trying to access.
> 
> Then if I say 
> 
> #cvs login
> Logging in to :pserver:cvs@pubcvs.arm.linux.org.uk:2401/mnt/srv/cvsroot/
> CVS passwd:
> Cvs [login aborted]: connect to pubcvs.arm.linux.org.uk(212.18.232.187):
> 12402 failed: Network is unreachable.
> 
> What could be the problem?

I'm not familiar with this cvs server site specifically, so I do not 
know what it expects in response to the passwd: prompt, or what you 
tried there ... but that is unlikely to be the problem here. The 
"Network is unreachable" almost always means a problem with either the 
routing table or the firewall ruleset (either on your workstation or on 
the router that conencts it to the Internet).

Can you ping pubcvs.arm.linux.org.uk (I can, so the address is 
reachable)? If not, what error does ping report?

If it is a routing problem, we'll need some details about your network 
to advise you. For the host you are on (I'm assuming here that it is s 
Linux host, since this is a Linux list), report the output of

	uname -a
	netstat -nr
	iptables -nvL

If your system uses a private IP address, provide the details of how it 
connects to the Internet. Be as specific as you can.

I'm not replying to the last part of your message, below, since it is 
clearly part of an ongoing dialog with the individual you sent this 
message to (aside from the list) so too difficult to join in midstream.

> Also, if I say chroot /mnt/src/cvsroot, according to what u told me and
> the documentation, if I run a install script, it will launch in into
> this directory. If so, please explain me how it works.
> 
> I am getting the following output when I run chroot.
> 
> #chroot /mnt/src
> chroot: /bin/bash: No such file or directory
> 
> What does this mean?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
