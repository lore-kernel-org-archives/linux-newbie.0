From: Alexei Babich <a.babich@rez.ru>
Subject: crosscompiling for ARM
Date: Mon, 12 May 2008 10:38:20 +0600
Message-ID: <200805121038.20523.a.babich@rez.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,
I'm try to crosscompile linux-kernel to arm platform (AT91RM9200 EK board). Host machine is i686-linux.
So, how to make bzImage ? I try this in linux source dir: $make ARCH=arm menuconfig; $make ARCH=arm, but at this step I see, that compile script invokes native compiler (gcc, not arm-unknown-linux-gnu-gcc), linker, and objcopy.
How to switch to crosscompiler (and other for building bzImage) ?

Thank you.
-- 
Regards,
Alexei Babich, chematic engineer, OOO NPP "Rezonans", Chelyabinsk, Russia
http://www.rez.ru
Jabber ID: impatt@jabber.ru
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
