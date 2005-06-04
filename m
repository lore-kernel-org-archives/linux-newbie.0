From: Tony Asleson <stackframe@charter.net>
Subject: Re: connecting to remote network from vmware machine
Date: Sat, 04 Jun 2005 13:04:22 -0500
Message-ID: <42A1ED26.5090607@charter.net>
References: <BAY107-F367BEAB42917B3B523263C0F90@phx.gbl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BAY107-F367BEAB42917B3B523263C0F90@phx.gbl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: nayyer zubair <nayyerzubair@hotmail.com>
Cc: linux-newbie@vger.kernel.org

nayyer zubair wrote:

> Hi all
>
> I am in a bit of a fix. I have a VPN connection to my office's network 
> and I would like to connect to an office machine from my vmware linux 
> virtual machine.
>
> At home I connect through the net through my cable and I have a 
> wireless router which gives me a IP address. Right now the router 
> gives the VM machine an internal IP address like 192.168.0.3. And it 
> gives my host Windows machine a similar IP like 192.168.0.2.
>
> Now from the host windows machine and with my VPN connection I can 
> easily connect to my remote office machine just by telneting into it. 
> But I cant do it from my vmware machine. Telnet just hangs.
>
> I guess the reason could be that the Linux VM doesnt see that the host 
> windows machine has a VPN connection set up, right?  Is there a way 
> the VM can detect the VPN connection?
>
> any ideas?

I believe you have 2 options:

1.  Your current VMware configuration is bridged to the physical 
adapter, so for all practical purposes your VMware session appears as 
just another computer on your network, that is why they both get a DHCP 
address from your router.  For you to use this configuration you would 
need to install the VPN software on your linux partition just like you 
would for any other computer you may have at home.

2.  Change your VMware configuration so that you are sharing the hosts 
IP address using NAT (Mine is virtual network VMnet8).  This _should_ 
allow you to connect to your work office through the same VPN session.  
Your VMware traffic will be just like any other application on the 
host.  VMware creates a private network on your host system, gives out a 
addresses via DHCP on the private network (or can be static) just like 
your wireless router, but it is done in software.  Please note that 
office systems will not be able to connect to your linux partition just 
as people on the internet cannot connect to your system behind your 
wireless router unless you enable port forwarding on the router.  I 
don't think VMware supports port forwarding with their NAT.

Option 2 may not work in all cases and option 1 may not be available if 
your vendor does not support Linux.  I was going to use option 2, but I 
haven't tested it yet.

Hope this helps.

-Tony
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
