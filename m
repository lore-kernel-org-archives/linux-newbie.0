From: James Miller <jamtat@mailsnare.net>
Subject: Linux detection of processor speed - accurate?
Date: Fri, 3 Oct 2003 14:33:35 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0310031421150.1378@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

This is more of a general hardware question than a Linux question, but
there *is* a Linux component.  Here goes.  I've recently put newer
processors in a couple of older motherboards.  In one case, a BIOS upgrade
had been performed on the machine at some point since it's manufacture, in
the other case, I'm not sure.  In any case, following directions I found
at Tom's hardware for one of them, I put in a 500Mhz processor - but the
BIOS would only show a 400Mhz processor in its report (I'm sure I set the
jumpers right: I double and triple checked it).  In the other, I put a
1.4Ghz processor - but the BIOS report would show only an 800Mhz
processor.  Now, here's where Linux part comes in: despite what the BIOS
report shows about processor speed, Linux's bootup report shows the
correct processor speed - 499Mhz in one case, 1390.xxMhz in the other.
So, who's right - the BIOS report or Linux's bootup record?  Can the OS
use the processor's full speed, even though the BIOS doesn't seem to
recognize it?

Thanks for any input on this marginally Linux question.
James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
