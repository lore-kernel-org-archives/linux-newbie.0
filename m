From: Peter <heisspf@skyinet.net>
Subject: Re: Moving Hard Drive
Date: Mon, 19 Jan 2004 15:14:10 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040119071411.35BEF1C902@heisspf>
References: <200401171053.50808.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sat, 17 Jan 2004 10:53:50 +0100." 
 <200401171053.50808.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

> Peter wrote:
> > Is it correct then that before doing the switch I will have to change in 
> > /etc/fstab and lilo.conf all what is labeled hdc to hda?
> > Boot initially
> > from a floppy into SLackWare run lilo and I should be set with the new drive
> > as master.

gracecott@sancharnet.in said:

> Since you are on lilo, it would be easier to type on the lilo prompt

Since hdc was moved to hda there is initially no more MBR before I run lilo. 

Therefore what Peter wrote above correctly replaced the old 5 Gb 
HD with the new 20 Gb HD as Master.


-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
