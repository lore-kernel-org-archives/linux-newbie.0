From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: CD-RW-Drive
Date: Wed, 29 Dec 2004 08:26:13 +0100
Message-ID: <200412290826.13631.pa3gcu@zeelandnet.nl>
References: <20041229070643.E79E71737F@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041229070643.E79E71737F@heisspf>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Peter H." <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

On Wednesday 29 December 2004 08:06, Peter H. wrote:
> Season Greetings,
>
> Slackware 10, Kernel 2.4.26
>
> I got myself an Asus Atapi CD-RW-Drive and I am not sure if this was the
> right choice for Linux. I was able to make it work following the
> instruction of the program xcdroast, however, some things seem strange.
>
> I always get error messages telling not to use atapi instead scsi.

With 2.4.x kernels scsi is correct, add the following to /etc/lilo.conf
and rerun lilo.

append "/dev/hdc=ide-scsi"

( thats of my head, possably someone else may need to verify the syntax).
(( where /dev/hdc is your device)).

> I had a CD with picture files on. When I copied them to the HD I can't open
> them and copying back to the CD I can't open them as well any longer. In
> fact I can not mount the CD anymore. Only xcdroast can.
> $ mount /mnt/cdrom
> mount: Not a directory
>
> Trying too boot Knoppix 3.4 from the CD I get only a blank screen. Booting
> from CD and then switching to HD, Knoppix works alright.
>
> It seems that xcdroast can only write .wav and .iso files?????

No xcdraost does most all formats.

> Questions:
>
> Is there a better CD-RW-Drive for Linux than Asus? The shop is willing to
> exxchange.

Nothing wrong with mine works like a charm.

>
> Are there better programs than xcdroast to R+W and which?

There is k3b but i prefer xcdroast...

>
> Thanks & regards

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
