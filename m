From: Brandon Philips <brandon@ifup.org>
Subject: Re: How could I record the information when kernel panic.
Date: Fri, 26 Apr 2013 10:33:22 -0700
Message-ID: <CAK7GKxnGwYdT=-A1yeBUXQF4uJgzQiSytwbjT6wqtvZiBWrcJQ@mail.gmail.com>
References: <517813E0.8070701@gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <517813E0.8070701@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: disnoir <disnoir@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Wed, Apr 24, 2013 at 10:18 AM, disnoir <disnoir@gmail.com> wrote:
> So, How could I record the kernel error/info, when system was halt ?

Your best bet is to use one of the following:
0) Use sysrq to investigate a bit:
https://www.kernel.org/doc/Documentation/sysrq.txt
1) Hook a serial console up if your system has one to another system
with a null modem cable and console=ttyS0,<baud> passed in to the
kernel at boot
2) Try netconsole if you don't have a serial console:
https://www.kernel.org/doc/Documentation/networking/netconsole.txt

I would recommend trying a newer kernel and see if your bug is fixed.
If it is you could bisect down to the commit that fixes it and let the
debian kernel maintainers know.

Good luck,

Brandon
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
