From: "Jing Huang" <jhuang007@gmail.com>
Subject: question on Netlink Socket
Date: Thu, 12 Jul 2007 15:07:17 -0700
Message-ID: <b674f4c50707121507t2d41a730heca94b617f270ea@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=JBFYfxzkYwn5WZPHt0ZmQPE1zJ38lIxho/b38P6pXEsZnu5cE3f4FLbdn9r1kqMxKKQZ794bRUG6sbHwy7HAfuXIV6zdbKCuaOBmbhxuRjsqx4NIjg0BMpiD4AvjwbQeVJ+vD2B2DGhyUGK5651u+m7Zoddo1oOMAm9QTKV95uo=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Is netlink socket can be used to replace any IOCTL, or it is mostly
for networking application?

I am thinking of using netlink socket as the management interface for
a driver I am working on. However, after some reading, my concern is I
will need to add a new netlink socket protocol type to the kernel
header file netlink.h. In that file, the maximum number of netlink
socket protocol type is limited to 32 with only about 16 left. So If
everybody is using netlink socket as a IOCTL replacement this number
can run out very quickly. I didn't see any mechanism to share the same
protocol type among different driver or kernel modules. Maybe I am
missing something. Can anyone clarify this? Thanks.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
