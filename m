From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: Fedora core 3 Version magic error..
Date: Thu, 7 Jul 2005 11:54:50 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811610708@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Dear all,

I have a problem loading the rpm build locally on Fedora core 3, linux
kernel 2.6.10.

After building the rpm file from the available sources on the Linux
kernel 2.6.10 which was D/W from kernel.org and build, I am unable to
load it.

It results in the following errors:-
tifm: version magic '2.6.10 686 REGPARM gcc-3.3' should be '2.6.10
REGPARM gcc-3.4'

Probably, It's only failing due to gcc version mismatch. 
When I look at the cc in /bin it points to gcc.3.4.

Can some one suggest me a solution for this issue?

Thanks a million for the helps.

Regards,
Mukund Jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
