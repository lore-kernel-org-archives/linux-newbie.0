From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: Text Reformatting
Date: Mon, 19 May 2003 08:44:13 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EC8FBCD.1030804@bcgreen.com>
References: <20030518041124.07222103AE@pfheiss>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030518041124.07222103AE@pfheiss>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

Peter wrote:
> Hi,
> 
> Some text I download for printing are formatted like:
> 
>       Because of the publicity the Iraqi government has given to the
>                       issue, Iraqis worry about DU.
> 
> which adds more pages for printing.
> 
> How can I with some command, left align the text to read
> 
> Because of the publicity the Iraqi government has given to the
> issue, Iraqis worry about DU.
> 
> yet maintaining the paragraphs.
> 
> When looking at the text with a word processor they are all left aligned and 
> can only be changed manually line by line.
> 
> I came up with the sausage
> 
> cat file.txt | tr -s " "  "\012" > file1.txt | fmt -u -w 105 file1.txt > 
> file2.txt
> 
> This does not maintain the paragraphs, however. Can sed do it and how?
> 
> Thanks & regards

Mostly what you want to do is delete the leading spaces then reformat.
As long as paragraphs are separated by blank lines, the following should
work:

sed 's/^[ \t]+//' file | fmt -u -w105 > file2.txt


----------------------------------

Note that when you do the " tr [options] > somefile | fmt [options] somefile" ,
you're losing any advantage of using a pipe.  The output for the
tr file is redirected into somefile, and fmt is reading explicitly
from there.   The pipe is essentially unused...  Either :

tr [options]  | fmt [options]

or:

tr [options] > somefile ; fmt [options] somefile

The main difference:  The former properly uses pipes
The later simply acknowledges that the pipe really isn't being used.





-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
