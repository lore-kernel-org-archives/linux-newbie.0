From: Bob Swift <powerstation@shaw.ca>
Subject: Re: BASH Script Change Directory
Date: Fri, 02 May 2003 10:24:10 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305021024.10933.powerstation@shaw.ca>
References: <200305011842.48087.powerstation@shaw.ca>
 <Pine.LNX.4.53.0305020715190.22000@reg_kipling>
Reply-To: powerstation@shaw.ca
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <Pine.LNX.4.53.0305020715190.22000@reg_kipling>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ken Moffat <ken@kenmoffat.uklinux.net>
Cc: linux-newbie list <linux-newbie@vger.kernel.org>

On Friday 02 May 2003 00:22, Ken Moffat wrote:

>  The script runs in a subshell. What you can do in this case is

Okay, I understood the subshell part, and figured that's what was resetting 
everything.

> `source your-script'  or just `. your-script'

That's what I was missing!  I had completely forgotten about the "source" 
command.  I also learned something because I didn't know about the "dot" 
trick.

Thanks.

-- 
Bob Swift

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
