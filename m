From: Ray Olszewski <ray@comarre.com>
Subject: Re: Command line questions
Date: Sat, 05 Oct 2002 16:49:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021005164515.020a1ec0@celine>
References: <200210051935.48876.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210051935.48876.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Frank Roberts - SOTL <sotl155360@earthlink.net>, Linux Newbie <linux-newbie@vger.kernel.org>

At 07:35 PM 10/5/02 -0400, Frank Roberts - SOTL wrote:
>[...]
>1. Is there an option to the ls command that will allow the scroll to page
>like the old dos command dir -p would? O'Reilly's Linux in a Nutshell does 
>not
>so indicate but I have a hard time believing that this is so; that just does
>not seem logicall.

No, there is not an option to "ls". You do this by piping the output of 
"ls" to "more".

>2.  I have no problem changing to any directory that does not have spaces in
>it but I have no idea of how to account for a space in a directory like in
>the command "cd My Document"?

One trick is to use tab completion. If that doesn't work, you "escape" the 
space character. Something like the following (for your example):

         cd My\ Document

>Thanks
>Frank


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
