From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: error message interpretation help?
Date: Tue, 3 Feb 2004 15:14:36 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402031459010.24791@ppg_penguin>
References: <020320040856.27329.7c84@comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <020320040856.27329.7c84@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: beolach@comcast.net
Cc: jamtat@mailsnare.net, linux-newbie@vger.kernel.org

On Tue, 3 Feb 2004 beolach@comcast.net wrote:

> > 1) whether the /proc/partitions and /dev directory structure inconsistency
> > could be related to renaming the fstab entry for the CD drive
>
[snip useful explanations of how devfs is affecting /proc/partitions,
and symlinks for the cd]

 Can I just say that I agree with all of this, apart from the
advice to mount / use devfs.  Seems to me that if devfs has never been
mounted in the past, adding it to the kernel config now is a bug - it's
no longer maintained (certain race conditions are believed to be
unfixable, although many people run it without trouble).  But see below.

 As to why the cdrom was not accessible via /dev/cdrom, I've no idea.
Two levels of symlinks isn't a problem (look at shared libraries
sometime, foo.so -> foo.so.4 -> foo.so.4.0).  If you've got strace
installed, you could always try

strace mount /dev/cdrom 2>trace

when you've got a CD in the drive, then look in the trace to work out
which of the errors is the one that matters.  You might think banging
your head against a brick wall is easier and less painful, it depends a
bit on what is in the particular trace, some have a lot of error
messages for things that you wouldn't normally expect to succeed :)

 But, turning this around, if /dev/cdrom was pointing to
/dev/cdroms/cdrom0, surely at least the installation kernel _was_ using
devfs ?  In which case, maybe devfs _is_ appropriate to your setup.
Perhaps upgrading to Sid broke this.  I'd be particularly concerned at
the lack of /dev/pts in your fstab, you'll need it if you either access
this machine via ssh, or if you open xterms.

Ken
-- 
Brighton tops UK Jedi league
http://www.theregister.co.uk/content/28/35186.html

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
