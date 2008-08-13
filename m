From: Jim Carter <jimc@math.ucla.edu>
Subject: Re: Network install fails at TFTP load on client pc
Date: Wed, 13 Aug 2008 08:41:38 -0700 (PDT)
Message-ID: <Pine.LNX.4.64.0808130826530.1769@simba.math.ucla.edu>
References: <680933.3477.qm@web59711.mail.ac4.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <680933.3477.qm@web59711.mail.ac4.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Phil C <hpypenguin@yahoo.com>
Cc: Newbie Mailing List <linux-newbie@vger.kernel.org>

On Tue, 12 Aug 2008, Phil C wrote:

> > That's a good point: the provided firewall may have "features" for paranoia 
> > relating to forwarded packets.  I know the one I wrote has special rules 
> > for forwarding, and the Windows firewall is very strict about outgoing 
> > packets too. 
> 
> Maybe a restriction based on mac address?

Yes, that feature is common -- a lot of SOHO router/switches give you that 
option, and I wrote it into the firewall I use.  Note: in a targeted 
attack, the hacker can make his NIC use an arbitrary MAC address, once he 
sniffs enough packets to identify which ones are authorized.  Assuming WLAN 
encryption is ineffective, which is true for WEP, and WPA for badly written 
access point firmware.

> GUIs be damned. I do all server and network work from the terminal. What 
> about ipchains? It's compatible with iptables but I've never used it. Any 
> experience there?

Good policy.  Ipchains is the original version of iptables, for kernel 
2.2.x.  They're very similar, but iptables has improvements in efficiency 
and kernel integration, and a lot more special modules like the FTP and 
H.323 helpers.

> > OK, the Toshiba BIOS won't boot from foreign devices.  How about this: boot 
> > from the net, but once the pre-installer gets control, tell it that the 
> > installation media is not on the network but rather on the local DVD or 
> > flash device...
> 
> Excellent idea! I will give that a try before attempting the install 
> completely over the net. Thanks for all the help and for being so 
> tolerant in answering my questions and concerns.

You're welcome -- no problem!

James F. Carter          Voice 310 825 2897    FAX 310 206 6673
UCLA-Mathnet;  6115 MSA; 520 Portola Plaza; Los Angeles, CA, USA  90095-1555
Email: jimc@math.ucla.edu    http://www.math.ucla.edu/~jimc (q.v. for PGP key)
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
