From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: howto configuring kernel and modules.conf for automatic loading of ide-scsi
Date: Sun, 25 Jan 2004 09:23:47 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401250923.47709.pa3gcu@zeelandnet.nl>
References: <20040125041110.22704715.agri@desnol.ru>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040125041110.22704715.agri@desnol.ru>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Agri <agri@desnol.ru>, linux-newbie@vger.kernel.org

On Sunday 25 January 2004 02:11, Agri wrote:
> i'm  confused with module loading.

Understandable.

> i have cdrw and configure ide-scsi emulation for it.
> doing "modprobe ide-scsi; mount /dev/scd0" is fine.
>
> but, how to configure automatic loading of ide-scsi?
> it seems that just "touching" for /dev/scd0 do not
> cause kmod to exec modprobe at all. What to do?

You make no mention of what distro you are using let alone which kernel 
version so that in itsself makes giving a direct answer very hard, i can 
point you to a direction which should automate loading of modules on all 
linux systems tho'.

Backup your /etc/modules.conf file before doing the following.

/sbin/modprobe -c >/etc/modules.conf

That will create entries which will help modpobe load modules upon demand.

> i think that loading several modules at boottime are not the best idea,
> in that case - why do i use modules at all?

Some modules need to be loaded at bootime some not.

The main reason why one has a modular kernel is because of kernel size and 
memory usage, just imagen how large a kernel would be with everything one 
needs compiled into the kernel
Another thing is drivers that have "options" like IRQ I/O adresses, just 
imagen having all that compiled into a kernel and you have an old network 
card which is set to IRQ5 and your kernel has been compiled to look for that 
card on IRQ3, as you see not so handy...

BTW, if you have a slackware system the answer from Mr. X-Penguin is 
incorrect, that should answer Rays comment on slackware as well.

>
> Agri

-- 
If the Linux community is a bunch of theives because they
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
