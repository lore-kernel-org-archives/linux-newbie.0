From: Beolach <beolach@gmail.com>
Subject: Re: No Sound with Kernel 2.6.7
Date: Thu, 4 Nov 2004 03:48:36 -0700
Message-ID: <aebf5d9704110402486a5146c4@mail.gmail.com>
References: <20041104165934.28971dba@Knoppix>
Reply-To: Beolach <beolach@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041104165934.28971dba@Knoppix>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Hi Peter,

The 2.4 & 2.6 kernels use different, incompatible module formats, so
you can't just copy
the 2.4 modules over to 2.6.  Instead you will need to install a 2.6
kernel module for your
soundcard.  If your kernel was already configured to build your
soundcards drivers as
modules, all you should need to do is cd /usr/src/linux (or where ever
you 2.6.7 kernel
sources are); make modules && make modules_install.  Note that make
modules_install
needs root permissions.  Also also note that 2.6 normally uses ALSA
(Advanced Linux
Sound Architecture), while 2.4 used OSS (Open? Sound System).  This
means that you
soundcards driver module might have a different name, so you might
need to edit the
module name in /etc/modules.conf or where ever you define modules to
load on startup.
After this you should be able to load your soundcards driver modules &
hear stuff.

HTH,
Conway S. Smith


On Thu, 4 Nov 2004 16:59:34 -0500, Peter <heisspf@skyinet.net> wrote:
> Hi,
> 
> Slackware10
> 
> When I installed the kernel 2.6.7 my sound was lost, the error message claiming it can
> not find module via82cxxx_audio.c. Checking /lib/modules/2.6.7/kernel/drivers there was
> no /sound folder.
> 
> I then copied ../2.4.26/../sound into ../2.6.7../drivers/ it did not change it still claimed it
> could not find my sound module after rebooting.
> 
> I then switched back to 2.4.26 and sound was back.
> 
> Could that be resolved and how?
> 
> A side benefit of the whole exercise was that all of a sudden starting kde programs such
> as kppp takes now only half the time than before I tried to switch kernels. It used to take
> an annoying 22 seconds, now it takes only 11. ???????????
> 
> Thanks & Regards
> 
> --
> Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
