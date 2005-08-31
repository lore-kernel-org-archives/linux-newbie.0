From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: The /dev/mem info please
Date: Wed, 31 Aug 2005 10:04:51 +0530
Message-ID: <3AEC1E10243A314391FE9C01CD65429B0555BC@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Dear all,

The /dev/mem interface is a I guess represents the entire physical
memory on the system.
Can I read the device and get the entire physical memory without any
problem.
I tried this but I got error saying 

# dd if=/dev/mem of=phy-image
Bad Address

Can someone suggest what this error is? Can I neglect it?
Or is there a better way to get the entire physical memory contents?

Regards,
Mukund Jampala


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
