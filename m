From: Heimo Claasen <hammer@revobild.net>
Subject: to find disks/partitions and their names
Date: 22 Aug 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200308220328.h7M3SRlq021963@pegasus.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

A seemingly trivial question: how do I find what partitiona exist on a
second HD, and what their names are ?

The situation: A second hard disk is inserted - or changed there - in the
exchange bay which is located as the "Second Primary" HD at the far end of
the cable from the 2nd IDE plug of the motherboard. (The "First Primary"
sits on the 1st. IDE connector and booting is from there.)

A "manual" (console) 'fdisk /dev/hdc' will sure list the _partitions_,
in Linux denmination, on that second HD (though this would not give
the names which the partitions there have - for this, 'cfdisk hdc' is
needed in addition.)

It's wise to shut down the unit for inserting/changing such a second HD;
only with booting up anew - I use/prefer LILO - , I'd like to:
(a.) check for the existence of a second HD, and
(b.) 'mount' - not necessarily with "fstab" but perhaps with an
appropriate bash/batch command - all eventually existing partitions on
this second HD under a generic mount point on the root tree (of the
booting, first HD.)

It gets a bit tedious to do that manually each time with half a dozen
slightly differently organised "2nd" HDs.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-08-21
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
