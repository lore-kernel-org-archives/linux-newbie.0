From: Phil C <hpypenguin@yahoo.com>
Subject: Re: Network install fails at TFTP load on client pc
Date: Tue, 12 Aug 2008 02:08:11 -0700 (PDT)
Message-ID: <260800.64041.qm@web59716.mail.ac4.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jim Carter <jimc@math.ucla.edu>
Cc: Newbie Mailing List <linux-newbie@vger.kernel.org>

> 

> Is this a pre-installer kernel and initrd for Ubuntu to be used for PXE 
> booting?  Often the two components are in separate files; the initrd may be 
> called "root.image" or something like that.

I verified from the official ubuntu website that pxelinux.0 is the file that a boot client needs to be looking for
 
> >  ###end of dmesg###
> >  ### All ip addresses and mac addresses obscured for security ###
> >  
> >  x:xx:xx SRC=192.168.10.xx DST=192.168.10.xx LEN=78 TOS=0x00 PREC=0x00 TTL=20 
> >  ID=2 PROTO=UDP SPT=2070 DPT=69 LEN=58 
> >  [101285.992494] Unknown InputIN=eth0 OUT= 
> >  MAC=00:0b:cd:05:a9:c0:00:08:0d:b5:dc:xx:xx:xx SRC=192.168.10.xx 
> >  DST=192.168.10.xx LEN=78 TOS=0x00 PREC=0x00 TTL=20 ID=3 PROTO=UDP SPT=2071 
> >  DPT=69 LEN=58 
>
> Well, the server's kernel is still logging TFTP packets, so there must be 
> another place in the iptables that needs to be perforated (temporarily).  
> Likely the firewall specifically blocks a laundry list of ports (or more 
> likely, allows only listed ports) no matter where they come from, plus 
> there is probably a chain to whitelist a specific IP address range and 
> block all others.  Both chains must be passed for the packet to be 
> accepted.  That's how a lot of firewalls work, but I've never seen what 
> Ubuntu gives you.

I tried messing with some of the firewall setting and have run into a new problem. My internet connection exists only on a WLAN right now (thanks to moronic time-warner employees) and my local network is only on LAN. I was able to get only one to communicate properly at a time. Either the laptop connects and communicates only to find that it can not route to the internet to get the rest of the files, or there is no functioning local connection. I read around and have not yet found a way around this. I need to get iptables to recognize seperate function sets for each interface and allow both to run at the same time. To the best of my knowledge iptables is configured the same way regardless of distro as it's a kernel module. Any thoughts on how to do this?

> Can you borrow a USB external DVD drive?  That's what we do when the 
> optical drive on a machine is unuseable: take the external drive off our 
> burner host and use it on the uncooperative machine.
 
There are severe compatiblity issues with this model of Toshiba Portege. Even the company admits that only a handful of external DVD/CD drives will boot properly under there broken bios. I have already tried using both the external DVD drive that I have handy and a USB key that formatted and configured to be bootable. Neither was recognized by the laptop's bios. I have no desire to get another external drive in an attempt to fix this problem. 

What are the odds of a success if I simply pull the drive, hook it up to a host machine via a 44 pin IDE adapter, install from there and pop it back in? I forsee some severe hardware config issues but I'm curiouse if that could work.

Either way I have an express intreset in achieving this network boot as I know I'll use it again somewhere down the line.

 - Phil C



      

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
