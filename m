From: Hal MacArgle <haltec@kvinet.com>
Subject: PostFix -> masquerade_envelope???
Date: Mon, 19 Jan 2004 09:40:37 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040119144037.GA605@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Does PostFix support masquerade_envelope like Sendmail
before 8.12.XX used to??

In other words: All my machines have hostnames that do not match the
dial up ISP's domain name, therefore my sent message envelope
normally isn't the same as the Return To:, etc - throwing some sites
a curve plus not having a real return address for bounces..

Using Sendmail 8.11.X or before, I used masquerade_envelope which
works fine but the new 8.12.XX doesn't support this, AFAIK...

If PostFix does - I'll change to that but I can't seem to find any
information about this in their docs, etc..

Maybe there's another way to solve this problem.. I'm all eyes..<g>

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
