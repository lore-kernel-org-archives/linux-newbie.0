From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: exported variable & usage problem
Date: Tue, 21 Dec 2004 11:49:20 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811258F09@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

=A0
Hi all,
=A0
Good morning.
=A0
I have a small problem & I searched enough for finding (resolving) it.
=A0
The problem is I have 2 modules.
=46irst module exports some symbols to the symbol table using EXPORT_SY=
MBOL. Second module uses the symbols exported by the first module when =
loaded (at asynchronous time intervals) is giving an error saying=20
=A0
=A0
"capture.o: unresolved symbol glb_time"
where glb_time is the exported variable of type "struct timeval".
=A0
Cat /proc/ksyms | grep glb_time=20
is also working.
=A0

Why is this happening?
Should I do some thing in a second module before just directly using an=
 exported variable in it?=20
Confused... Please help?
=A0
Regards,
Mukund jampala
=A0
=A0
=A0

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
