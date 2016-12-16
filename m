From: Hubert Chaumette <hubert.chaumette@wanadoo.fr>
Subject: re: i.mx35 kernel freeze on booting
Date: Fri, 16 Dec 2016 09:22:34 +0100 (CET)
Message-ID: <2082465329.2118.1481876554448.JavaMail.www@wwinf1p17>
References: <ea833817-14cf-4db2-bd68-15bae3aa79a3@amk-drives.bg>
Reply-To: Hubert Chaumette <hubert.chaumette@wanadoo.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <ea833817-14cf-4db2-bd68-15bae3aa79a3@amk-drives.bg>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ivan Stoyanov <ivan.stoyanov@amk-drives.bg>, linux-newbie@vger.kernel.org

> Message du 15/12/16 16:43
> De : "Ivan Stoyanov" 
> Hello group,
> 
> I am working on i.mx35 based board and I have found a problem with mx3fb 
> driver. On boot kernel freeze during mx3fb driver initialization and 
> reboot after few seconds. I tried to debug with prints and found that 
> kernel freeze as soon as writing SDC_COM_BG_EN in SDC_COM_CONF register.
> 
> Could you please give me advice how get more debug information?

Hi,

A few thoughts:
- compile the driver as module to make it to userspace before testing, you could then use ftrace and dynamic printk rather than recompilation (or only rebuild the module);
- check your platform data (device tree?) for wrong addresses;
- faulty hardware?
- activate locking debug in your kernel
- check for interrupt storm on enabling the channel (last comment in http://lxr.free-electrons.com/source/drivers/video/fbdev/mx3fb.c#L389)

Regards,

Hubert
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
