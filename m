From: "Anshuman Rawat" <asr245@nyu.edu>
Subject: fast interrupts?
Date: Sat, 8 Jun 2002 05:11:01 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <046701c20ecc$69f3d560$9e03a5d8@oemcomputer>
Reply-To: "Anshuman Rawat" <asr245@nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
I am new both to this list and linux and i need help. have started reading
the book by Michael Beck...
am not clear about register saving in fast interrupts...
the book says...
while handling a fast interrupt, only those registers are saved that are
modified by a normal C function (?). This means that , if assmbler code is
to be used in the handling routine, the remaining registers (?) must be
saved beforehand and restored afterwards.

what does the author mean by registers modified by a normal C function, and
the remaining registers?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
