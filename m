From: robin@robind.de
Subject: Re: New module: kernel recompile?
Date: Thu,  3 Apr 2003 11:47:04 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030403094704.B9A2744331@basicbox3.server-home.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Amin <raihan@citech-bd.com>
Cc: linux-newbie@vger.kernel.org

> Hi, I've installed a new RH8.0 system after
> losing the old one. 
> Problem is,
> the fresh installation doesn't support my
> (Myson) Ethernet card,
> and I have
> to load the ``fealnx'' module to get it to do
> so.  And that module
> isn't
> already compiled and insertable.  So: is it
> possible to compile the
> module
> and then insert it into the kernel, instead of
> recompiling the
> whole kernel,

IMHO, yes.

make mrproper
make menuconfig <-- Insert your missing module
!! Don't forget to load the configuration from file because 'make
mrproper' will delete your '.config'.
make dep &&
make modules &&
make modules_install

Please tell me when I'm wrong!!! 'make bzImage' will build the
kernel-binary, you don't need it, so you can leave it.

> as I had to do the last time?  (Not that I
> don't like recompiling
> the
> kernel; it just gets a little boring during
> the 5  hours it takes.)

Wow!!! The last time I built a kernel I need approx. 45 minutes! Ok,
but the time depends on your system.

Goold look,
Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
