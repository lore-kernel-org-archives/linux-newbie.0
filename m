From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: BASH Script Change Directory
Date: Fri, 2 May 2003 07:22:54 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0305020715190.22000@reg_kipling>
References: <200305011842.48087.powerstation@shaw.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305011842.48087.powerstation@shaw.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bob Swift <powerstation@shaw.ca>
Cc: All <linux-newbie@vger.kernel.org>

On Thu, 1 May 2003, Bob Swift wrote:

> This is going to sound like a really dumb question, but is there any way to
> have BASH leave the user in the current directory from the script, rather
> than returning them to the directory they were in when the script was called?
>
> For example...  the user is in their home directory and call the following
> BASH script:
>
>      #!/bin/bash
>      cd /var/log
>      ls
>
> When the script exits, the user is returned to their home directory.  Is there
> a way to leave them in the /var/log directory?
>

 The script runs in a subshell. What you can do in this case is

`source your-script'  or just `. your-script'

Ken
-- 
Live Long or Prosper! No, wait, that wasn't it...
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
