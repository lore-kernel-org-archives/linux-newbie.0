From: edgaralwers@t-online.de (Edgar Alwers)
Subject: Re: Urgent help !
Date: Wed, 10 Apr 2002 09:54:29 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02041009542900.01099@edgar>
References: <20020408232526.122bd9b1.bbotero@gmx.de> <16ukfV-26ZTpgC@fwd01.sul.t-online.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <16ukfV-26ZTpgC@fwd01.sul.t-online.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Hammann <chammann@t-online.de>, linux-newbie@vger.kernel.org

Thank you, Christoph.

I could boot the box in maintenance modus, edit /etc/fstab and exclude 
/dev/hdb2 from booting. After that, I could at least boot up normally my 
first hd.

Now one question and one general remark.
The question: how could I  try to rescue the /dev/hdb2 partition ? I mean, 
do I have to formate the disk or what could be a better procedure ?

The general remark: after this experience, I would strongly recomend _not_ 
to_change a running ext2 partition in an ext3 one, as it seems that recovery 
processes in the event of a crash and consequential forced check may have 
catastrophal consequences. I had downloaded the newest e2fsprogs version 1.27 
and even this program could not repair the partition. Not imaginable what 
would have happened, if I would have also changed the partition containing 
root !

Edgar

You wrote:
>
> /dev/hdb2 seems to be definitely hosed, I'm not seeing any reasonable
> method of getting at the data on this partition. But as you write this
> partition seems to contain a backup only. Can you boot from CD-ROM or
> diskette and when it halts in the bootup process while trying to fsck
> /dev/hdb2 open another console (Ctrl-Alt-F2 to F{number of ttys+1})? If so,
> I would try to umount this partition and go on with the boot process or
> edit /etc/fstab so that it doesn't even touch it.
> If, on the other hand, /dev/hdb2 contains the root filesystem, you really
> are FUBAR. Wonder if one of the experts on this list can still help you out
> of this.
> So, what is the /etc/fstab of this system?
>
> Christoph

-- 
-----------------------------------
Dr.-Ing. Edgar Alwers
Mailto:edgaralwers@gmx.de
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
