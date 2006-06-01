From: Peter <heisspf@skyinet.net>
Subject: Re: Symlink to Modem Vanishes
Date: Thu, 01 Jun 2006 15:25:19 +0800
Message-ID: <200606010725.k517PJXc003762@skyinet.net>
References: <447DDDAD.3080804@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Wed, 31 May 2006 14:17:17 -0400."
             <447DDDAD.3080804@gelm.net> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>, linux-newbie@vger.kernel.org

Thanks!

chuck@gelm.net said:
> Edit /etc/rc.d/rc.6 and put
>  ls -l /dev/modem [> /home/modem.txt]
>  ls -l /dev/ttyS0     [> /home/ttyS0.txt] immediately in front of
>  'reboot' and 'halt' to see if it is still there immediately before.

It does not work. When rebooting or halting it says 'read file system only' 
when it reaches those lines.

Anyhow symlink /dev/modem is removed when booting or halting.

chuck@gelm.net said:
> put "ln -s /dev/modem /dev/ttyS0" at the bottom of your /etc/rc.d/rc.local.
> (did ^      ^ I get that right?)

no, it's the other way around ln -s /dev/ttyS0 /dev/modem. Me too, I get it 
always wrong the first time around.

I had put it there alrady.

Now 

david@fierbaugh.org said: w/o copying the list

> This sounds like it may be a udev problem. Udev dynamically generates device
> nodes (/dev/###), and may be missing something. When you manually create a
> node, the next time you boot, it overwrites what you created. You have to
> setup udev to create the correct link.

> If this computer is more than a year old, it's likely that you updated from
> devfs to udev, perhaps without even knowing it (if your system does automatic
>  updates.) Most of the problems I've seen with udev are on systems that have
> been updated from devfs to udev.

> I'm not a Slack user , but there's good reading on udev at the link below,
> just ignore the Gentoo specific stuff, and perhaps look for something similar
>  for Slack. http://www.gentoo.org/doc/en/udev-guide.xml

> And on writing udev rules here: http://www.reactivated.net/writing_udev_rules.
> html

Guess he is right and the stuff he recommends is a little heavy for me. When 
booting I see that udev is started.

Regards 




-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
