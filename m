From: "Mr. James W. Laferriere" <babydr@baby-dragons.com>
Subject: Re: Configuring lilo to boot from sda after RH 9.0 install
Date: Mon, 14 Apr 2003 20:26:05 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0304142025220.336@filesrv1.baby-dragons.com>
References: <000101c31a77$7597f830$1601a8c0@crypt>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000101c31a77$7597f830$1601a8c0@crypt>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Steven Ackerman <steven@nvts.us>
Cc: linux-newbie@vger.kernel.org

	Hello Steve ,  Please post the /etc/lilo.conf & the disk and
	pertition layout .  JimL

On Wed, 14 May 2003, Steven Ackerman wrote:

> Dear list,
>
> I read the faq for the list. Searched tldp.org
> (http://tldp.org/LDP/lame/LAME/linux-admin-made-easy/install-lilo.html) and
> read the linux faq (ftp://sunsite.unc.edu/pub/Linux/docs/faqs/!INDEX.html)
> before posting. I also read the faq for this list. At that point I got
> frustrated and am sending this message. I know this is easy but I can't
> figure it out. I am not a linux guru. Just an enthusiast and that makes me
> the best man for the job at hand.
>
> I installed RH 9.0 as a server and the machine only boots from floppy. In
> lilo.conf the boot= line in the first section says boot=/dev/sda. In the
> same section the install= line says install=/boot/boot.b. I don't even know
> what I should be posting to help anyone answer my question. This is a rack
> mount server with 4 SCSI drives. I don't know if that matters. If I remember
> right, the root directory is /dev/sda. Whatever the default is. I can give
> you whatever info you need. I may have to figure out how to do it, but
> usually I can do that.
>
> I need help. I don't mind pointers to links, documentation, pointers to some
> documentation I missed, ect. All the doc's I found refer to using ide
> devices and pointing to the root directory or wherever lilo is installed or
> the root directory is or something like that. Not knowing all the linux
> internals, I don't even know how to find that out.
>
> -Steve
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-- 
       +------------------------------------------------------------------+
       | James   W.   Laferriere | System    Techniques | Give me VMS     |
       | Network        Engineer |     P.O. Box 854     |  Give me Linux  |
       | babydr@baby-dragons.com | Coudersport PA 16915 |   only  on  AXP |
       +------------------------------------------------------------------+
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
