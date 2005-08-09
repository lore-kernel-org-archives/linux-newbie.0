From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: vfs unable to mount root fs on unknown--block(0,0).
Date: Tue, 9 Aug 2005 17:29:01 +0530
Message-ID: <C349E772C72290419567CFD84C26E01709FE93@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Dear all,

I have rebuild my kernel 2.6.10 inserting some debug messages in the FS
sub-system.
Later when I tried to boot the new kernel image I am failing with
following message.

	Kernel panic: VFS: Unable to mount root fs on
unknown--block(0,0)

My kernel build process reported NO error messages.

I have searched the groups for this problem but I did not find any
solution mentioned.

Regards,
Mu7kund Jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
