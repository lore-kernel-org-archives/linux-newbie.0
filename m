From: Donald Duckie <schipperke2000@yahoo.com>
Subject: on sk_buff
Date: Tue, 31 Aug 2004 22:06:42 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040901050642.10265.qmail@web90105.mail.scd.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

good day!

i am new to linux kernel, and came across with
sk_buff. i have been reading about it for awhile now,
but there are some questions which were not answered
by any site that i came across:

(1) as what i have understood, sk_buff is just
equivalent to a packet that can be passed from one
layer/protocol to the other. how or in what way can it
be passed? 

(2) the functionalities offered by sk_buff can be
categorized into: memory management; data
manipulation; list manipulation. what functions are
supposed to be invoked in order for the skb to be sent
or received?

(3) i know that i still have to read a lot, but where
can i find/read resources about the sending/receiving
of an sk_buff from one layer to another; one protocol
to another? the net/core/skbuff.c does not offer much
explanation on the above querries.




		
_______________________________
Do you Yahoo!?
Win 1 of 4,000 free domain names from Yahoo! Enter now.
http://promotions.yahoo.com/goldrush
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
