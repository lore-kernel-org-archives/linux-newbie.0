From: Amin <raihan@citech-bd.com>
Subject: Re: /cdrom fails to unmount
Date: 22 Jul 2003 21:44:48 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m3lluq4lcf.fsf@localhost.localdomain>
References: <Pine.LNX.4.43.0307221116460.20338-100000@perpugilliam.csclub.uwaterloo.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.43.0307221116460.20338-100000@perpugilliam.csclub.uwaterloo.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: dzlotnik@uwaterloo.ca
Cc: linux-newbie@vger.kernel.org

Dan Zlotnikov <dzlotnik@perpugilliam.csclub.uwaterloo.ca> writes:

> umount /cdrom
> umount: /cdrom: device is busy
> Or in other words, "*$^! you!"
> 
> No processes that I could identify suggested themselves as the visible
> culprit. Rebooting works, but killing the x-session doesn't.
> 
> Help, anyone?
> 
> Dan

You could try a lazy unmount:

$ umount -l /cdrom

Cheers,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
