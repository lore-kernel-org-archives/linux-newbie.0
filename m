From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to I print to a TCP/IP Port.
Date: Wed, 12 Jan 2005 18:37:16 -0800
Message-ID: <5.1.0.14.1.20050112183000.02a9fe40@celine>
References: <20050112202320.M55098@celticblues.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050112202320.M55098@celticblues.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-339B7E00"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:23 PM 1/12/2005 -0500, linux wrote:

>I recently migrated from WinXP to Linux (SuSE 9.2 Pro). I need some help
>setting up my new linux box to print.  My old WinXP box printed to a network
>printer.  If I open my printer properties dialog in WinXP I would see the
>printer listed with an IP address.   How do I set up my SuSE linux to print to
>this same printer.  I guess what I am asking is, how to I print to a TCP/IP
>Port.  Thanks,


The answer depends a bit on what the printer expects in the way of input. 
Usually (in my experience), networked printers include embedded "lp" 
servers (listening on port 515/tcp). If you have one like that, you can 
access it by running an lp daemon on your Linux system, and configuring it 
to access a remote printer.

I don't know SuSE specifically, so I don't know which of several lpd 
implementations it runs. The package I use here is lprng. Using it, you 
configure access to the remote printer via an entry in /etc/printcap, for 
example one like this:

         caxton|caxton|raw:\
                 :lp=:\
                 :rm=caxton:\
                 :rp=raw:\
                 :sd=/var/spool/lpd/caxton-raw:\
                 :sh:sf

The "rm=" line supplies the printer's address (in the example, "caxton" is 
a hostname that the Linux host can resolve).




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.300 / Virus Database: 265.6.10 - Release Date: 1/10/2005


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
