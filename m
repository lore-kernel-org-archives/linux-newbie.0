From: Peter <peter@skyinet.net>
Subject: Re: Bad Sound in Slackware
Date: Sun, 08 Feb 2004 11:10:03 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040208031003.DEFA83045E@heisspf>
References: <200402072025.34606.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sat, 07 Feb 2004 20:25:34 +0100." 
 <200402072025.34606.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


pa3gcu@zeelandnet.nl said:
> He possably after copying those modules to the destination dir, did not do;
> depmod -a If he did i am sure he would have gotten a lot of error messages
> about,  "Unresolved symbols".

Correct I did not make depmod -a. I did now and got a few error messages in 
.../net. After that modprobe worked.


pa3gcu@zeelandnet.nl said:
>  i would  not even recomend using modules from another kernel version, let
> alone  another distro.

Then I copied all the .../modules/drivers from the SW Install Disk into SW 
made again depmod -a and got no error messages.

I removed /sbin/insmod via82cxxx_audio, etc. in rc.local and enabled in 
rc.modules  /sbin/modprobe/via82cxxx_audio.

How I had lost the folder .../kernel/sound in SW beats me.

What did Lawson sometimes write: beware, rogue system administrator on the 
loose.

pa3gcu@zeelandnet.nl said:
>  if Peter wants he can have a copy of my presant .config  file from which he
> can then see just

Thanks, I seem to be OK for the moment.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
