From: "S. Barret Dolph" <wheds8@ms66.hinet.net>
Subject: Re: Reinstallation
Date: Wed, 31 Mar 2004 02:53:54 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403310253.54429.wheds8@ms66.hinet.net>
References: <200403301320.10936.wheds8@ms66.hinet.net> <200403310229.48743.wheds8@ms66.hinet.net> <200403302050.58925.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403302050.58925.pa3gcu@zeelandnet.nl>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl, linux-newbie@vger.kernel.org

I have no problems booting the Mandrake disk. It goes fine up with changing 
partitions, mounting partitions, but after I have selected the software it 
takes a very long time to say problems installing every single package. 


On Wednesday March 31 2004 02:50, you wrote:
> On Tuesday 30 March 2004 20:29, S. Barret Dolph wrote:
> > I would have guessed that reformatting the disk would wipe everything out
> > but it seems not to be the case.
>
> That is your MBR not your disk partitions working, your disk MBR is the
> first 512 bytes and is NOt a partition as such.
>
> If you boot from a CDrom or floppy then you will have no problems with your
> disks MBR (Master Boot Record) as it will be ignored.
>
> Mandrake cdroms are bootable, you will possably need to set your BIOS to
> boot from CDrom, is that your problem, you seem to be getting things all
> mixed up.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
