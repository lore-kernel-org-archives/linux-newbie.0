From: Jim Reimer - WA5RRH <wa5rrh@arrl.net>
Subject: trouble setting shell variable
Date: Sun, 26 May 2002 09:07:10 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205261406.g4QE6b9N012213@franklin.icok.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm trying to rename files based on what time it is *now*....

echo `date` | cut -b 25-28,12-13,15-16,18-19

gives me what I want to use for the file name, but I
can't figure out how to get it into a variable for use
later in the script when I rename the file.  I've tried

variablename=

followed by the above commands surrounded by quotes,
parenthesis, back tics, etc. - all produce syntax errors.

Somebody point me in the right direction.

Thanks,
-jdr-

  	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
