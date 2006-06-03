From: Peter <heisspf@skyinet.net>
Subject: Re: Symlink to Modem Vanishes
Date: Sat, 3 Jun 2006 08:40:09 +0800
Message-ID: <20060603084009.2e2c136a@skyinet.net>
References: <200606020608.k5268MoK004233@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200606020608.k5268MoK004233@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Fri, 02 Jun 2006 14:08:22 +0800
Peter <heisspf@skyinet.net> wrote:

> slackware 10.2 kernel 2.6.16
> 
> heisspf@skyinet.net indirectly said:
> > What I  needed was a file named 10-local.rules placed in the /sda3/etc/udev/
> > rules.d  subdirectory. All the file needed was the line following:
> 
> > KERNEL="ttyS0", SYMLINK="modem"
> 
> > Now the modem node in the /dev directory doesn't vanish anymore.
> 
> > Will try it on next reboot
> 
> It does not work, NAME="/dev/ttyS0" has to be added. However doing this then 
> there are no /dev/ttyS*. Symlink /dev/modem points to a non existing file.
> 
> Now I found that /dev/ttyS0 is a symlink to /dev/tts/0. So I changed 
> NAME="/dev/tts/0" with the effect that then there is no /dev/tts/0 but only 1, 
> 2 and 3.
> 

I finally solved it, the file /etc/udev/rules.d/10-local.rules reads now:

KERNEL="ttyS0",NAME="tts/0",SYMLINK="modem"

and after reboot this morning:

ls -l /dev/modem
lrwxrwxrwx  1 root root 5 2006-06-03 15:26 /dev/modem -> tts/0

and efax, vbox for which I need the modem mostly work.

Regards

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
