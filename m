From: "Girish Kale" <girish.kale@nevisnetworks.com>
Subject: Question on performance in user space
Date: Tue, 3 Jun 2003 14:23:42 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <36993D449C7FA647BF43568E0793AB3E059B46@nevis_pune_xchg.pune.nevisnetworks.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie <linux-newbie@vger.kernel.org>

Hi,
=A0
One of my requirements is that the applications, daemons, processes run=
ning in "user" space should be able to respond in a deterministic time,=
 e.g. if I want to process some PDU's of some protocol, then that parti=
cular process should get scheduled in a particular time, so that after =
processing the response can be sent out. If the response is not sent ou=
t, or sent out after a particular timeout, then an error will be report=
ed by the protocol. Hence this requirement. Can this requirement be sat=
isfied by a standard linux kernel.
=A0
RTLinux or RTAI will improve performance in the kernel space. So will u=
ser/application space also have the same performance ? OR how do I ensu=
re that applications respond in a deterministic time ?
=A0
Thanks,
Girish
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
