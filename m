From: Chuck Gelm <chuck2007@gelm.net>
Subject: Re: the tree command
Date: Thu, 29 Mar 2007 09:25:42 -0400
Message-ID: <460BBE56.80403@gelm.net>
References: <90d49b680703290443j7551f8b9n55610d68877f9875@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <90d49b680703290443j7551f8b9n55610d68877f9875@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jack Bauer <bauer.free@gmail.com>
Cc: linux-newbie@vger.kernel.org

Jack Bauer wrote:
> Hi list,
>
> I am reading ldd3, there is a command like this,
> $ tree /sys/bus/pci/devices/
> to show some infomation.
>
> But this command is not installed in my distribution (ubuntu 6.06).
> I have no idea about which package it belongs.
>
> Thanks
>
> Bauer
>
bin: bin (some common system utilities)
bin:
bin: The "bin" package is a collection of utilities for handling various
bin: kinds of archives, identifying file types, and processing data.
bin: Several of these tools are used by system scripts, so this is a
bin: required package. The bin package contains these programs:
bin:
bin: bban compress diskcopy dosfsck ed eject fbset file fiz fromdos lha
bin: mkdosfs mktemp patch rescan-scsi-bus rpm2targz rpmoffset run-parts
bin: savelog splitvt sysvbanner tempfile time todos tree unarj volname
bin: which xx zoo

/mnt/cdrom/slackware/a/bin-11.0-i486-3.tgz

The bottom of my 'man tree' mentions
SEE ALSO dircolors, ls, find

HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
