From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: kernel version mismatch peculiarity.
Date: Tue, 21 Dec 2004 10:41:35 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811258EEC@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

hello,
=A0=A0=A0=A0=A0=A0=A0 I have compiled simple netfilter linux modules an=
d when am trying to run it, i get the following error on saying:=20
=A0
insmod capture.o
=A0
 capture.o was compiled for kernel version 2.4.9-9
=A0=A0=A0=A0=A0=A0=A0 while this kernel is version 2.4.18-14.
=A0
I have encountered with this problem only after I have recompiled the k=
ernel last night.
There was no such error before recompilation of the kernel when I was u=
sing the same module.
=A0
What might be the relevance?
I think the previous kernel is using the latest build kernel headers.
If this the problem I do I solve this?
=A0
Any suggestions?
=A0
Regards,
Mukund jampala
=A0
c
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
