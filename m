From: Peter <heisspf@skyinet.net>
Subject: Re: Moving Hard Drive
Date: Tue, 20 Jan 2004 10:14:11 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040120021411.0C9D91C905@heisspf>
References: <200401191537.13062.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 19 Jan 2004 15:37:13 +0100." 
 <200401191537.13062.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


pa3gcu@zeelandnet.nl said:
> So all that means we now need to have lilo installed on all bootable
> disks  MBR's. To do that simply edit lilo.conf and set; boot= to /dev/
> hd(whichever disk) in this case /dev/hdc 


It's that simple and I should have figured it out myself. However, I remember 
in my early Linux days somebody had told that the boot must be on hda.

Since I removed my old drive, going back to me old machine, would it then not 
be necessary to move hdc to hda, instead just leave it where it is? Thus the 
secondary master becomes primary master or not?

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
