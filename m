From: Ray Olszewski <ray@comarre.com>
Subject: Re: a simple way to burn DVDs
Date: Wed, 11 May 2005 13:06:20 -0700
Message-ID: <428265BC.2040308@comarre.com>
References: <fc.004c4e00007c2b66004c4e00007c2b66.7c2bce@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e00007c2b66004c4e00007c2b66.7c2bce@palmertrinity.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

William Stanard wrote:
> I've purchased and correctly installed (it reads data CDs just fine,
> mounted with "mount /dev/cdrom /mnt/cdrom" ) a HI-VAL DVD_RW/_R rewritable
> drive in my Compaq Proliant 800 server running Red Hat 8.0 (ver 2.4.18-14
> ) in preparation to setting up the drive to do my backup chores. There
> doesn't, however, seem to be a simple application as part of this
> particular Red Hat build that writes to DVDs. Am I missing something, or
> do I have to purchase, for instance, NeroLINUX or some other utility for
> writing data to DVDs?

I don't know Red Hat 8.0 specifically, but the usual way to burn a CD 
under Linux involves two steps:

1. Create an image of the CD using (typically) mkisofs .

2. Burn theimage to a CD using (typically) cdrecord .

Although I wrote "CD" above, since that I what I actually burn here, my 
understanding is that under Linux, a data (iso9660) DVD is just a "big" 
CD, and modern versions (possibly more modern than RH 8.0, though) of 
mkisofs and cdrecord can handle DVD-size burns just fine.

Besides that ... older kernels require you to use scsi emulation to 
access CD ... and, I imagine, DVD ... drives to burn discs. I think that 
was still true of 2.4.18 (I know it was backwhen I used it). You 
probably need either to run a newer kernel or use scsi emulation with 
this one ... your "reads data CDs just fine" doesn't really tell us, or 
you, if the drive is "correctly installed" for its role as a burner.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
