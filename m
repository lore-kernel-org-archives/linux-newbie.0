From: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>
Subject: Re: CD writing in ext2 filesystem
Date: Thu, 25 Apr 2002 22:30:06 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200204250727.51401.mssnlayam@cs.annauniv.edu>
References: <200204232318.55166.mssnlayam@cs.annauniv.edu> <1019641504.16651.14.camel@Zebra>
Reply-To: mssnlayam@cs.annauniv.edu
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1019641504.16651.14.camel@Zebra>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Furness <paul.furness@vil.ite.mee.com>
Cc: GNU/Linux Newbie <linux-newbie@vger.kernel.org>

On Wednesday 24 April 2002 15:15, Paul Furness wrote:
  > Is there a particular reason why you were trying to put an ext2 fiole
  > system on the CD rather than an ISO9660 one?

Yes. One would like to have all the filesystems to be of the same
type. It would be easier to handle and there would be no
inconsistencies. It (the one you use regularly) is the best filesystem
to backup data.

But the main advantage (of using ext2) is that you get a
filesystem which is the same as your native system. Permissions,
ownership, symlinks, pipes, device files..... (all the great features
of ext2) get taken care of. Most of the above would
not be possible with iso9660. The Rockridge extensions handle them
well. However it too has a problem with the maximum depth
of a directory tree.

If you do not need your CD to be accessed on other OSs
then ext2 is the best bet.

Bye,
Suriya Narayanan M S
-- 
Guru Brahma Gurur Vishnu
Gurur Dhevo Maheshwaraha
Gurur Saakshaath Parabramha
Thasmai Shree Gurave Namaha


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
