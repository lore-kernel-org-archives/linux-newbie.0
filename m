From: Bob Swift <powerstation@shaw.ca>
Subject: BASH Script Change Directory
Date: Thu, 01 May 2003 23:08:02 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305011842.48087.powerstation@shaw.ca>
Reply-To: powerstation@shaw.ca
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: All <linux-newbie@vger.kernel.org>

This is going to sound like a really dumb question, but is there any way to 
have BASH leave the user in the current directory from the script, rather 
than returning them to the directory they were in when the script was called?

For example...  the user is in their home directory and call the following 
BASH script:

     #!/bin/bash
     cd /var/log
     ls

When the script exits, the user is returned to their home directory.  Is there 
a way to leave them in the /var/log directory?

I've tried the obvious things like:

     trap 'cd /var/log' 0

with no success.  I'm guessing that there's probably some really simple thing 
that I'm missing.

Thanks.
-- 
Bob Swift

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
