From: ippi <heynumbertwo@yahoo.com>
Subject: Re: how to identify filesystem type
Date: Thu, 19 Aug 2004 01:13:00 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040819081300.95564.qmail@web50005.mail.yahoo.com>
References: <005e01c485a0$69631820$5c59023d@dreammachine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <005e01c485a0$69631820$5c59023d@dreammachine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pankaj Agarwal <pankaj@pnpexports.com>, linux-newbie@vger.kernel.org


--- Pankaj Agarwal <pankaj@pnpexports.com> wrote:

> Kindly let me know how to
> identify the filesystem in an image file or block
> device.
> 

Hi Pankaj,

if you've got an image file called somefs.img you
should be able to do:

    file somefs.img

If you've got a block device - say /dev/hda1 - then
you'll need to do the following (probably as root).
Be careful to type this command correctly or you
could be in a world of pain

    dd if=/dev/hda1 bs=1k count=5 | file -

A
DO NOT USE dd WITH ANYTHING UNDER /dev WHILE RUNNING 
AS ROOT UNLESS YOU REALLY, REALLY HAVE TO.


		
__________________________________
Do you Yahoo!?
Yahoo! Mail Address AutoComplete - You start. We finish.
http://promotions.yahoo.com/new_mail 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
