From: Abhijit Vijay <abhijit_v@yahoo.com>
Subject: Unencrypted data over network?
Date: Fri, 7 Feb 2003 08:20:41 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030207162041.51458.qmail@web13401.mail.yahoo.com>
References: <03020711533101.22365@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <03020711533101.22365@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi Guys,

I need to run graphics windows remotely from a linux
machine on a windows machine. I have been using XWin32
and "setenv DISPLAY ${REMOTEHOST}:0.0" in my login
shell after logging in through Secure Shell. 

My question is this: I need to do remote processing of
images (on the linux machine) and show them up on my
windows machine. However, it takes several seconds to
pull up an image through the windows machine while it
takes almost neglible time to do the same on the linux
machine direclty (which is on the same high speed
network on a different floor as the windows machine)
Is this because of the encryption done on the data as
it is sent over the network? Is there a way to specify
that the graphics data be sent unencrypted? 

Appreciate all help!

Regards,
Abhijit.

__________________________________________________
Do you Yahoo!?
Yahoo! Mail Plus - Powerful. Affordable. Sign up now.
http://mailplus.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
