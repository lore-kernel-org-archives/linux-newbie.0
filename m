From: lawson_whitney@juno.com
Subject: Re: Linux & Zip Drives.
Date: Sat, 11 May 2002 20:29:28 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020511.210407.134663624.0.lawson_whitney@juno.com>
References: <20020511163432.A465@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020511163432.A465@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: haltec@iceweb.net, lawson_whitney@juno.com
Cc: linux-newbie@vger.kernel.org

On Sat, 11 May 2002, Hal MacArgle wrote:

> Greetings: I just bought an internal SCSI Zip drive on eBay that was
> sold as "Zip 100mB converted to 250mB." Purchasing only 250mB disks I
> find the drive will not accept them - ejecting immediately after
> inserting.
>
> I believe the drive needs a disk before I can install the module and
> use it..

Why would this be?  It needs a disk with a filesystem on it before you
can mount it, but the driver module should be able to initialize the
empty drive.  Maybe the drive needs to be told to accept a disk?
Mind, I don't know anything specific about these beasts, but I don't
think a modprobe would do any harm.

> Research tells me that some drives require that with Linux
> and others don't... No details.. I, also, cannot find any information
> as to whether that conversion is for real or not.. :^(..
>
> Any suggestions or comments??
> TIA,
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
>     haltec@iceweb.net | w8mch@iceweb.net.. A M$ free environment
> .
Lawson

Everything comes from somewhere.  Everything has to go somewhere.
There ain't no such thing as a free IRQ.
---cut here


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
