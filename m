From: Paul_Ireland@amp.com.au
Subject: Re: XFree/Keyboard problems under Mandrake 9.0 and 9.1Beta
Date: Wed, 12 Feb 2003 09:52:10 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <OFDE298B11.88F407D5-ON80256CCB.0035BD80@LocalDomain>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Ok,  I seem to have fixed the problem,  It appears that there is an issue
with my KVM, when I plug a spare keyboard directly into the PC the problem
goes away.  I suspect its something to do with the keep-alive signaling
from the KVM.  So if anyone else has the same problem then try
disconnecting the KVW switch or checking its setting (something which I'll
be trying later this week).

Regards

Paul Ireland




Sent by:    linux-newbie-owner@vger.kernel.org


To:    linux-newbie@vger.kernel.org
cc:
Subject:    XFree/Keyboard problems under Mandrake 9.0 and 9.1Beta


Hi,

I'm having a slight problem with an installation of Mandrake on a Dell
Lattiude GX50.  Everything is fine until I logout.  After that I loose all
keyboard entry under X (Currently Xfree4 with HW accel.).  There are no
problems using the mouse, and the keyboard still responds to caps-lock etc.
keyboard entry whilst logged into the box and only goes south when I log
out.The system spec is as follows:

Intel Cel. 800 with 256mb Ram
Chipset is Intel 810i Chipset with 1mb memory.
Default windows manager is KDE.

The PC is connected via an 4port "Adderview" KVM switch box

This is my 1st post to the newbies list so if I've neglected to give any
information please let me know.

Thanks

Paul Ireland



AMP (UK) Financial Services Ltd No. 3715118, NPI Ltd No. 3725037, National
Provident Life Ltd No. 3641947, NPI Investment Managers Ltd No. 0962757,
AMP Portfolio Managers
Ltd No. 2238069, London Life Ltd No. 1179800, London Life Linked Assurances
Ltd No. 1396188, Pearl Assurance plc No. 1419, Pearl Assurance (Unit Funds)
Ltd No. 1027138, Pearl
Assurance (Unit Linked Pensions) Ltd No. 1122485, Pearl Unit Trusts Ltd No.
958262, Pearl ISA Ltd No. 3597973, Pearlinvest Ltd No. 263381 are the
companies that make up the AMP
Marketing Group and are regulated by the Financial Services Authority for
pensions, investments and life assurance. AMP (UK) PGI Ltd No. 2587380
is a member of the General Insurance Standards Council. AMP (UK) Financial
Services Ltd is registered with the Mortgage Board.  All companies are
registered in England at AMP Lynch
Wood, Peterborough PE2 6FY. Tel. 01733 470470. We may record or monitor
telephone calls to improve service and protect customers.

The information in this e-mail is confidential and may be legally
privileged.  It is intended solely for the addressee and access to this
e-mail by anyone else is unauthorised.   Although this message and any
attachments are believed to be free of any virus or other defect that might
affect any computer system into which
it is received and opened, it is the responsibility of the recipient to
ensure that it is virus free and no
responsibility is accepted by any AMP Group company for any loss or damage
in any way arising from its use.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
