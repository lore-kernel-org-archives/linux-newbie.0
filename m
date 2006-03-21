From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Printing with Kernel 2.6.14.4
Date: Tue, 21 Mar 2006 08:44:59 -0500
Message-ID: <20060321134459.GA1012@lnx2.kvinet.com>
References: <200603210240.k2L2exYo003730@skyinet.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200603210240.k2L2exYo003730@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On 03-21, Peter wrote:
> Hi,
> 
> Slackware 10.2    kernel 2.6.14.4
> 
> Putting /sbin/modprobe parport_pc and ... lp in rc.local I can print, however, 
> only when I am connected to the Internet since the print configuration tool 
> has no provisions for parallel port when local printer is selected. Only 
> Network Printer will show the setting for parallel port and Epson printers.
> 
> In my Fedora4 box with kernel 2.6.14-1... selecting local printer will show 
> parallel port and Epson printers and I can print w/o being connected.
> 
> How could I correct to be able to print in slackware w/o being connected.
> 
> Should I just copy the files of /lib/modules/kernel/drivers from Fedora over 
> the slackware?
> 
> Thanks & regards
> -- 
> Peter

	Doesn't 'cat filename.txt > /dev/lp0' /or/ /dev/lp1 work??
Depending on whether you're using 0x378 or 0x278??

	I don't have a printer connected to the one Slack 10.2, 2.6.X
machine, so could be all wet... My one 10.2 machine using 2.4.31...

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
