From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: two questions
Date: Sat, 10 Aug 2002 08:31:05 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208101231.g7ACV5210038@hartford-hwp.com>
References: <200208101521.54579.adam@luchjenbroers.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208101521.54579.adam@luchjenbroers.com> (message from Adam
	Luchjenbroers on Sat, 10 Aug 2002 15:21:54 +0930)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: adam@luchjenbroers.com
Cc: linux-newbie@vger.kernel.org

Adam,

Back to you again. As I mentioned, I had wiped out my boot diskette,
and needed to figure out how to make another. That I have done. 

You need to use the mkdisk disk command, with the argument consisting
of your kernel number (what returns from uname -a). You will be
prompted to insert the diskette. The image created on it will use most
of its free space, and so you may want to create a second diskette
with various commands such as fsck.

HOWEVER, I have not tested this (except on my wife's Windows machine,
where it seems to boot the kernel, but then passes the boot back to
her machine's BIOS for some reason, with a result of a loop rather
than ending in a command prompt. Also, I've never (unwisely) tried to
run commands from a second floppy, but will definitely try it
now. Hope all this helps, although only a guess at this point.

Haines 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
