From: James Miller <jamtat@mailsnare.net>
Subject: LVM query
Date: Wed, 13 Oct 2004 13:58:29 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410131346130.1347@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I tend to use somewhat older computers and older, smaller (and
cheaper--sometimes free!) hard drives.  As a result, I end up with 2 or
more hard drives in any given machine.  I've been manually partitioning
and usually making / the mount point for smaller of the disks, /home the
mount point for the larger (single user system, btw).  I suppose /usr
might be a good mount point for a third disk.  Be that as it may, I've
recently looked into LVM (logical volume management) and wondered whether
it might not be a better option for setting up my system.  As I understand
about the way it works, I would not run into problems such as I might have
with my former scheme--for example running out of room on / (never
happened before, but who knows).  With all disks being used as one large
filesystem under LVM--if that is, indeed, the way it works--directories
can increase to whatever size disk total allows.  So, a couple of
questions in closing: have I understood correctly how LVM works and what
it does?  Does it sound like a good solution for my scenario?  Is there
any performance hit involved in using it as over against a traditional
partitioning scheme?  Any other comments on, criticisms, praises of LVM?
Gotchas?  Thanks for any feedback on this.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
