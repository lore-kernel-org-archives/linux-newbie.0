From: Thomas Williams <tlw1mac@earthlink.net>
Subject: klipper error madness
Date: Sat, 31 May 2003 22:02:53 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030531220253.00c92864.tlw1mac@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm running 2.2.1-7 of KDE and I have a problem with klipper. When the xsession starts up its launched and it never appears in kicker and it generates massive error messages to .xsession-errors. The message it generates is "QMenuData::removeItem Index -1 out of range" It does this to the point of filling up the user space with that one single file. It also takes most of the CPU time as well. I'm theorizing that there is a clipboard file somewhere that is somehow corrupt and that is what is causing this problem.

The questions are:

Am I right about there being a clipboard file somewhere?

If so, then where is the dumb thing?

If not, then what do I have to do to klipper to make it behave its self?

Tom
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
