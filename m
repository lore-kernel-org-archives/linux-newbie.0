From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: grub doesn't load
Date: Sun, 20 Jun 2004 10:08:08 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200406201008.08268.pa3gcu@zeelandnet.nl>
References: <851bbd852696.852696851bbd@homemail.nyu.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <851bbd852696.852696851bbd@homemail.nyu.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Anshuman Singh Rawat <asr245@nyu.edu>
Cc: linux-newbie@vger.kernel.org

On Saturday 19 June 2004 23:43, Anshuman Singh Rawat wrote:
> Thanks for the replies.
>
> I rescued it using the disk. On undoing what I had done (which screwed up
> grub), Grub still didn't recover (I am sure that I undid correctly, as I
> had only changed one parameter in grub.conf - 'default'). So I reinstalled
> grub from the disk. But the problem still remains of changing the boot
> order.

Just what commands did you give grub after the changes.?
There is a command something like grub -install (don't have a grub machine 
handy here at the moment to check) to make grub reread its config file.

'man grub' should help.

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
