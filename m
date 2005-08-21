From: Ray Olszewski <ray@comarre.com>
Subject: Re: kernel log messages and disk space
Date: Sun, 21 Aug 2005 09:52:22 -0700
Message-ID: <4308B146.8040203@comarre.com>
References: <Pine.LNX.4.44.0508201812550.24204-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0508201812550.24204-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: 
Cc: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:
> Hello,
> 
> Observed today, that my machine had utilized ~ 7G of hard drive space 
> (since the last time I saw it, ~ week ago)! The real killers were: 
> 
> # du -hcs /var/log/* | grep -E '^[0-9]*.[0-9]*G'
> 2.6G    /var/log/kern.log.0
> 2.6G    /var/log/messages.0
> 2.6G    /var/log/syslog.0
> 
> On inspection each of these files along with the /var/log/messages,
> /var/log/kern.log and /var/log/syslog, contained messages as pasted below.  
> Am pasting the contents near the head/tail of each of these files (just to
> highlight that the sector-numbers/time-stamps of these messages were quite
> varied, and that these messages were repeated over and over again till the
> filesize grew to what du showed). 
> 
> I would much appreciate any input on what is/was causing this behavior,
> and, how I may be able to catch it/fix it, therefore.

Wel, device 03:01 is /dev/hda1, and this time (I mean in contrast to 
James' recent posting) the reports do sound like an emerging hardware 
failure, especially if you are getting this many of them. So you *may* 
need a new hard disk.

But first, let's consider other possibilities ... the one I think of is 
a combination of a partitioning error and a drive that is nearly full 
(so the error is just now becoming visiale). Either you or we should 
look at this information:

	output of "df"
	the drive's partition table (as reported by fdisk, say).
	the physical size of the drive (as reported in dmesg during boot/init, 
preferably)

Another possibility is a bad spot in RAM. So let's look at:

	output of "free" (both lines) run proximate to the messages in the logs.

Finally ... is this system doing anything special that involves frequent 
access to the hard disk? If so, what?

I'm assuming you'd have mentioned any recent changes (a kernel upgrade 
is the most obvious) associated with this problem, so I'm not 
considering that sort of cause.

> 
> The file contents follow:
> 
> [# tail -n3 /var/log/kern.log.0]
> 
> Aug 18 07:38:18 mithrandir kernel: attempt to access beyond end of device
> Aug 18 07:38:18 mithrandir kernel: 03:01: rw=0, want=2031123176, 
> limit=13277691
> Aug 18 07:38:18 mithrandir kernel: attempt to access beyond end of device
> 
> 
> [# tail -n3 var/log/messages]
> Aug 20 07:38:23 mithrandir kernel: attempt to access beyond end of device
> Aug 20 07:38:23 mithrandir kernel: 03:01: rw=0, want=1373859054, 
> limit=13277691
> Aug 20 07:38:23 mithrandir kernel: Directory sread (sector 0xa3c6d9dc) 
> failed
> 
> [# tail -n3 /var/log/syslog]
> 
> Aug 20 08:41:13 mithrandir kernel: attempt to access beyond end of device
> Aug 20 08:41:13 mithrandir kernel: 03:01: rw=0, want=71196829, 
> limit=13277691
> Aug 20 08:41:13 mithrandir kernel: Directory sread (sector 0x87cc13a) 
> failed


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
