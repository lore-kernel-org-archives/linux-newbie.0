From: raihan@citech-bd.com
Subject: Re: Text Reformatting
Date: Sun, 18 May 2003 10:23:38 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1223.1053231818@localhost.localdomain>
References: <pfheiss@philonline.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from Peter <pfheiss@philonline.com> 
   of "Sun, 18 May 2003 12:11:19 +0800." <20030518041124.07222103AE@pfheiss> 
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

> cat file.txt | tr -s " "  "\012" > file1.txt | fmt -u -w
> 105 file1.txt > file2.txt
> 
> This does not maintain the paragraphs, however. Can sed do
> it and how?

If there's a blank line between paragraphs, it should work.
Otherwise it becomes more difficult.  Try opening the file
in Vim and running the command

	ggVG

which reformats the whole file similar to fmt.  If you don't
like the result, quit without saving anything:

	:q!

Yawar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
