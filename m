From: Richard Dawson <rcdawson@att.net>
Subject: RE:  more compaq 4000 / linux questions.
Date: Sun, 22 Jun 2003 10:55:16 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EF5ED84.1000405@att.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

It has been a while, so I will repeat my question and report the solution.

Mandrake 9.1's installation program didn't identify and/or install 
Compaq's ESS 1868-based sound board in my Deskpro 4000 (5200MMX ). 
 Neither would it detect a "vanilla" card put in the same slot.  Note: 
 this is an ISA slot.

Solution:  Apparently Mandrake 9.1's installer does not probe the ISA 
bus.  I loaded and ran sndconfig, accepting the default interrupt (5, I 
believe) and address.  With that, sound seems to be working.

Thanks to those who responded with suggestions.

Richard Dawson





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
