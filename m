From: Eric Bambach <eric@cisu.net>
Subject: Re: way to "duplicate" console contents to a file?
Date: Tue, 6 Mar 2007 01:31:12 -0600
Message-ID: <200703060131.13669.eric@cisu.net>
References: <45EB5E09.2040609@tlinx.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <45EB5E09.2040609@tlinx.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linda Walsh <lkml@tlinx.org>
Cc: linux-newbie@vger.kernel.org

On Sunday 04 March 2007 18:02, Linda Walsh wrote:
> Is there a way to have my console messages duplicated and saved in a file?

Have you looked into using the serial console and some sort of secondary 
server to capture its output? It could be easily logged and stored. Serial 
consoles are started very early in the boot process so you would get almost 
all kernel message just after the kernel is invoked. Its a popular kernel 
hacker debugging method.

> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Thanks,

Eric
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
