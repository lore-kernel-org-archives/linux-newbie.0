From: Phy Prabab <phyprabab@yahoo.com>
Subject: periodically flushing "cached" data
Date: Mon, 19 Apr 2004 00:58:14 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040419075814.53568.qmail@web90010.mail.scd.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: linux-newbie@vger.kernel.org

Sirs,

I am interested in understanding how tot tune the 2.6
kernel such that I can get the WM to write out data
that is held within the "cache".

My situtation is that I have a NFS file server that
gets data in bursts.  The first couple of burst move
quickly, but once the system memory becomes filled,
mostly held in "cache", then my NFS performance drops.
 The issue here is how to get the VM to write out the
data held within the cache when times are slow (which
amounts to 90% of the time)?  I have played a little
bit with the /proc/sys/vm/dirty_ratio, etc with out
much help.

Any suggestions?

Thank you for your valuable time.
Phy Prabab


=09
	=09
__________________________________
Do you Yahoo!?
Yahoo! Photos: High-quality 4x6 digital prints for 25=A2
http://photos.yahoo.com/ph/print_splash
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
