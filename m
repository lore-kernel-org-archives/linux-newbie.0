From: Ray Olszewski <ray@comarre.com>
Subject: Re: to find disks/partitions and their names
Date: Thu, 21 Aug 2003 21:17:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030821211101.0207bcb8@celine>
References: <200308220328.h7M3SRlq021963@pegasus.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200308220328.h7M3SRlq021963@pegasus.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

At , Heimo Claasen wrote:
>A seemingly trivial question: how do I find what partitiona exist on a
>second HD, and what their names are ?

Not trivial at all, though you do seem to have most of the answer worked 
out yourself.

The piece you are missing is the name of the third standard Linux program 
for partition manipulation: sfdisk. I haven't used it myself, but its man 
page confirms my impression that it is written with an eye to being called 
from a script or program. Using it, you should be able to get the partition 
list for a drive in a form that can be parsed by (say) Perl's string 
manipulation components, then used to "automatically" (that is, under the 
script's control) mount the partitions (if they are of mountable types, of 
course) on "generic" mount points like /mnt/drive1, mnt/drive2, etc. (or 
any set of generic names you prefer, of course ... the script could even 
mkdir mount points as needed).

I'm assuming here that you know some scripting language -- Perl, Python, 
whatever -- well enough to write the relatively simple program that would 
be involved here.

I hope this is enough to get you started. If not, please don't hesitate to 
post a followup.

>The situation: A second hard disk is inserted - or changed there - in the
>exchange bay which is located as the "Second Primary" HD at the far end of
>the cable from the 2nd IDE plug of the motherboard. (The "First Primary"
>sits on the 1st. IDE connector and booting is from there.)
>
>A "manual" (console) 'fdisk /dev/hdc' will sure list the _partitions_,
>in Linux denmination, on that second HD (though this would not give
>the names which the partitions there have - for this, 'cfdisk hdc' is
>needed in addition.)
>
>It's wise to shut down the unit for inserting/changing such a second HD;
>only with booting up anew - I use/prefer LILO - , I'd like to:
>(a.) check for the existence of a second HD, and
>(b.) 'mount' - not necessarily with "fstab" but perhaps with an
>appropriate bash/batch command - all eventually existing partitions on
>this second HD under a generic mount point on the root tree (of the
>booting, first HD.)
>
>It gets a bit tedious to do that manually each time with half a dozen
>slightly differently organised "2nd" HDs.







-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
