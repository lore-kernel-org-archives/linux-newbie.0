From: Amin <amin@siriusbb.com>
Subject: Re: grub doesn't load
Date: Sun, 20 Jun 2004 17:59:47 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40D57C33.1000908@siriusbb.com>
References: <851bbd852696.852696851bbd@homemail.nyu.edu> <200406201008.08268.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200406201008.08268.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

pa3gcu wrote:
> Just what commands did you give grub after the changes.?
> There is a command something like grub -install (don't have a grub machine 
> handy here at the moment to check) to make grub reread its config file.
> 
> 'man grub' should help.
> 

It's something like:

$ grub-install /dev/hda

if you want to reinstall grub into the MBR.  To install it 
into the boot partition,

$ grub-install /dev/hda1

(If /dev/hda1 is the boot partition).

Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
