From: Abhijit Vijay <abhijit_v@yahoo.com>
Subject: Exporting display
Date: Tue, 17 Sep 2002 05:45:24 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020917124524.17274.qmail@web13407.mail.yahoo.com>
References: <1032261353.7489.17.camel@Zebra>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1032261353.7489.17.camel@Zebra>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi Everyone,

I connect to a Linux machine using SSH from a Windows
NT workstation and need to bring up graphical programs
on my console. I find that I am unable to do this...
Could anyone please tell me what I should do?

Here's what I did...

1. Run XWin on my workstation. This shows up on my
system tray

2. Execute "setenv DISPLAY ${REMOTEHOST}:0.0" after
connecting to my linux machine through SSH

3. echo $REMOTEHOST gives me hughes08.biac.duke.edu
(my Windows NT workstation)

4. echo $DISPLAY gives me hughes08.biac.duke.edu:0.0

However, when I type xbiff& after connecting to my
linux machine, I just get the process ID. The xbiff
window does not show up!

Regards,
Abhijit.

__________________________________________________
Do you Yahoo!?
Yahoo! News - Today's headlines
http://news.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
