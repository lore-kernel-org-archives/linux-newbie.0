From: Peter <pfheiss@philonline.com>
Subject: Re: Line Length Help
Date: Tue, 22 Oct 2002 16:24:19 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210220824.g9M8OJD01805@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>


Peter said:
> Hi,
> If I safe with Lynx a text in html format to a file.txt the lines are
> at the most 60 col long.

> How can I change that to let say 90 col in order to get more text on
> one page for print-out?

> Would sed do the trick, but how?

> 

Since I did not get any answer I arrived with trial and error at the following 
to do the trick, almost:

tr -d '\012' < file.txt | groff -ms | lpr

This finally removes whatever is stubbornly holding the line length to 60 
characters and prints ca. 100 characters on one line. Except it also removes 
the empty lines between paragraphs.

Anyone there who knows how to solve this final obstacle?

 Thanks and regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
