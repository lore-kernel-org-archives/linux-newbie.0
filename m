From: Haines Brown <brownh@hartford-hwp.com>
Subject: ~/.Xclients permissions
Date: Wed, 2 Apr 2003 13:23:29 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304021823.h32INTXv012945@hartford-hwp.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux@hartford-hwp.com

I decided to add an ~/.Xclients file, but it hangs X (that is, the "X"
loading symbol remains permanently and the desktop has a black
background). However, the xterm in this file loads as well as do the
other Xclients.

  #!/bin/bash 
  # This is a comment 
  xterm

This .Xclients file is owned by user, and has rwxr-xr-x permissions. I
suspect that's where the problem may lie, but so far no luck
straightening it out.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
