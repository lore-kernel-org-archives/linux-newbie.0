From: Hal MacArgle <haltec@iceweb.net>
Subject: Unmounting a Zip 250 Drive??
Date: Fri, 14 Jun 2002 10:42:45 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020614104245.A481@lnx2.w8mch.ampr.org>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings:  Having a problem trying to umount /dev/sda4 on the NFS
server machine getting "device busy" report.. Was able to invoke
umount with the -r flag changing to ro but still can't umount, to
remove the disk, without rebooting the machine.. This internal ATAPI
drive does not have the mechanical remove disk pin like the older
drives.. Man umount hasn't offered a clue as well as several books
and manuals I have..

This only happens, AFAIK, when I use the drive to back up files from
a NFS client machine.. I've made sure the client has unmounted it's
end OK and /etc/mtab on both machines looks OK, with the server mtab
changed from 'rw' to 'ro' of course, but still no joy..

I can reboot the server solving the problem but there must be another
way.. BTW, the iOmega supplied program, iomegaware, 'iw',  wont
unmount it either. Something is 'open' somewhere that I can't seem to
find. Any suggestions?? (Slackware8.0 w/ kernel 2.4.13 on the server
machine and kernel 2.2.19 on the client.) TIA!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
    haltec@iceweb.net | w8mch@iceweb.net.. A M$ free environment     
.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
