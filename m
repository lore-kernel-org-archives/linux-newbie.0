From: Peter <pfheiss@philonline.com>
Subject: PPP Question
Date: Tue, 24 Sep 2002 15:38:55 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209240738.g8O7ct403062@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

I have 3 ISPs of which one with 2 phone numbers (ppp1 and ppp2). Using the 
command /sbin/ifup pppx I can connect only to ppp0 and ppp1; ppp2 and ppp3 
will just sit doing nothing. The same happens using the guis rp3 and usernet, 
on the window waiting the bar just moves for ever back and forth.

Yet using rp3-config -debug or kppp I can dial-up and connect with all 4 
numbers.

Is there an explanation to this and can correction be made that command 
/sbin/ifup which I prefer can be used for all ppps?

In wvdial.conf all looks correct the same in pap/chap-secret.

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
