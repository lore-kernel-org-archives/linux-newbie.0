From: Carl <carl@anexia.co.uk>
Subject: Installing same o/s across different hardware
Date: Tue, 09 Sep 2003 17:15:33 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.2.1.1.0.20030909164900.049e0ab8@interzone.anexia.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie list <linux-newbie@vger.kernel.org>

Hi All,

Can anybody help with the following.

I am building systems based on RedHat8 with a 2.2.40 kernel that has had some tweaks.
I have patched in support for Ultra320 hard drives and made some tweaks to the max sizes
of the ipc message queues.

My general build hardware is an intel m/board with u320 drives and a megaraid card.

With these options my current setup is fine. I build the system with all the software that is required then
backup the whole system (excluding /proc) onto tape. When i build the next system i install a minimalist
version of redhat, then boot into single user and restore the tape backup over the top, make sure fstab is correct
and re-run lilo to update the boot loader. Everything is fine.

I have now come to a system that will have no ultra 320 drives and no megaraid card. I have gone through
my normal install process and restored my tape and while the system is fully operable there are a couple
of errors on booting the kernel.

Namely an adaptec message that i can't catch as it is too quick and the following
which i can get from /var/log/boot.log:

Sep  9 16:42:16 machine1 kernel: megaraid: v1.18 (Release Date: Thu Oct 11 15:02
:53 EDT 2001)
Sep  9 16:42:16 machine1 kernel: megaraid: no BIOS enabled.

The crux is i would like to get rid of these messages.

/etc/modules.conf has aliases for the megaraid.o and aic79xx.o modules that are not required for this
system but just commenting them out does nothing.

Anybody know what is required to stop the kernel looking for these devices and hence get rid of the errors ? 

TIA
Carl
--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
