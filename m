From: Peter Edstrom <peter.p3@home.se>
Subject: Procmail won't filter linux-newbie mail
Date: Sun, 31 Aug 2003 11:14:26 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030831091426.GB2273@linux>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello!

Procmail has of some reason stopped filtering my linux-newbie mail. It
occured as I cleaned up my .procmailrc-file. This is how the
linux-newbie entry looks like:

  :0
  * ^X-Mailing-List:.*linux-newbie@vger.kernel.org
  IN.linux-newbie

I've also tryed with the following condition just before the
X-Mailing-List one, but without success:

  * ^(To|Cc):.*linux-newbie@vger.kernel.org

I have tons of mailing list filters that all work with this principle,
but this one don't. Does anyone have any ideas on what's causing the
problem?

Thanks in advance.
Sincerely,
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
