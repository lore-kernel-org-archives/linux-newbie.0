From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Can't boot :(
Date: Thu, 24 Jul 2003 14:27:30 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307241427.30321.pa3gcu@zeelandnet.nl>
References: <NGBBLGNMLJPKEPIFPKLHKEABGAAA.tfletcher@netfactoriel.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <NGBBLGNMLJPKEPIFPKLHKEABGAAA.tfletcher@netfactoriel.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: tfletcher@netfactoriel.com, linux-newbie@vger.kernel.org

On Thursday 24 July 2003 11:37, Tim Fletcher wrote:
> Hi,
>
> i have just installed a new Debian GNU/Linux distrib on my i386 PC. i had
> to move the machine by car to it's new location, and when i plugged it in,
> all i got at boot time was
> LI
> and it just hangs there!
> the machine worked fine before i moved it. i was very carefull with the box
> as it was being moved so, i'm rather suprised that it's not working.
>
> could this be something else than a HD problem? could it be software?

The fact that you moved the computer by car has absolutly no bearing on the LI 
problem, this is a very common and well documented problem.

Its mostly caused by installing anew kernel and not running the bootloader 
properly, in most cases this is caused by not rerunning lilo after you 
installed the new kernel and edited /etc/lilo.conf .

If you are using lilo then here is what the lilo README says about "LI".

   LI   The first stage boot loader was able to load the second stage boot
    loader, but has failed to execute it. This can either be caused by a
    geometry mismatch or by moving /boot/boot.b without running the map
    installer.

Make sure you have a valid stanza in /etc/lilo.conf for the new kernel.
Run /sbin/lilo -t to test if all is ok, if all ok the /sbin/lilo to install 
properly. With errors correct them accordingly the issue /sbin/lilo .

> I would realy appreciate any help you could offer me
>
> Thanks and have a nice day
>
> --Tim

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
