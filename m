From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Write to Windows partition from linux as ordinary user
Date: 07 Nov 2002 08:08:59 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036656539.12354.10.camel@zebra.vil.ite.mee.com>
References: <20021106214656.16325.qmail@web13408.mail.yahoo.com> 
	<046901c285e5$f845e390$8c01a8c0@ENTROPY>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <046901c285e5$f845e390$8c01a8c0@ENTROPY>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph <christoph23@charter.net>
Cc: Abhijit Vijay <abhijit_v@yahoo.com>, linux-newbie@vger.kernel.org

That's a pretty good solution. It _does_ mean that you can only write to
that partition as root or the specified user. This may be a disadvantage
for you, I don't know.

You could add "noauto" to the fstab entry, if you like. That means that
the partition is not mounted by default. If you want to mount it, you
don't need to remember a load of options for mount. If your fstab line
says this:

/dev/hdd1  /mnt/local_d  vfat    noauto,defaults,rw,gid=XXX,uid=XXX  0 0

then you can mount it (you need to be root to mount it) like this:

mount /mnt/local_d


Paul.

On Wed, 2002-11-06 at 22:43, Christoph wrote:
> > I have a Windows 98 partition mounted on linux. The
> > directory, /win98 on which I have done the mount is
> > owned by me, as an ordinary user. However, I find that
> > I cannot write to the partition except as root. Is
> > there any way out, so that I do not need to su before
> > writing?
> 
> I'm still very much a newbie so I could be totally off base
> here.  I had a problem very similar to yours.  I set up a
> local dos drive in fstab to be mounted.  And whenever it
> was mounted, all the directories (and files) were owned as
> root.  The way that I fixed that was to modify the entry in
> fstab to read as such:
> 
> /dev/hdd1               /mnt/local_d            vfat    defaults,rw,gid=XXX,uid=XXX  0 0
> 
> so that it mounts the drive so it's own by group id XXX and 
> user XXX and that did the trick.
> If you are just using mount from the command line, there
> are switches that do the above.
> 
> If a more experienced user knows a better way or can clarify
> as to whether or not there are problems with this solution, I'd
> be very happy to hear it!
> 
> Christoph
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
