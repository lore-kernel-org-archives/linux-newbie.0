From: Hal MacArgle <haltec@kvinet.com>
Subject: RTC Problem?
Date: Mon, 26 May 2003 11:22:42 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030526112242.A186@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: For some time now I've noted, when booting Slackware8.0 -
kernel 2.4.18, that was patched up helter skelter from the original
2.4.5, that the boot report lines seem OK with one exception:

"Setting system time for hardware clock.
modprobe: modprobe: Cant locate module character major 10,135"
(None of the above is in dmesg - only during boot."

If, after booting, I view /var/log/syslog I find the following:
( The 08:33 line only on the original boot and the 10:3X lines on
reboot..)
----------
May 26 08:33:56 lnx2 kernel: Symbol table has incorrect version number. 
May 26 10:37:50 lnx2 modprobe: modprobe: Can't locate module char-major-10-135
May 26 10:37:51 lnx2 rpc.mountd: Caught signal 15, un-registering and exiting. 
May 26 10:38:48 lnx2 kernel: Symbol table has incorrect version number. 
--------------
I note that 10, 135 is /dev/rtc and has the proper permissions etc..

Perusing all my Linux/Unix books I'm not sure what "rtc" means.. An
older book lists the file /proc/rtc, but I get "no such" from this on
any of my Linux machines.. Possibly deprecated? It looks like it must
be 'realtime clock' with no mans or info I could find..

I'm not familiar with what "Symbol table" means either, so any hints
will help. Could it be I have a wayward non 2.4.18 module somewhere
that I can't find??

Latest versions of Slackware are pretty good in that I can set the
BIOS clock to UTC, making it easy to check and re-set it, yet the
proper offset of EST or EDT, is printed... Maybe I have this feature
messed up but it's working correctly anyway.. ???? ...

Appreciate!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
