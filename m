From: Mr MailingList <Mr.MailingList@ntlworld.com>
Subject: Re: linux kernel: irq 11: nobody cared!
Date: Wed, 21 Jul 2004 07:27:20 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200407210727.20774.Mr.MailingList@ntlworld.com>
References: <200407201939.30300.Mr.MailingList@ntlworld.com> <Pine.LNX.4.58.0407202138320.27512@ppg_penguin.kenmoffat.uklinux.net>
Reply-To: Mr.MailingList@ntlworld.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407202138320.27512@ppg_penguin.kenmoffat.uklinux.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Tuesday 20 Jul 2004 21:52, Ken Moffat wrote:

>  Possible workarounds, in increasing order of pain, might include
> booting with whatever the option is to disable apic, using a non-smp
> kernel (if you only have one cpu, of course), trying a newer kernel from
> SuSe if there is one, or trying a newer kernel from kernel.org.  This
> looks the sort of thing where you might need to try the latest 2.6.8-rc
> or even -mm (if it isn't fixed in 2.6.7).  These aren't normally
> recommended, particularly for production boxes, but I guess it isn't in
> production if you telnet to it.
>

Thanks Ken for your answer but I've tried all of them apart of new kernel and 
unfortunately they did not work. Looks like the only option I have is to wait 
for Suse to release new kernel.

Tom

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
