From: Phy Prabab <phyprabab@yahoo.com>
Subject: periodic flushing of "cached" data
Date: Mon, 19 Apr 2004 01:49:43 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040419084943.61269.qmail@web90008.mail.scd.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Thank you for your response.  I have given this a try
(and other options to get pdflush to wake up and flush
more data) with a file system that is currently in use
with no difference.

Interestingly enough, I created an application that
just allocates memory and ran it to eat up 500M.  I
the app and it forced the cached data to disk and
freed up 500M which then was filled up again by NFS
data.

I would like to get similiar behavior as that what I
see and know of NetWork Appliance Data OnTAP.  Within
their configuration they have several note worthy
principles:

1: Cached data can not be older than 20 secs without
being committed to disk
2: if there is significant data filling the caches and
heavy network traffic, it will throttle the network
interface and begin moving data to disks.  It does
this very well and in a very balanced fashion.

Currently, an older generation NetApp Filer F760 is
able to out run my linux file server by 30-50% (the
F880 is a dual 800MHz PIII, my file server is a quad
Xeon 2.0GHz, both machines are FC).

Is there any way to get the Linux kernel to do the
same as OnTAP and be on par or better than the F880.

Thank you very much for your time.

Phy Prabab
--- Andrew Morton <akpm@osdl.org> wrote:
> Phy Prabab <phyprabab@yahoo.com> wrote:
> >
> > Sirs,
> >=20
> > I am interested in understanding how tot tune the
> 2.6
> > kernel such that I can get the WM to write out
> data
> > that is held within the "cache".
> >=20
> > My situtation is that I have a NFS file server
> that
> > gets data in bursts.  The first couple of burst
> move
> > quickly, but once the system memory becomes
> filled,
> > mostly held in "cache", then my NFS performance
> drops.
> >  The issue here is how to get the VM to write out
> the
> > data held within the cache when times are slow
> (which
> > amounts to 90% of the time)?  I have played a
> little
> > bit with the /proc/sys/vm/dirty_ratio, etc with
> out
> > much help.
>=20
> Setting dirty_background_ratio lower might smooth
> things out.






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
