From: "Joseph D. Wagner" <technojoecoolusa@charter.net>
Subject: RE: Kernel 2.6.10 Can't Open Initial Console on FC3
Date: Sat, 1 Jan 2005 10:05:57 -0600
Message-ID: <3k77vr$fs05t3@mxip08a.cluster1.charter.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: jwendel10@comcast.net, mikeserv@bmts.com, zaitcev@redhat.com
Cc: Fedora Development List <fedora-devel-list@redhat.com>, Fedora List <fedora-list@redhat.com>, Linux Kernel <linux-kernel@vger.kernel.org>, Linux Newbie <linux-newbie@vger.kernel.org>

RESOLVED.

I enabled support for hotplug devices and installed an initrd; then it works.

They tell me there's a way to make it work without initrd, but it's ugly, messy, and not recommended:

http://fedora.redhat.com/docs/udev/

I haven't yet tested to see if it works with initrd and without support for hotplug devices, but from the documentation I've read my money is on no.

Joseph D. Wagner

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
