From: disnoir <disnoir@gmail.com>
Subject: Re: How could I record the information when kernel panic.
Date: Sat, 27 Apr 2013 12:02:49 +0800
Message-ID: <517B4DE9.4040408@gmail.com>
References: <517813E0.8070701@gmail.com> <CAK7GKxnGwYdT=-A1yeBUXQF4uJgzQiSytwbjT6wqtvZiBWrcJQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:message-id:date:from:user-agent:mime-version:to:cc
         :subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=tfllEoJj5pMeSfwLu2PI07qE85GdkVoO6rNdBb/h3Bs=;
        b=qkXBcppydv3zmUSlC4rr1/1o1EGJ6kqkXVSZM/STIkELBHcEzWH6A1lGXG+1+ZWTs3
         XlwzChGLvcK0tcwYq0Lczk4vl1nPK9JHNJzu2PBjsbxR+HoRr6j7LLJACNjN5fqeTsmg
         8nB5vT0/z5GKBDw1K1Ix0jUSxGfY9s7ntgyZUh1HB++BCUPUdYku29iHo0Rfb6Vq8CkV
         ONuLgeushjzbSUJ4pm2Ojr2HLC6SvYB+5RuwEY3dQU4KrBmkgp8LWC9uhoHKQ+VGKKlj
         Z0yYESpjIulH5VCFjDOUfCvoVuqj01H/JleXgHbjlTTP1p79rJ695bJMgbdmhRHe0XFX
         GNeQ==
In-Reply-To: <CAK7GKxnGwYdT=-A1yeBUXQF4uJgzQiSytwbjT6wqtvZiBWrcJQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Brandon Philips <brandon@ifup.org>
Cc: linux-newbie@vger.kernel.org

On 04/27/2013 01:33 AM, Brandon Philips wrote:
> On Wed, Apr 24, 2013 at 10:18 AM, disnoir<disnoir@gmail.com>  wrote:
>> So, How could I record the kernel error/info, when system was halt ?
> Your best bet is to use one of the following:
> 0) Use sysrq to investigate a bit:
> https://www.kernel.org/doc/Documentation/sysrq.txt
> 1) Hook a serial console up if your system has one to another system
> with a null modem cable and console=ttyS0,<baud>  passed in to the
> kernel at boot
> 2) Try netconsole if you don't have a serial console:
> https://www.kernel.org/doc/Documentation/networking/netconsole.txt
>
> I would recommend trying a newer kernel and see if your bug is fixed.
> If it is you could bisect down to the commit that fixes it and let the
> debian kernel maintainers know.
>
> Good luck,
>
> Brandon
Thank you for your reply.
I use ttyUSB0 to record the dmesg, cause this is a notebook 
(asus-k42je), which has no serial port, so I use a 
serial-port-to-USB-convertor.
I found that if I add console=ttyUSB0,115200n8 to kernel parameter, the 
kernel will fail to boot, and also without any information.
so I get into system on normal configuration (without console=...), and 
modify rsyslog.conf to log kernel info to /dev/ttyUSB0.
That works, use another pc to watch that serial port, all the 
information in dmesg will show in that serial port either.
But, when I test that if will also work during the kernel-panic ( I try 
"echo c > /proc/sysrq-trigger" ), nothing record into serial.
I guess kernel crash will cause rsyslogd no working.
So I use kdump-tools, kexec-tools to record a kernel dump, and this 
could work even on kernel-panic.
Now, I just need to wait the problem happen again.

:-)

disnoir
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
