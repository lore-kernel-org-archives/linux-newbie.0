From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: /net
Date: 29 Oct 2002 19:23:57 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035937437.2765.5.camel@brainpress.verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

I'm still recovering from upgrading into almost a completely new
system.  I thought I didn't install NFS and samba and the other network
file system stuff, but it seems it's there anyway.

Anyway, when the system is shutting down or rebooting,  just after the
umount command is given, I get the error: umount2: <something about RPC
not being found>: umount /net: device busy
and right there, all attempts to shutdown/reboot are ended.  The system
just sits there.  The only thing I can do is hit the reset button.  If
not for XFS, I'd be running fsck at every frickin reboot.

I have an AthlonXP 2100+ system, integrated ethernet, adsl connex
(started at boot and not stopped manually at all).  Can't think of what
else is important here.  Can anyone tell me how to make this go away?
I tried to disable nfslock and nfs at boot (set to start manually), but
it frickin started anyway.

Thanks guys!!!
-- 
Bryan Simmons <bsimmo1@gl.umbc.edu>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
