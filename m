From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: Things I can do before MMU is turned on
Date: Wed, 2 Jan 2008 12:25:03 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B075CC22B@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org


Hi,

This is a little offtopic but ...

I'm working in an environment where the MMU has yet not been enabled (And hence on PC relative addressing can be used - no absolute addresses). I'm trying to build an exhaustive list (in terms of C language source contructs) of what I am allowed to do and what no. Can you please help me by adding to the list and verifying / disqualifying if anything is wrong:

Allowed
=======
1) Local variables
2) Function calls using function name (right?)
3) if-then-else
4) for / while / do-while


Not Allowed
===========
1) Accessing global variables
2) Function call using function pointers (why?)
3) Switch-case (why?)

Any thing else that can be added to the "Not allowed" list?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
